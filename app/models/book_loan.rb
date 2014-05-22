class BookInstance < ActiveRecord::Base
has_many :book_loans
belongs_to :book
end