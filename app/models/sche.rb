class Sche < ApplicationRecord

validate :error_check

def error_check
  # name_sche が空のときにエラーメッセージ
    if name_sche.blank?
      errors[:base] << '予定名は必ず入力してください'
    end

  # schedule_at が過去日のときエラーメッセージ
    if schedule_at < Time.now
      errors[:base] << '過去日は選択できません'
    end

  # notification_time が過去日のときエラーメッセージ
  if notification_sche == true or mail_sche == true
    if notification_time < Time.now
      errors[:base] << '過去日は選択できません'
    end
  end

end

end
