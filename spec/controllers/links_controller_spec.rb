require 'rails_helper'

RSpec.describe LinksController, :type => :controller do
  describe 'GET #home' do
    it 'should return http status success' do
      get :home
      expect(response).to have_http_status(:success)
    end

    it 'should render the home page' do
      get :home
      expect(response).to render_template(:home)
    end

    it 'should assign a new instance of Link to @link' do
      get :home
      expect(assigns(:link)).to be_a_kind_of(Link)
    end
  end
end
