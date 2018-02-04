class Icon < ApplicationRecord
  validate :error_check
  has_many :sches  
  def error_check
  end
end
