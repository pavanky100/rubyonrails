class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def login
  end

  def mypage
  end

  def getdoc
  end
  def new
@user = User.new
end
end
