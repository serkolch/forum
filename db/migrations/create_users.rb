require_relative "../config"

class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string(:username)      
      t.string(:password_digest)
      t.integer(:age)
      t.string(:gender)
      t.string(:location)
      t.string(:avatar_img_url)
      t.datetime(:created_at)
    end
  end

  def down
    drop_table :users
  end
end

CreateUsers.migrate(:down)