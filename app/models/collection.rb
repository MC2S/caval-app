class Collection < ApplicationRecord
  has_attachment :photo
  has_many :shoes
end
