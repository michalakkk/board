class AddAttachmentImgUrlToAds < ActiveRecord::Migration
  def self.up
    change_table :ads do |t|
      t.attachment :img_url
    end
  end

  def self.down
    remove_attachment :ads, :img_url
  end
end
