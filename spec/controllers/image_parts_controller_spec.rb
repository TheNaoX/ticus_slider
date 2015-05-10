require "rails_helper"

describe ImagePartsController do
  render_views

  let!(:header) { create :image_part, :header }
  let!(:body)   { create :image_part, :body   }
  let!(:footer) { create :image_part, :footer }

  describe "#index" do
    it "returns the image parts by segment" do
      get :index, format: :json
      response_json = JSON.parse(response.body)
      expect(response_json).to eq({
        "headers" => [{ "id" => header.id.to_s, "image" => "Foo", "type" => "header" }],
        "bodies"  => [{ "id" => body.id.to_s,   "image" => "Foo", "type" => "body"   }],
        "footers" => [{ "id" => footer.id.to_s, "image" => "Foo", "type" => "footer" }]
      })
    end
  end
end
