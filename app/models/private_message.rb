class PrivateMessage < ApplicationRecord
	belongs_to :sender, class_name: "User", dependent: :destroy
	belongs_to :recipient, class_name: "User", dependent: :destroy
	has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage", dependent: :destroy
end
