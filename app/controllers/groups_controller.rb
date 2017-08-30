class GroupsController < ApplicationController

  def index
    @groups = Group.all

    @group = @groups.find @current_user.group_id



  end
end
