class Project < ActiveRecord::Base
  has_many :project_users, dependent: :destroy
  has_many :users, through: :project_users
end
