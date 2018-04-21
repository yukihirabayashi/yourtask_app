class AddTaskName < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :status
      t.string :image
      t.integer :request_user_id      
      t.integer :action_user_id
      t.text :content
      t.datetime :deadline 
    end
  end

end
