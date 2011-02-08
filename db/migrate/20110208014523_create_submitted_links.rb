class CreateSubmittedLinks < ActiveRecord::Migration
  def self.up
    create_table :submitted_links do |t|
      t.string :url
      t.string :title
      t.text :description
      t.string :thumbnail_url
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :submitted_links
  end
end
