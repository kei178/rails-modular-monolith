class CreateLegacyUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :legacy_users do |t|

      t.timestamps
    end
  end
end
