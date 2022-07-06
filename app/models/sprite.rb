class Sprite < ApplicationRecord
    has_many :paths, dependent: :destroy
end
