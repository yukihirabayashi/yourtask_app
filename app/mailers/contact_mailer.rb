class ContactMailer < ApplicationMailer
    
    def contact_mail(task)

      @task = task
      mail to: task.user.email, subject:"タスク登録完了メール"
        
    end
end
