class Photo < ActiveRecord::Base
  attr_accessible :img
  validates :img, :attachment_presence => true
  has_many :props
  
  after_destroy :destroy_props
  
  # TODO: put production images in S3.
  has_attached_file :img, :styles => { :medium => "300x300>" }
  
  def has_img?
    return ! img_file_name.nil?
  end
  
  private
    def destroy_props
      props.each {|p| p.destroy}
    end
end
