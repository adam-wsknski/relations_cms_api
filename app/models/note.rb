class Note < ApplicationRecord
  self.inheritance_column = :type

  belongs_to :topic, polymorphic: true
end
