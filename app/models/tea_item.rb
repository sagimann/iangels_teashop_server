class TeaItem < ApplicationRecord
    self.inheritance_column = 'inheritence_type'
    validates :name, presence: true
    validates :price, numericality: true
end
