class FlowersController < ApplicationController
  
  def index
    @diaries = Diary.all
  end

end
