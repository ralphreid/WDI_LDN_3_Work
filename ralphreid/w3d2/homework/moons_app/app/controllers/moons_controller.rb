class MoonsController < ApplicationController

  def index
    @moons = Moon.all
  end

  def new
    @moon = Moon.new
  end

  def create
    moon = Moon.new(params[:moon])
    moon.save
    redirect_to moons_url
  end


end




  # def create
  #   @post = Post.new(params[:post])

  #   respond_to do |format|
  #     if @post.save
  #       format.html { redirect_to @post, notice: 'Post was successfully created.' }
  #       format.json { render json: @post, status: :created, location: @post }
  #     else
  #       format.html { render action: "new" }
  #       format.json { render json: @post.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end