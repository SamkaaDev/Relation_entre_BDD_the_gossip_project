class Gossip < ApplicationRecord
	has_many :tag_to_gossips
	has_many :tags, through: :tag_to_gossips
	belongs_to :user
end
