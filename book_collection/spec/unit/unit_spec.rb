require 'rails_helper'

# Unit test for title
RSpec.describe Book, type: :model do
  subject do	
  	described_class.new(title: 'harry potter')
  end

  it 'is valid with valid title' do
  	expect(subject).to be_valid
  end

  it 'is not valid without a title' do
  	subject.title = nil
  	expect(subject).not_to be_valid
  end
end

# Unit test for author 
RSpec.describe Book, type: :model do
  subject do	
  	described_class.new(author: 'john green')
  end

  it 'is valid with valid author' do
  	expect(subject).to be_valid
  end

  it 'is not valid without an author' do
  	subject.author = nil
  	expect(subject).not_to be_valid
  end
end

# Unit test for price
RSpec.describe Book, type: :model do
  subject do	
  	described_class.new(price: '15.00')
  end

  it 'is valid with valid price' do
  	expect(subject).to be_valid
  end

  it 'is not valid without a price' do
  	subject.price = nil
  	expect(subject).not_to be_valid
  end
end

# Unit test for published-date
RSpec.describe Book, type: :model do
  subject do	
  	described_class.new(published_date: '2012/07/04')
  end

  it 'is valid with valid date' do
  	expect(subject).to be_valid
  end

  it 'is not valid without a date' do
  	subject.published_date = nil
  	expect(subject).not_to be_valid
  end
end