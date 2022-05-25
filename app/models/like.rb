# frozen_string_literal: true

# Model for a Post's likes
class Like < ApplicationRecord
  belongs_to :post
end
