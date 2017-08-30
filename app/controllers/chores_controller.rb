class ChoresController < ApplicationController

  before_action :check_if_logged_in, :only => [:edit]

  def index
    @chores = Chore.all
  end

  def new
    @chore = Chore.new
  end

  def create
    cloudinary = Cloudinary::Uploader.upload( params['chore']['image'] )
    @chore = Chore.create chore_params
    @chore.image = cloudinary["url"]
    if
      redirect_to chores_path
    else
      redirect_to new_chores_path
    end
  end

  def edit
    @chore = Chore.find params['id']
  end

  def update
    chore = Chore.find params[:id]
    chore.update chore_params
    redirect_to chores_path
  end

  def show
    @chore = Chore.find params['id']

  end

  def pick_chore
    @chores = Chore.all
  end

  def add
    # defining the user selected
    user = User.find params['id']
    # making the chores array into a variable so it can be interacted with
    array = params['chore_id']
    # taking each chore from params and associating it with selected user
    array.each { |i| user.chores << (Chore.find i) }
    # showing chores_path once finished
    redirect_to chores_path
  end

  def get_user
    @user = User.find_by(email: params[:email])
    render :assign

  end

  def destroy
    chore = Chore.find params['id']
    chore.destroy
    redirect_to chores_path
  end

  private
  def chore_params
    params['chore'].permit(:name, :description, :reward, :image)
  end
end
