# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  name       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_projects_on_name  (name) UNIQUE
#

class Project < ApplicationRecord
  has_many :clients
  validates :name, presence: true, uniqueness: true
end