class Article < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :author, presence: true
    validates :body, presence: true
    belongs_to :user
end
