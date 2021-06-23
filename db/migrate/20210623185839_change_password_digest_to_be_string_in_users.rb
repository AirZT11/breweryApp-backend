class ChangePasswordDigestToBeStringInUsers < ActiveRecord::Migration[6.0]
    def up
      change_column :users, :password_digest, :string
    end
    
    def down
      change_column :users, :password_digest, :text
    end

end
