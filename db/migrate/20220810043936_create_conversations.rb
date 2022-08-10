class CreateConversations < ActiveRecord::Migration[6.1]
  def change
    create_table :conversations do |t|
      t.integer :message_id
      t.integer :user_id
    end
  end
end
