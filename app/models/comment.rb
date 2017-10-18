class Comment < ApplicationRecord
  before_save :check_author
  belongs_to :topic

  def check_author 
    if self.author.blank?
      self.author = 'anon'
    end
  end
end
