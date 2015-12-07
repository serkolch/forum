require_relative "../config"

class CreateTopics < ActiveRecord::Migration
  def up
    create_table :topics do |t|
      t.text(:name)
      t.integer(:user_id)
      t.datetime(:posted_at)
      t.string(:content)
      t.integer(:likes)
    end
  end

  def down
    drop_table :topics
  end
end

CreateTopics.migrate(:down)