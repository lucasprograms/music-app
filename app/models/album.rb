class Album < ApplicationRecord
  validates :year, :band_id, presence: true
  validates :title, presence: true, uniqueness: { scope: :band_id }
  validates :studio, presence: true

  belongs_to :band
end
