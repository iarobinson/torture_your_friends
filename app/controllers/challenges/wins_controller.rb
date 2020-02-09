class Challenges::WinsController < ApplicationController
  before_action :set_challenge
  before_action :set_win, except: [:index, :new, :create]

  def index
    @wins = Win.all.reverse
  end

  def new
    @win = Win.new
  end

  def edit
  end

  def create
    @win = Win.new(win_params)
    @win.user = current_user
    @win.images.attach(win_params[:images])
    byebug

    respond_to do |format|
      if @win.save
        format.html { redirect_to challenge_wins_path, notice: 'Win was successfully created for this challenge.' }
      else
        format.html { render :new }
        format.json { render json: @challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @win.update(win_params)
        format.html { redirect_to challenge_win_path(@challenge, @win), notice: 'Win was successfully updated for this challenge.' }
        format.json { render :show, status: :ok, location: @win }
      else
        format.html { render :edit }
        format.json { render json: @win.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def set_win
      @win = Win.find(params[:id])
    end

    def set_challenge
      @challenge = Challenge.find(params[:challenge_id])
    end

    def win_params
      params.require(:win).permit(
        :title, :description, :images
      )
    end
end