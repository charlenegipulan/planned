class Entry < ApplicationRecord

    belongs_to :user
    has_many :categories

end