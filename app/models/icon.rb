class Icon < ApplicationRecord
    validate :error_check

    has_many :sches
end
