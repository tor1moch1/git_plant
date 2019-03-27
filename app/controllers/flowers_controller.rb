class FlowersController < ApplicationController
  
  def index
    @diaries = Diary.all
  end

  def new
  end

end
