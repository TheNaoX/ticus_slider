require "rails_helper"

describe ImagePart do
  before do
    create :image_part, :header
    create :image_part, :body
    create :image_part, :footer
  end

  describe ".headers" do
    it "returns the headers" do
      expect(ImagePart.headers).to eq(ImagePart.where(type: 'header'))
    end
  end

  describe ".bodies" do
    it "returns the bodies" do
      expect(ImagePart.bodies).to eq(ImagePart.where(type: 'body'))
    end
  end

  describe ".footers" do
    it "returns the footers" do
      expect(ImagePart.footers).to eq(ImagePart.where(type: 'footer'))
    end
  end
end
