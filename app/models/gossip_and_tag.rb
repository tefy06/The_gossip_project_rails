class GossipAndTag < ApplicationRecord
	belongs_to :gossip, dependent: :destroy
	belongs_to :tag, dependent: :destroy 
end
