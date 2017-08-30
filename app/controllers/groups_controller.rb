class GroupsController < ApplicationController

  def index
    @groups = Group.all
    unless @current_user.group_id.nil?
      @group = @groups.find @current_user.group_id
    end
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new group_params
    if @group.save
      session[:group_id] = @group.id
      redirect_to groups_path
    else
      render :new
    end
  end

private
def group_params
  params.require(:group).permit(:name)
end

end
