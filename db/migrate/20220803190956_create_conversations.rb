class CreateConversations < ActiveRecord::Migration[6.1]
  def change
    create_table :conversations do |t|
      t.integer :activity_id
      t.integer :message_id
    end
  end
end
