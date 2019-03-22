class AddUserNicknameToDiaries < ActiveRecord::Migration[5.2]
  def change
    add_column :diaries, :User_nickname, :string
  end
end
