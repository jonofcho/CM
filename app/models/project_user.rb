class ProjectUser < ActiveRecord::Base
  belongs_to :project, required: true
  belongs_to :user, required: true

  validates :project, uniqueness: { scope: :user }
end
