class SupplementsController < ApplicationController
  def index

  end

  def show
    @supplement = Supplement.find(params[:id])
  end
end
