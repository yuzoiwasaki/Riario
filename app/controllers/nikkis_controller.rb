class NikkisController < ApplicationController

  def index
    @nikkis = current_user.nikkis.all
    @nikkis = @nikkis.reverse
  end

  def show
    @nikki = Nikki.find(params[:id])
  end

  def new
    @nikki = current_user.nikkis.build
  end

  def create
    @nikki = current_user.nikkis.build(nikki_params)
    if @nikki.save
      redirect_to root_path, notice: '日記が投稿されました'
    else
      render :new
    end
  end

  def destroy
    @nikki = Nikki.find(params[:id])
    @nikki.destroy
    redirect_to root_path
  end

  private

  def nikki_params
    params.require(:nikki).permit(:title, :description, :picture, :picture_cache)
  end

end
