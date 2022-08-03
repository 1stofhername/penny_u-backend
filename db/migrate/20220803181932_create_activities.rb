class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :title
      t.string :description
      t.string :type
      t.integer :community_id
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end
  end
end
