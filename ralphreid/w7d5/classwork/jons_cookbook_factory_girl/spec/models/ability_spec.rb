require "spec_helper"
require "cancan/matchers"

describe "User" do
  describe "abilities" do
    subject(:ability){ Ability.new(user) }
    let(:user){ nil }

    context "when is an admin" do
      let!(:user){ FactoryGirl.build :admin }

      it{ should be_able_to(:manage, :all) }
    end

    context "when is an author" do
      let!(:user){ FactoryGirl.build :author }

      it{ should be_able_to(:read, :all) }
      it{ should_not be_able_to(:manage, User) }
      it{ should_not be_able_to(:manage, Ingredient) }

    end

    context "when is a moderator" do
      let!(:user){ FactoryGirl.build :moderator }

      it{ should be_able_to(:read, :all) }

      it{ should be_able_to(:flag, Recipe) }
      it{ should be_able_to(:flagged, Recipe) }
      it{ should_not be_able_to(:manage, User) }
      it{ should_not be_able_to(:destroy, Recipe) }
      it{ should_not be_able_to(:create, Recipe) }
      it{ should_not be_able_to(:update, Recipe) }
      it{ should_not be_able_to(:manage, Quantity) }

    end

    context "when is a chef" do
      let!(:user){ FactoryGirl.build :chef }

      it{ should be_able_to(:manage, Ingredient) }
      it{ should_not be_able_to(:manage, User) }
      it{ should_not be_able_to(:create, Recipe) }
      it{ should_not be_able_to(:update, Recipe) }
      it{ should_not be_able_to(:manage, Quantity) }

    end
  end
end