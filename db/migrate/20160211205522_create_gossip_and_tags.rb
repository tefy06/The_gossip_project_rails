class CreateGossipAndTags < ActiveRecord::Migration[6.0]
  def change
    create_table :gossip_and_tags do |t|

      t.timestamps
    end
  end
end
