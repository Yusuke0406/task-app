class Category < ApplicationRecord
  belongs_to :user
  has_many :tasks

  validates :cat_name, presence:true, length: { maximum:7 }
end
