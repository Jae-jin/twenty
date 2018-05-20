class Post < ApplicationRecord
    has_many :comments
    mount_uploader :image, ImageUploader
    validates :title, presence: true, length: {minimum: 1}
    validates :image, presence: true
end
