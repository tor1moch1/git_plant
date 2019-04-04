class FlowersController < ApplicationController
  
  def index
    @diaries = Diary.all
  end

  def new
  end

  def create
    Flower.create(User_nickname: "", day_image: "", message: "")
  end

end
