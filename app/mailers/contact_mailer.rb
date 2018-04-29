class ContactMailer < ApplicationMailer
    
    def contact_mail(task)

      @task = task
      @taskmail = action_user_id
      mail to: task.user.email, subject:"タスク登録完了メール"
        
    end
end
