class GroupsController < ApplicationController
  before_action :require_user, only: [:index, :show, :new]
  def new
    @group = Group.new
  end

  def index
    @group = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])

    if @group.update(group_param)
      redirect_to @group
    else
      render 'edit'
    end
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

  def destroy
    @group = Group.find(params[:id])
    @group.destroy

    redirect_to groups_path
  end

  private
  def group_param
    params.require(:group).permit(:group_name, :description,:category, :contact,
                                  :location, :img)
  end
end
