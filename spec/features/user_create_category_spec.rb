require 'rails_helper'

feature 'User create category' do
  scenario 'successfully' do
    category = Category.new(name:'Dev')

    visit new_category_path

    fill_in 'Nome', with: category.name

    click_on 'Criar Categoria'

    expect(page).to have_css('h1', text: category.name)
  end

  scenario 'should fill in the field' do
    visit new_category_path

    click_on 'Criar Categoria'

    expect(page).to have_content('Preencha o nome da categoria')
  end


end
