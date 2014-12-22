class Post < ActiveRecord::Base

  belongs_to :user

  default_scope { where(published: true) }
  scope :unpublished, -> {where(published: false)}

end
