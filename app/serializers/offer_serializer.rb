class OfferSerializer < ActiveModel::Serializer
  enum status: [:active, :accepted, :rejected, :expired]

  validates :name, presence: true

  attributes :id, :name, :price, :status, :valid_until
  has_many :tasks
  has_and_belongs_to_many :contacts
  belongs_to :project
end
