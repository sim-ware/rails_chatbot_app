require 'rails_helper'

RSpec.describe Question, type: :model do
  before(:each) do
    @question = Question.create(script: 'test')
  end

  it 'Question Text is properly saved' do
    expect(@question.script).to eq('test')
  end

  it 'Question Text can be changed' do
    params = { script: 'test2'}
    @question.update(params)
    expect(@question.script).to eq('test2')
  end
end
