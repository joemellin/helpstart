class PagesController < ApplicationController
  def home
    @skills = Skill.all
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @skills }
    end
  end

  def about
  end

  def profile
  end

end
