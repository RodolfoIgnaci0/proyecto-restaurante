class Food < ApplicationRecord
  mount_uploader :photo, ImageUploader
end
