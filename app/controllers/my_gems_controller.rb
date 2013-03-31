class MyGemsController < ApplicationController
  def new
    @my_gem =MyGem.new
  end

  def create
    @my_gem = MyGem.new(params[:my_gem])
    if @my_gem.save
      flash[:notice]="Your Gem, Successfully Added"
      redirect_to(@my_gem)
    else
      flash[:error]="Unable to add Your Gem"
      redirect_to my_gem_url
    end
    
  end

  def edit
   @my_gem = MyGem.find(params[:id])
  end

  def update
    @my_gem = MyGem.find(params[:id])

    respond_to do |format|
      if @my_gem.update_attributes(params[:my_gem])
        format.html { redirect_to @my_gem, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @my_gem.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def index
    @gems= MyGem.all
  end

  def show
   @my_gem = MyGem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @my_gem }
    end
  end
  def destroy
    MyGem.destroy(params[:id])
    redirect_to my_gems_url
  end






end
