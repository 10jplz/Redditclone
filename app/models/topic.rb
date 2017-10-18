class Topic < ApplicationRecord
  belongs_to :sub
  has_many :comments
end
