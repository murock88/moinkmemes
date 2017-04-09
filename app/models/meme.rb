class Meme < ActiveRecord::Base
    belongs_to :user
    has_many :comments
    

   has_attached_file :image, styles: { large: "800x800>", medium: "300x300>", thumb: "100x100>", }, 
   default_url: "https://s3.amazonaws.com/roressentials/place.png"
   validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
    
    
end
