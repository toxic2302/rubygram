class Post < ApplicationRecord
  has_attached_file :image, styles: { medium: "640x", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates :image, presence: true
end
