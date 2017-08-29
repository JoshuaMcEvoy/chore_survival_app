class ChoresController < ApplicationController

  before_action :check_if_logged_in, :only => [:edit]

  def index
    @chores = Chore.all
  end

  def new
    @chore = Chore.new
  end

  def create
    @chore = Chore.create chore_params
    @current_user.chores << @chore
    if
      redirect_to chores_index_path
    else
      redirect_to chores_new_path
    end
  end

  def edit
    @chore = Chore.find params[:id]
  end

  def update
    chore = Chore.find_by :id => session[:chore_id] if session[:chore_id].present?
    session[:chore_id] = nil unless @current_chore.present?
    chore = Chore.find params[:id]
    chore.update chore_params
    redirect_to root_path
  end

  def show
  end

  private
  def chore_params
    params.permit(:name, :description, :reward)
  end
end
