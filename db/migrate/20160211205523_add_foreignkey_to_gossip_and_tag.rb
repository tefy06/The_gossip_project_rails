class AddForeignkeyToGossipAndTag < ActiveRecord::Migration[6.0]
  def change
  	add_reference :gossip_and_tags, :gossip, foreign_key: true
  	add_reference :gossip_and_tags, :tag, foreign_key: true
  end
end
