require 'spec_helper'

describe Film do
    it { should have_many(:users).through(:film_users) }
end