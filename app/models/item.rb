# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  name       :string
#  photo_url  :string
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Item < ApplicationRecord

 validates :name, presence: true
 validates :user_id, presence: true

 belongs_to :user

 def poster
  poster_id = self.user_id

  matching_users = User.where({ :id => poster_id })

  the_user = matching_users.at(0)

  return the_user
end
 end
