require 'spec_helper'

describe User do
    it { should have_many(:books).through(:book_users) }
    it {should have_many(:cocktail_bars).through(:cocktail_bar_users)}
    it {should have_many(:coffee_shops).through(:coffee_shop_users)}
    it {should have_many(:coffee_shop_users)}
    #now with matchers gem we can test associations

    describe "A user" do #shoulda would be context, Scenario in gherkin
        before do #setup in shoulda, Given in gherkin
            @user = User.create(:email => 'test@test.com')
            #using an instance varibale do that it is visible in other code blocks
        end
       
        
    it "should have many books" do
        @user.books.should_not eq(nil)
    end

    it "should have many cocktail_bars" do
        @user.cocktail_bars.should_not eq(nil)
    end

    it "should have many coffee_shops" do
        @user.coffee_shops.should_not eq(nil)
    end
  end
end

 

