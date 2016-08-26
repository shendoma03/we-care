class GroupsController < ApplicationController

  def new
    @group = Group.new
  end

  def index
    @group = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def create
    #render plain: params[:assessment].inspect

    @group = Group.new(group_param)

    if @group.save
      redirect_to @group
    else
      render 'new'
    end

  end

  private
  def group_param
    params.require(:group).permit(:group_name, :description,:category, :contact,
                                  :location, :img)
  end
end
