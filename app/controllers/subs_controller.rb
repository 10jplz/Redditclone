class SubsController < ApplicationController
  before_action :set_sub, only: [:show, :update, :edit, :destroy]
  def index
    @subs = Sub.all
  end

  def show
  end

  def new
    @sub = Sub.new
    render partial: "form"
  end

  def edit
    render partial: "form"
  end

  def create
    @sub = Sub.new(sub_params)

    if @sub.save
      redirect_to subs_path
    else
      render :new
    end
  end

  def update
    if @sub.update(sub_params)
      redirect_to @sub
    else
      render :edit
    end
  end

  def destroy 
    @sub.destroy
    redirect_to subs_path
  end

  private 

  def set_sub
    @sub = Sub.find(params[:id])
  end

  def sub_params
    params.require(:sub).permit(:name)
  end



end


