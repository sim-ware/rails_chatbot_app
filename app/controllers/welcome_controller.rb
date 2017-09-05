class WelcomeController < ApplicationController
  def index
    @questions = Question.all
    @messages = Message.all
  end

end
