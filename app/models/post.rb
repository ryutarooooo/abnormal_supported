class Post < ApplicationRecord
  validates :place, presence: true, length: { maximum: 15 }
  validates :title, presence: true, length: { maximum: 15 }
  validates :content, presence: true, length: { maximum: 50 }
  validates :fix_detail, presence: true, length: { maximum: 300 }
end
