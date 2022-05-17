class Post < ApplicationRecord
  has_many :comments

  validates_presence_of %i[title heading]

  has_rich_text :content
end
