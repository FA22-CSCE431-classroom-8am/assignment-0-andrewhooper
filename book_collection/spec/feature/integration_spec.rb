require 'rails_helper'

# Integration test for title
RSpec.describe 'Create a book - title', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end	
end

# Integration test for author
RSpec.describe 'Create a book - author', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Author', with: 'john green'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('john green')
  end	
end

# Integration test for price
RSpec.describe 'Create a book - price', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Price', with: '15.00'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('15.00')
  end	
end

# Integration test for date
RSpec.describe 'Create a book - published date', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'filler_name'
    fill_in 'Author', with: 'filler_name'
    fill_in 'Price', with: 0
    fill_in 'Published-Date', with: '2012/07/04'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2012-07-04')
  end	
end