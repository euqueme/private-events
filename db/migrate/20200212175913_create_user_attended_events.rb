class CreateUserAttendedEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :user_attended_events do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
