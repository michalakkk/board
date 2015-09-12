class Ad < ActiveRecord::Base
	validates :title, presence: true
	validates :description, length: {minimum: 10}, allow_blank: false
	
	belongs_to :category

	has_attached_file :img_url, styles: { medium: "300x300>", thumb: "90x90#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :img_url, content_type: /\Aimage\/.*\Z/

 	def self.search(query)
    where("title like ?", "%#{query}%") 
  end

end
