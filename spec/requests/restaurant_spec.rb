require 'spec_helper'

describe RestaurantsController do
  context "GET /restaurants/:id" do
    before do
      @restaurant = FactoryGirl.create :restaurant
    end

    context "resource exists" do
      subject {get "/restaurants/#{@restaurant.id}"}
      it { expect(subject).to render_template(:show)}
    end
  end
end
