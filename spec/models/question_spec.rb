require 'rails_helper'

RSpec.describe Question, type: :model do
  before(:each) do
    @question = Question.create(script: 'test')
  end

  it 'Script is properly saved' do
    expect(@question.script).to eq('test')
  end

  it 'Script can be changed' do
    params = { script: 'test2'}
    @question.update(params)
    expect(@question.script).to eq('test2')
  end

  it 'is not valid without a Script entry' do
    @questionblank = Question.create
    expect(@questionblank).not_to be_valid
  end
end
