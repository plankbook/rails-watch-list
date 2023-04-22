class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:id])
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @list = List.find(params[:id])
    # raise
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :comment, :list_id)
  end
end
