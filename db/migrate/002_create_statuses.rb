# -*- coding: utf-8 -*-
class CreateStatuses < ActiveRecord::Migration
  def self.up
    create_table :statuses do |t|
      t.column :status_id, :integer # <id>1071821349</id>

      t.column :status_created_at, :datetime # <created_at>Mon Dec 22 06:34:18 +0000 2008</created_at>
      t.column :user_location, :string # <location>Tokyo, Japan</location>
      t.column :status_text, :string # <text>Reblog感覚でプレゼン</text>
      t.column :user_screen_name, :string # <screen_name>yuiseki</screen_name>      

      t.timestamps
    end
    add_index :statuses, [:status_id], :unique=>true
  end

  def self.down
    drop_table :statuses
  end
end
