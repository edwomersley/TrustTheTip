require 'spec_helper'

describe UsersController do

  describe 'GET to index' do
      before do 
        3.times {User.make!}
      end

      describe 'as HTML' do 
        before do
          get :index
      end

      it "should respond with a status of 200" do
      expect(response).to be_success
      expect(response.status).to eq(200)
      end
    end
  end
end 