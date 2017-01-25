class BubblesController < ApplicationController
  def index
    @bubbles = Bubble.all
  end

  def show
  end

  def new
    @bubble = current_user.bubble.build
  end

  def destroy
    @bubble.destroy
    respond_to do |format|
      format.html { redirect_to bubbles_url, notice: 'Bubble burst.' }
      format.json { head :no_content }
    end
  end
end