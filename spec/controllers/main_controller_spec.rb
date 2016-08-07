require 'rails_helper'

RSpec.describe MainController, :type => :controller do
  describe 'GET #home' do
    it 'should return http status success' do
      get :home
      expect(response).to have_http_status(:success)
    end

    it 'should render the home page' do
      get :home
      expect(response).to render_template(:home)
    end
  end
end
