class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.numeric :price, :precision => 11, :scale => 2
      t.date :published_date

      t.timestamps
    end
  end
end

# Used the following link to set the decimal place to 2 digits
# https://millarian.com/rails/precision-and-scale-for-ruby-on-rails-migrations/