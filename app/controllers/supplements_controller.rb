class SupplementsController < ApplicationController
  def index
    @supplements = Supplement.all
  end

  def show
    @supplement = Supplement.find(params[:id])
  end
end
