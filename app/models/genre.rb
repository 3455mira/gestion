class Genre < ApplicationRecord

    has_many :syojis, :foreign_key => "color_id"
end
