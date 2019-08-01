class CreateTagToGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_to_gossips do |t|
    	t.belongs_to :gossip, index: true
    	t.belongs_to :tag, index: true

      t.timestamps
    end
  end
end
