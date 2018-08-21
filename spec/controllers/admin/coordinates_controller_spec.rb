require 'rails_helper'

RSpec.describe Admin::CoordinatesController, type: :controller do
  render_views

  let(:page) { Capybara::Node::Simple.new(response.body) }

  describe 'GET new' do
    before do
      get :new
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'assigns the person' do
      expect(assigns(:coordinate)).to be_a_new(Coordinate)
    end

    it 'should render the form elements' do
      expect(page).to have_field('Lat')
      expect(page).to have_field('Lng')
      expect(page).to have_selector('div#google_map')
    end

    it 'should set up lang' do
      pending
      expect(page).to have_xpath('.//script')
    end

    it 'should set up api key'

    it 'should set up height' do
      expect(page).to have_xpath('.//div[@style="height: 345px"]')
    end

    it 'should set up default lat' do
      expect(page).to have_text('parseFloat($("#" + googleMapObject.idLat).val()) || 32.32')
    end

    it 'should set up default lng' do
      expect(page).to have_text('parseFloat($("#" + googleMapObject.idLng).val()) || 64.64')
    end

    it 'should set up map zoom' do
      expect(page).to have_text('zoom: 10')
    end
  end
end
