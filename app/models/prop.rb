class Prop < ActiveRecord::Base
  belongs_to :photo
  attr_accessible :title
  validates_presence_of :title
end