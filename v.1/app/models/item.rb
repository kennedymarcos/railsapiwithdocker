class Item < ApplicationRecord
    
  #has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  #validates_attachment :picture
  #do_not_validate_attachment_file_type :picture

  has_attached_file :picture, styles: { large: "800x600>", medium: "700x400>", little: "600x350#", thumb: "100x100#" }, url: "/system/pets/:id/:style/:hash.:extension", hash_secret: "longSecretString",
    default_url: "/images/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
  validates_attachment :picture
  validates_with AttachmentSizeValidator, attributes: :picture, less_than: 2.megabytes

end
