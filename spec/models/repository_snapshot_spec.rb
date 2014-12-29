require 'rails_helper'

describe RepositorySnapshot, type: :model do
  let(:repository_snapshot) { build(:repository_snapshot) }
  subject { repository_snapshot }

  context 'with FactoryGirl' do
    it { should create_model }
    it { should create_model.for(2).times }
  end

  context 'with validation' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:html_url) }
    it { should validate_presence_of(:stargazers_count) }
    it { should validate_presence_of(:language) }
    it { should validate_presence_of(:create_date) }
  end

  context 'with DB' do
    context 'with valid params' do
      it 'increments record count' do
        expect do
          repository_snapshot.save
        end.to change(RepositorySnapshot, :count).by(1)
      end
    end
    it { should have_not_null_constraint_on(:name) }
    it { should have_not_null_constraint_on(:html_url) }
    it { should have_not_null_constraint_on(:stargazers_count) }
    it { should have_not_null_constraint_on(:language) }
    it { should have_not_null_constraint_on(:create_date) }
  end
end
