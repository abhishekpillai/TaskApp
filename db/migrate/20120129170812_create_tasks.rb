class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task
      t.integer :status_id
      t.integer :priority_id
      
      t.timestamps
    end
  end
end
