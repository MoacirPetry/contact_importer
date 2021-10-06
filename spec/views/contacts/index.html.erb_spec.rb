require 'rails_helper'

RSpec.describe "contacts/index.html.erb", type: :view do
  let(:contacts) { visit contacts_index_path }

  before(:each) do
    user = FactoryBot.create(:user)
    login_as(user, :scope => :user)
  end

  context 'contacts' do
    it '#index' do
      contacts
      expect(controller.request.path_parameters[:action]).to eq('index')
    end
    it 'contacts path' do
      contacts
      expect(page.current_path).to eq '/contacts/index'
    end
  end

end
