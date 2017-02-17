class Album < ApplicationRecord
  validates :name, presence: true
  validates :

  belongs_to :band
end
