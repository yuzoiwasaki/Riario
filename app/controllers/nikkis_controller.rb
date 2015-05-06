class NikkisController < ApplicationController

  def index
    @nikkis = current_user.nikkis.all
    @nikkis = @nikkis.reverse
  end

  def show
    @nikki = current_user.nikkis.find(params[:id])
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
    @nikki = current_user.nikkis.find(params[:id])
    @nikki.destroy!
    redirect_to root_path, notice: '日記を削除しました'
  end

  def edit
    @nikki = current_user.nikkis.find(params[:id])
  end

  def update
    @nikki = current_user.nikkis.find(params[:id])
    if @nikki.update(nikki_params)
      redirect_to root_path, notice: '日記が更新されました'
    else
      render :edit
    end
  end

  private

  def nikki_params
    params.require(:nikki).permit(:title, :description, :picture, :picture_cache)
  end

end
