class Tag < ApplicationRecord
	has_many :gossip_and_tags, dependent: :destroy
	has_many :gossips, through: :gossip_and_tags, dependent: :destroy
end
