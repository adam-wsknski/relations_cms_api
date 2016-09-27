class Offer < ApplicationRecord
  belongs_to :projects
  has_and_belongs_to_many :contacts
  has_many :tasks
end
