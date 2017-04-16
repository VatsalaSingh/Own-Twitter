class CreateFollowMappings < ActiveRecord::Migration
  def change
    create_table :follow_mappings do |t|

      t.timestamps null: false
    end
  end
end
