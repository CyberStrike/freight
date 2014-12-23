class Post < ActiveRecord::Base

  belongs_to :user

  # default_scope { where( published: true ) } # Don't do this as it will set all new posts to published true

  scope :published, -> {where(published: true)}
  scope :unpublished, -> {where(published: false)}

end
