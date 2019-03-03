# == Schema Information
#
# Table name: clients
#
#  id         :integer          not null, primary key
#  name       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  project_id :integer
#
# Indexes
#
#  index_clients_on_name        (name) UNIQUE
#  index_clients_on_project_id  (project_id)
#

class Client < ApplicationRecord
  belongs_to :project
  validates :name, presence: true, uniqueness: true
end
