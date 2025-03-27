class SupplementsController < ApplicationController
  def index
    @supplements = Supplement.order(name: :asc)
  end

  def show
    @supplement = Supplement.find(params[:id])
  end
end
