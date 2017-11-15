class User < ApplicationRecord

    validate :error_check
    def error_check

        if name_user.blank?
            errors[:base] << 'ユーザー名は必ず入力してください' 
        else
            if name_user.split(//).size > 20
                errors[:base] << 'ユーザー名は20文字以内で入力してください'
            end
        end
        if mail_user.blank?
            errors[:base] << 'メールアドレスは必ず入力してください'
        end
        if pass_user.blank?
            errors[:base] << 'パスワードは必ず入力してください'
        else
            if pass_user.split(//).length < 8
                errors[:base] << 'パスワードは８文字以上入力してください'
            end
        end
        unless pass_user.blank?
            a="#{pass_user}"=~/^[ぁ-んァ-ン一-龥]/
            if a != nil
                errors[:base] << 'パスワードは英数字のみで入力してください'
            end
        end
        unless mail_user.blank?
            a="#{mail_user}"=~/^[ぁ-んァ-ン一-龥]/
            if a != nil
                errors[:base] << 'メールアドレスは英数字のみで入力してください'
            end
        end
        unless mail_user.blank?
            a="#{mail_user}"=~/^[a-zA-Z0-9]+$/
            if a == nil
                errors[:base] << 'メールアドレスは半角で入力してください'
            end
        end
        unless pass_user.blank?
            a="#{pass_user}"=~/^[a-zA-Z0-9]+$/
            if a == nil
                errors[:base] << 'パスワードは半角で入力してください'
            end
        end


        #unless image_user.blank? 
            #case File.extname(image_user)
            #when ".png",".jpg",".jpeg",".bmp"
             #else
             #errors[:base] << '登録できる拡張子は png, jpg, jpeg,bmp です'
            #end
        #end
    end
    def self.authenticate(mail_user,pass_user)
        usr = find_by(mail_user: mail_user)
        if usr != nil && usr.pass_user == pass_user then
            usr
        else
            return
        end
    end
end

