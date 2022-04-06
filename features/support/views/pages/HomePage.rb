class HomePage
    include Capybara::DSL

    # acessar página de checkbox
    def access_checkboxes
        find("#content > ul > li:nth-child(2) > a").click
    end
end