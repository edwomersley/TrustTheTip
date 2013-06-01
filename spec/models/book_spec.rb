require 'spec_helper'

describe Book do
    it { should have_many(:users).through(:book_users) }
end


