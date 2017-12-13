class Syoji < ApplicationRecord

    belongs_to :category

    validate :error_check
    def error_check
        # title_syo が空のときにエラーメッセージ
        if title_syo.blank?
           errors[:base] << 'タイトルは必ず入力してください'
        end

        # notification_time が過去日か発売日以降のときエラーメッセージ
        if notification_syo == true or mail_syo == true
            if notification_time < Time.now
                errors[:base] << '過去日は選択できません'
            else
                if notification_time > release
                  errors[:base] << '発売日より後は選択できません'
                end
            end
        end

        if have.blank?
            errors[:base] << '所持状態を入力してください'
        end
    end

end
