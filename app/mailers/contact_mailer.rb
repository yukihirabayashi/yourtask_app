class ContactMailer < ApplicationMailer
    
    def contact_mail(task)

      @task = task
      mail to: User.all.find(@task.action_user_id).email, subject:"新たなタスクです！"

    end
end
