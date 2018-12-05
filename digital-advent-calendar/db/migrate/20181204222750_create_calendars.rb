class CreateCalendars < ActiveRecord::Migration[5.2]
  def change
    create_table :calendars do |t|
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
