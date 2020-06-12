class Lesson < ApplicationRecord
  belongs_to :teacher
  belongs_to :language

  validates :start_at,
            presence: true,
            uniqueness: { scope: :teacher },
            format: { with: /\A*(0[7-9]|1[0-9]|2[0-2]):00:00 \+0900\z/ }
end