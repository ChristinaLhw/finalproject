# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  password_digest :string
#  username        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer
#
class User < ApplicationRecord

 validates :user_id, uniqueness: true
 
 has_many :items

 has_secure_password
 
 def own_items
  my_id = self.id

  matching_items = Item.where({ :user_id => my_id })

  return matching_items
end

end
