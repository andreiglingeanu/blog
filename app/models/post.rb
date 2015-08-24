class Post < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true, length: { minimum: 10, maximum: 255 }
  validates :text, presence: true, length: { minimum: 200 }
end
