class NikkisController < ApplicationController

  def index
    @nikkis = Nikki.all
    @nikkis = @nikkis.reverse
  end

  def show
    @nikki = Nikki.find(params[:id])
  end

  def new
    @nikki = Nikki.new
  end

  def create
    @nikki = Nikki.new(nikki_params)
    if @nikki.save
      redirect_to @nikki
    else
      render 'new'
    end
  end

  def destroy
    @nikki = Nikki.find(params[:id])
    @nikki.destroy
    redirect_to root_path
  end

  private

  def nikki_params
    params.require(:nikki).permit(:title, :description)
  end

end
