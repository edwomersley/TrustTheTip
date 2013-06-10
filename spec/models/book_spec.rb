require 'spec_helper'

describe Book do
    # it { should have_many(:users).through(:book_users) }
    before do 
        @book = Book.make!
        @book.users << User.make!
        @book.save!
        @book.reload
    end

    it 'should know who the user is' do
        @book.users.length.should == 1
        AdvisableUser.count.should == 1
    end
end


