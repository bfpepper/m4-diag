class Link < ApplicationRecord

  validates :url, url: true

  validates :url, :title, presence: true

  belongs_to :user
  
end
