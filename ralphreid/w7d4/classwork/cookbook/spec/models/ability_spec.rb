require "spec_helper"
require "cancan/matchers"

describe "User" do
  describe "abilities" do
    subject(:ability) { Ability.new(user) }

    context "when is an admin" do
      let!(:user) { User.new(role: "admin") }
      it { should be_able_to(:manage, :all) }
    end

    context "when is an author" do
      let!(:user) { User.new(role: "author") }
      it { should_not be_able_to(:manage, :all) }
      it { should be_able_to(:read, :all) }
      it { should be_able_to(:create, Recipe) do
        recipe.user == user
        end
      }
      it { should_not be_able_to(:manage, User) }
    end

    context "when is an moderator" do
      let!(:user) { User.new(role: "moderator") }
      it { should_not be_able_to(:manage, :all) }
      it { should be_able_to(:read, :all) }
    end

    context "when is an chef" do
      let!(:user) { User.new(role: "chef") }
      it { should_not be_able_to(:manage, :all) }
      it { should be_able_to(:read, :all) }
    end

  end
end