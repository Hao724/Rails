class CreateScheduledates < ActiveRecord::Migration[6.1]
  def change
    create_table :scheduledates do |t|
      t.integer :number
      t.string :title
      t.date :start
      t.date :end_date
      t.boolean :check
      t.string :memo
      t.integer :up

      t.timestamps
    end
  end
end
