class CreatePriorities < ActiveRecord::Migration
  def change
    create_table :priorities do |t|
      t.string :p_type
      t.integer :quad

      t.timestamps
    end
  end
end
