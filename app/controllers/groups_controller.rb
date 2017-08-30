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
      # This will associate the group to the user that has created it automatically
      group = Group.find @group.id
      group.users << @current_user
      redirect_to groups_path
    else
      render :new
    end
  end

  def members
    # g = Group.find params['id']
    # members_ids = g.users.ids
    # members_ids.each do { |i| user = User.find i }

  end

  def remove
    @current_user.group_id = nil
  end

private
def group_params
  params.require(:group).permit(:name)
end

end
