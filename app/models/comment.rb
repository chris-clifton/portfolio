class Comment < ApplicationRecord
  include ActionView::RecordIdentifier

  belongs_to :post

  validates_presence_of %i[name body]

  after_create_commit { broadcast_prepend_to [post, :comments], target: "#{dom_id(post)}_comments" }
end
