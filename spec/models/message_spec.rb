require 'rails_helper'

RSpec.describe Message, type: :model do
  before(:each) do
    @message = Message.create(script: 'test')
  end

  it 'Text is properly saved' do
    expect(@message.script).to eq('test')
  end

  it 'Text can be changed' do
    params = { script: 'test2'}
    @message.update(params)
    expect(@message.script).to eq('test2')
  end

  it 'is not valid without a Script entry' do
    @messageblank = Message.create
    expect(@messageblank).not_to be_valid
  end
end
