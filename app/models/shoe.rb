class Shoe < ApplicationRecord
  has_attachments :photos
  belongs_to :collection
end
