class Sche < ApplicationRecord

validate :error_check

def error_check
  # name_sche が空のときにエラーメッセージ
    if name_sche.blank?
      errors[:base] << '予定名は必ず入力してください'
    end

  # schedule_at か notification_time が過去日のときエラーメッセージ
    if schedule_at < Time.now or notification_time < Time.now
      errors[:base] << '過去日は選択できません'
    end

  # icon_id が０未満のときにエラーメッセージ
    if icon_id.present? 
      if icon_id < 0
         errors[:base] << 'アイコンは整数'
      end
    end
  
end

end
