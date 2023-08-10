class Restaurant < ApplicationRecord
  # validates :column_name, validation
  validates :name, presence: true
end
