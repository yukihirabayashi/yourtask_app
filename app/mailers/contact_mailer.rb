class ContactMailer < ApplicationMailer
    
    def contact_mail(task)

      @task = task

       mail to: User.all.find(@task.action_user_id).email, subject:"タスク登録完了メール"

    end
end
