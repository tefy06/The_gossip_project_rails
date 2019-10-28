class Gossip < ApplicationRecord
	belongs_to :user, dependent: :destroy
	has_many :gossip_and_tags, dependent: :destroy
	has_many :tags, through: :gossip_and_tags, dependent: :destroy
end
