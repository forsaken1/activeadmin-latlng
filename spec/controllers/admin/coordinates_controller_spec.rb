require 'rails_helper'

RSpec.describe Admin::CoordinatesController, type: :controller do
  render_views

  let(:page) { Capybara::Node::Simple.new(response.body) }

  describe "GET new" do
    it 'returns http success' do
      get :new
      expect(response).to have_http_status(:success)
    end

    it 'assigns the person' do
      get :new
      expect(assigns(:coordinate)).to be_a_new(Coordinate)
    end

    it "should render the form elements" do
      get :new
      expect(page).to have_field('Lat')
      expect(page).to have_field('Lng')
      expect(page).to have_selector('div#google_map')
    end
  end
end
