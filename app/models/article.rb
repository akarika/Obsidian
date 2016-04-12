class Article < ActiveRecord::Base
  validates :title, length: { in: 3..255 }, presence: true, uniqueness: true
  validates :content, presence: true,length: { minimum:20}
end
