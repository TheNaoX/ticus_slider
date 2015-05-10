class ImagePart
  include Mongoid::Document
  include Mongoid::Timestamps

  TYPES = %w(header body footer)

  field :image, type: String
  field :type,  type: String

  scope :headers, -> { where(type: 'header') }
  scope :bodies,  -> { where(type: 'body')   }
  scope :footers, -> { where(type: 'footer') }

  validates :image, :type, presence: true

  mount_uploader :image, ImagesUploader
end
