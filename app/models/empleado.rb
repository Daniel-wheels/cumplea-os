class Empleado < ActiveRecord::Base
    
     include Paperclip::Glue
    
    has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
    
end
