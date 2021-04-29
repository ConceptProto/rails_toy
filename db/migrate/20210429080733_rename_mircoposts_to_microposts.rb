class RenameMicropostsToMicroposts < ActiveRecord::Migration[6.1]
  def self.up
    rename_table :microposts, :microposts
  end

  def self.down
    rename_table :microposts, :microposts
  end
end
