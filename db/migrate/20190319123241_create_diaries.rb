class CreateDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries do |t|
      t.text        :day_image
      t.text        :message
      t.timestamps null: true
    end
  end
end
