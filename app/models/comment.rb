class Comment < ActiveRecord::Base
  belongs_to :article
  belongs_to :user
  validates :body, presence: true, length: {minimum: 5, maximum: 300}
  
end
