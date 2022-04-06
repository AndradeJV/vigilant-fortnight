Dado('que eu esteja na página de filmes') do
    @HomePage.access_checkboxes
end

Quando('eu marcar os filmes que eu já assisti') do
    @CheckboxesPage.choice_checkbox(1)
    @CheckboxesPage.choice_checkbox(3)
end

Então('eu devo ver checkboxes marcados') do
    expect(page).to have_css("#checkboxes > input[type=checkbox]:nth-child(1)")
end