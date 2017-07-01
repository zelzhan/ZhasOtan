class Project < ApplicationRecord
  has_attached_file :image
  validates_presence_of :name, :description, :short_desc, :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
