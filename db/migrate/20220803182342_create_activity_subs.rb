class CreateActivitySubs < ActiveRecord::Migration[6.1]
  def change
    create_table :activity_subs do |t|
      t.integer :activity_id
      t.integer :user_id
    end
  end
end
