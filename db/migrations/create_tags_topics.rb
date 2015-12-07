require_relative "../config"

class CreateTagsTopics < ActiveRecord::Migration
  def up
    create_table :tags_topics, id: false do |t|
      t.integer(:tag_id)
      t.integer(:topic_id)
    end
  end

  def down
    drop_table :tags_topics
  end
end

CreateTagsTopics.migrate(:down)