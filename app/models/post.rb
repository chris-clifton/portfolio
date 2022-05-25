class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates_presence_of %i[title heading]

  has_rich_text :content

  def liked_by?(ip_address)
    likes.where(ip_address: ip_address).present?
  end
end
