require_relative "../config"

class CreateComments < ActiveRecord::Migration
  def up
    create_table :comments do |t|
      t.integer(:topic_id)
      t.integer(:user_id)
      t.datetime(:posted_at)
      t.text(:content)
    end
  end

  def down
    drop_table :comments
  end
end

# CreateComments.migrate(:down)