class CheckboxesPage
    include Capybara::DSL

    # Escolha de input a ser clicado
    def choice_checkbox(number)
        find("#checkboxes > input[type=checkbox]:nth-child(#{number})").click
    end
end