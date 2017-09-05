require 'rails_helper'

RSpec.describe Round, type: :model do
  before(:each) do
    @round = Round.create(number: 1)
  end

  it 'Number is properly saved' do
    expect(@round.number).to eq(1)
  end

  it 'Number can be changed' do
    params = { number: 2}
    @round.update(params)
    expect(@round.number).to eq(2)
  end

  it 'is not valid without a Number entry' do
    @questionblank = Round.create
    expect(@questionblank).not_to be_valid
  end

  it 'is not valid if above 5' do
    @questionblank = Round.create(number: 6)
    expect(@questionblank).not_to be_valid
  end

  it 'is not valid if below 1' do
    @questionblank = Round.create(number: 0)
    expect(@questionblank).not_to be_valid
  end
end
