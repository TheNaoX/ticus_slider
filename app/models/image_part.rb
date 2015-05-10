class ImagePart
  include Mongoid::Document
  include Mongoid::Timestamps

  field :image, type: String
  field :type,  type: String

  scope :headers, -> { where(type: 'header') }
  scope :bodies,  -> { where(type: 'body')   }
  scope :footers, -> { where(type: 'footer') }

  validates :image, :type, presence: true
end
