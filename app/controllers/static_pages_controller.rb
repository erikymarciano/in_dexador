class StaticPagesController < ApplicationController
  def feedProjects
    @projects = Project.all
    @user = current_user
  end

  def portfolio
  end
end
