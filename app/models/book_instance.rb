class BookInstance < ActiveRecord::Base
  has_many :book_loans
  belongs_to :book
  before_destroy :ensure_no_current_loans
private
  def ensure_no_current_loans
      if book_loans.empty?
      return true
      else
      errors.add(:base, ‘Book on loan or unpaid ﬁnes’)
      return false
    end
  end
end