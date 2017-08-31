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
    @group = Group.new
    @group.name = params[:name]
    if @group.save
      # This will associate the group to the user that has created it automatically
      group = Group.find @group.id
      group.users << @current_user
      redirect_to groups_path
    else
      render :new
    end
  end

  def join

    g = Group.find params['id']
    g.users << @current_user
    redirect_to groups_path
  end

  def search
    @group = Group.find_by(name: params[:name])

    render :index
  end

  def members
    # raise 'hell'
    @group = Group.find params['id']


  end

  def remove

    @current_user.group_id = nil
    @current_user.save
    redirect_to groups_path
  end

private
def group_params
  params.require(:group).permit(:name)
end

end
