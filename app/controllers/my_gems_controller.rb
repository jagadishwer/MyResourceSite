class MyGemsController < ApplicationController
  def new
    @my_gem =MyGem.new
  end

  def create
    @my_gem = MyGem.new(params[:my_gem])
    if @my_gem.save
      flash[:notice]="Your Gem, Successfully Added"
    else
      flash[:error]="Unable to add Your Gem"
    end
    redirect_to(@my_gem)
  end

  def edit
  end

  def update
  end
  
  def index
    @my_gems= MyGem.all
  end

  def show
    @my_gem=Mygem.find(params[:id])
  end
  def destroy
    MyGem.destroy(params[:id])
    redirect_to my_gems_url
  end
end
