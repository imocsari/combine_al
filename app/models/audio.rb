class Audio < ApplicationRecord
  belongs_to :conference
  belongs_to :user, optional: true

  validate

  before_save do
    self.duration = (end_time - start_time).to_i
  end

  enum user_id: {
    "Morpheus": 1,
    "Neo":  2,
    "Trinity": 3,
  }

end
