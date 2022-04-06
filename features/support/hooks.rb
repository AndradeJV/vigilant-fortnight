Before do
    # Páginas
    @CheckboxesPage = CheckboxesPage.new

    @HomePage = HomePage.new
    # Componentes

    # Métodos globais

    # Configurações do navegador
    visit '/'
    page.current_window.resize_to(1440, 900)
end



After do
    print = page.save_screenshot("logs/images/temp_screnshot.png")
end