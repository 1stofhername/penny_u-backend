class CreateCommunitySubs < ActiveRecord::Migration[6.1]
  def change
    create_table :community_subs do |t|
      t.integer :community_id
      t.integer :user_id
      t.timestamps
    end
  end
end
