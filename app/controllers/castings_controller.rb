class CastingsController < ApplicationController
  before_action :set_movie, only: [ :new, :create, :edit, :update, :destroy ]
  before_action :set_casting, only: [ :edit, :update, :destroy ]

  def new
    @casting = @movie.castings.new
  end

  def create
    @casting = @movie.castings.new(casting_params)
    if @casting.save
      redirect_to @movie, notice: "Attore aggiunto al casting."
    else
      redirect_to @movie, alert: "Errore nel salvataggio."
    end
  end

  def edit
  end

  def update
    if @casting.update(casting_params)
      redirect_to @movie, notice: "Casting was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @casting = @movie.castings.find(params[:id])
    @casting.destroy
    redirect_to @movie, notice: "Attore rimosso dal casting."
  end

  private

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end

  def set_casting
    @casting = @movie.castings.find(params[:id])
  end

  def casting_params
    params.require(:casting).permit(:actor_id, :character)
  end
end
