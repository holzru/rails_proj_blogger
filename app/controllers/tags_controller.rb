class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    Tag.destroy_all

    flash.notice = "All Tags Destroyed!"

    redirect_to articles_path
  end

end
