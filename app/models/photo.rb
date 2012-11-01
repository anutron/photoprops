class Photo < ActiveRecord::Base
  attr_accessible :title
  validates_presence_of :title
  has_many :props
  
  after_destroy :destroy_props
  
  private
    def destroy_props
      props.each {|p| p.destroy}
    end
end