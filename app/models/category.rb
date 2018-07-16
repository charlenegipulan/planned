class Category < ApplicationRecord

    belongs_to :entry
    has_many :entries
end
