class AddResetToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :reset_digest, :string
    add_column :users, :reset_sent_ad, :datetime
  end
end
