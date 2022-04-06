require "capybara"
require "capybara/cucumber"
require "capybara/dsl"
require "rspec"
require "selenium-webdriver"
require "webdrivers"


CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/environments/#{ENV["CONFIG"]}"))


case ENV["BROWSER"]
when "firefox"
    @driver = :selenium
when "fire_headless"
    @driver = :selenium_headless
when "chrome"
    @driver = :selenium_chrome
when "chrome_headless"
    @driver = :selenium_chrome_headless
else
    raise "Navegador incorreto. Ajuste a variável @driver :("
end


Capybara.register_driver :selenium_chrome do |app|
    version = Capybara::Selenium::Driver.load_selenium
    
    browser_options = ::Selenium::WebDriver::Chrome::Options.new.tap do |opts|
      opts.add_argument("--disable-site-isolation-trials")
      opts.add_argument("--no-sandbox")
    end
    Capybara::Selenium::Driver.new(app, **{ :browser => :chrome, options: browser_options })
end

Capybara.configure do |config|
    config.default_driver = @driver
    config.app_host = CONFIG["url"]
    config.default_max_wait_time = 30
end