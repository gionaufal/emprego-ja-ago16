require 'rails_helper'

feature 'User edit company' do
  scenario 'successfully' do
    company = create(:company)

    visit edit_company_path(company)

    fill_in 'Nome', with: 'Google'
    fill_in 'Telefone', with: '44535234'
    fill_in 'Email', with: 'mail@google.com'
    fill_in 'Localização', with: 'RJ'

    click_on 'Atualizar Empresa'

    expect(page).to have_css('h1', text: 'Google')
    expect(page).to have_content '44535234'
    expect(page).to have_content 'mail@google.com'
    expect(page).to have_content 'RJ'
  end
  scenario 'should fill all fields' do
    company = create(:company)

    visit edit_company_path(company)

    fill_in 'Nome', with: ''

    click_on 'Atualizar Empresa'

    expect(page).to have_content 'Preencha todos os campos'
  end

end
