require 'rails_helper'

RSpec.describe Event, type: :model do

  context 'Validation tests' do
    subject { Event.new }
    let(:creator) { User.new(name: 'Audrey') }

    it 'valid with valid attributes' do
      subject.description = 'Any description'
      subject.creator = creator
      expect(subject).to be_valid
    end

    it 'not valid without a description' do
      subject.creator = creator
      expect(subject).to_not be_valid
    end

    it 'not valid without a creator' do
      subject.description = 'Any description'
      expect(subject).to_not be_valid
    end

    it 'not valid without valid attributes' do
      expect(subject).to_not be_valid
    end

   end

end
