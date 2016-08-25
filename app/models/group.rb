class Group < ApplicationRecord
  validates :group_name, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :contact, presence: true
  validates :location, presence: true


end