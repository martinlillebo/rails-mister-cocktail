class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @new_dose = Dose.create!(ingredient_object)
  end

  def destroy
  end
end
