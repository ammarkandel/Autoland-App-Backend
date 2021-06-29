class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :date
      t.string :time
      t.belongs_to :user
      t.belongs_to :car

      t.timestamps
    end
  end
end
