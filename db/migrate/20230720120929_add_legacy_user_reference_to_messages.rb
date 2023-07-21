class AddLegacyUserReferenceToMessages < ActiveRecord::Migration[6.1]
  def change
    add_reference :messages, :legacy_user, foreign_key: true, null: false
  end
end
