require 'rails_helper'

Rspec.describe Candidate, :type => model do
  before do
    @candidate = Candidate.new(name: "Bernie Sanders")
  end
  subject { @candidate }

  describe "when name doesn't exist" do
    before { @candidate.name = " " }
    it { should_not be_valid}
  end
end
