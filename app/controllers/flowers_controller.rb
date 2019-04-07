class FlowersController < ApplicationController
  
  def index
    @diaries = Diary.all.order("id DESC").page(params[:page]).per(5)
  end

  def new
  end

  def create
    Diary.create(diary_params)
  end

  private
  def diary_params
    params.permit(:User_nickname, :day_image, :message)
  end

end
