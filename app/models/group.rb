class Group < ApplicationRecord

  validates :name,
    presence: true

  validates :score_range,
    presence: true

end
