class Juror < ApplicationRecord
  validates :name, presence: true, uniqueness: true,
  validates :panel_number, uniqueness: true,
  validates :age, presence: true, 
  validates :sex, presence: true,
  belongs_to :user
end
