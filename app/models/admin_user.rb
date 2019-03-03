# == Schema Information
#
# Table name: admin_users
#
#  id                 :integer          not null, primary key
#  email              :string           default(""), not null
#  encrypted_password :string           default(""), not null
#  username           :string           default(""), not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_admin_users_on_email     (email) UNIQUE
#  index_admin_users_on_username  (username) UNIQUE
#

class AdminUser < ApplicationRecord
  validates :email, :username, presence: true, uniqueness: true
  devise :database_authenticatable, :registerable, :validatable
end
