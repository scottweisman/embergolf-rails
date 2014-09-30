class CourseSerializer < ApplicationSerializer
  attributes :id, :name, :description
  has_many :reviews
end
