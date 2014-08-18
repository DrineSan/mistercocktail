class DosesController < ApplicationController
  def create
    @dose = Dose.new(dose_params)
      @dose.save
      redirect_to dose.cocktail
  end

private
  def dose_params
    params.require(:dose).permit(:cocktails[:id], :ingredients[:id])

end
