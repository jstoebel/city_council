class Person < ApplicationRecord
  validates :political_score,
            inclusion: { in: [0, 100],
                         message: 'must be between 0 and 100' }
end
