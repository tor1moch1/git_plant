class CreateFlowers < ActiveRecord::Migration[5.2]
  def change
    create_table :flowers do |t|
      t.string      :flower_nickname
      t.string      :variety
      t.text        :flower_image
      t.date        :start_date
      t.timestamps null: true
    end
  end
end
