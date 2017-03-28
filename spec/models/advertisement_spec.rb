require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:ad) { Advertisement.create!(title: "The Awesomesauce you need", body: "Awesomesauce is wonderful. Buy it.", price: 99) }

  describe "attributes" do
    it "has title, body and price" do
      expect(ad).to have_attributes(title: "The Awesomesauce you need", body: "Awesomesauce is wonderful. Buy it.", price: 99)
    end
  end
end
