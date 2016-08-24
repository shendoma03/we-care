class AssessmentsController < ApplicationController

  def show
    @assessment = Assessment.find(params[:id])
  end

  def edit
    @assessment = Assessment.find(params[:id])
  end

  def new
    @assessment = Assessment.new
  end

  def index
    @assessment = Assessment.all
  end

  def quiz
    @assessment = Assessment.all
  end

  def wew

  end




  def create
    #render plain: params[:assessment].inspect

    @assessment = Assessment.new(assessment_param)


    if @assessment.save
      redirect_to @assessment
    else
      render 'new'
    end

  end

  def update
    @assessment = Assessment.find(params[:id])

    if @assessment.update(assessment_param)
      redirect_to @assessment
    else
      render 'edit'
    end
  end

  def destroy
    @assessment = Assessment.find(params[:id])
    @assessment.destroy

    redirect_to assessments_path
  end

  private
    def assessment_param
      params.require(:assessment).permit(:question, :choice1,:score1, :choice2,:score2,
      :choice3,:score3,:choice4,:score4)
    end
end
