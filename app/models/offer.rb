class Offer < ApplicationRecord
  belongs_to :project
  has_and_belongs_to_many :contacts
  has_many :tasks
end
