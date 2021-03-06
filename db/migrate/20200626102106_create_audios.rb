class CreateAudios < ActiveRecord::Migration[5.2]
  def change
    create_table :audios do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :duration
      t.bigint :user_id
      t.bigint :conference_id

      t.timestamps
    end
  end
end
