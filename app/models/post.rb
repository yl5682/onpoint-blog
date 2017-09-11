class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  # change slug when the title is updated
  def should_generate_new_friendly_id?
    title_changed?
  end
end
