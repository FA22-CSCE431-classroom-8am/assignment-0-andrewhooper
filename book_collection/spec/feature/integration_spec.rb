require 'rails_helper'

# Integration test for title
RSpec.describe 'Create a book - title', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'filler_name_author'
    fill_in 'Price', with: 10.00
    select '2000', from: 'book_published_date_1i'
    select '1', from: 'book_published_date_2i'
    select '1', from: 'book_published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end	
end

# Integration test for author
RSpec.describe 'Create a book - author', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'filler_name_title'
    fill_in 'Author', with: 'john green'
    fill_in 'Price', with: 10.00
    select '2000', from: 'book_published_date_1i'
    select '1', from: 'book_published_date_2i'
    select '1', from: 'book_published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('john green')
  end	
end

# Integration test for price
RSpec.describe 'Create a book - price', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'filler_name_title'
    fill_in 'Author', with: 'filler_name_author'
    fill_in 'Price', with: 15.00
    select '2000', from: 'book_published_date_1i'
    select '1', from: 'book_published_date_2i'
    select '1', from: 'book_published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('15.00')
  end	
end

# Integration test for date
RSpec.describe 'Create a book - published date', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'filler_name_title'
    fill_in 'Author', with: 'filler_name_author'
    fill_in 'Price', with: 10.00
    select '2012', from: 'book_published_date_1i'
    select '7', from: 'book_published_date_2i'
    select '4', from: 'book_published_date_3i'
    # inspect the page and try to analyze the select tags and see if you could select the options via the select ids 
    # after inspection, the select value, from: id works 
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2012-07-04')
  end	
end