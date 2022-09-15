require 'rails_helper'

# Integration test
RSpec.describe 'Create a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'Harry Potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: 19.99
    select '1997', from: 'book_published_date_1i'
    select '6', from: 'book_published_date_2i'
    select '26', from: 'book_published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Harry Potter')
    expect(page).to have_content('J.K. Rowling')
    expect(page).to have_content('$19.99')
    expect(page).to have_content("1997-06-26")
  end	

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'The Fault In Our Stars'
    fill_in 'Author', with: 'John Green'
    fill_in 'Price', with: 24.99
    select '2012', from: 'book_published_date_1i'
    select '1', from: 'book_published_date_2i'
    select '10', from: 'book_published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('The Fault In Our Stars')
    expect(page).to have_content('John Green')
    expect(page).to have_content('$24.99')
    expect(page).to have_content('2012-01-10')
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'The Hunger Games'
    fill_in 'Author', with: 'Suzanne Collins'
    fill_in 'Price', with: 17.99
    select '2008', from: 'book_published_date_1i'
    select '9', from: 'book_published_date_2i'
    select '14', from: 'book_published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('The Hunger Games')
    expect(page).to have_content('Suzanne Collins')
    expect(page).to have_content('$17.99')
    expect(page).to have_content('2008-09-14')
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'Divergent'
    fill_in 'Author', with: 'Veronica Roth'
    fill_in 'Price', with: 10.80
    select '2011', from: 'book_published_date_1i'
    select '4', from: 'book_published_date_2i'
    select '26', from: 'book_published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Divergent')
    expect(page).to have_content('Veronica Roth')
    expect(page).to have_content('$10.80')
    expect(page).to have_content('2011-04-26')
  end  
end