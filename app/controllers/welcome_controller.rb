class WelcomeController < ApplicationController
  def index
  end
  def show
    @assessment = Assessment.find(params[:id])
  end
end
