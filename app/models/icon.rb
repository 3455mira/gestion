class Icon < ApplicationRecord
    validate :error_check
    def error_check

        if name_icon.blank?
            errors[:base] << '氏名は必ず入力してください'
        end
        unless image_icon.blank?
            case File.extname(image_icon)
            when ".png",".jpg",".jpeg",".bmp"
             else
             errors[:base] << '登録できる拡張子は png, jpg, jpeg,bmp です'
            end
        end
    end
end
