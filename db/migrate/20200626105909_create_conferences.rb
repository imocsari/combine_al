class CreateConferences < ActiveRecord::Migration[5.2]
  def change
    create_table :conferences do |t|
      t.datetime :meeting_date
      t.bigint :user_id
      t.bigint :audio_id

      t.timestamps
    end
  end
end
