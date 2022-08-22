class Item < ApplicationRecord
    belongs_to :kitchen

    validates :name, uniqueness: { case_sensitive: false }
end
