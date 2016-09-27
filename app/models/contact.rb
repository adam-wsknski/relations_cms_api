class Contact < ApplicationRecord
  belongs_to :company

  validates :family_name, presence: true
            :given_names, presence: true
end
