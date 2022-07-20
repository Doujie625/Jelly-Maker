class Sheet < ApplicationRecord
    belongs_to :user
    has_many :sprites
end
