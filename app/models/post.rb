class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :author

  # sort by descending order by the id
  scope :most_recent, -> { order(id: :desc)}

  # filter by those that are published
  scope :published, -> { where(published: true)}

  # change slug when the title is updated
  def should_generate_new_friendly_id?
    title_changed?
  end

  def display_day_published
    "Published on #{created_at.strftime('%-b %-d, %-Y')}"
  end

  def publish
    update(published: true)
  end

  def unpublish
    update(published: false)
  end

end
