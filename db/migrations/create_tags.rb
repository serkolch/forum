require_relative "../config"

class CreateTags < ActiveRecord::Migration
  def up
    create_table :tags do |t|
      t.string(:sport)
    end
  end

  def down
    drop_table :tags
  end
end