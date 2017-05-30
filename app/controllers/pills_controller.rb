class PillsController < ApplicationController
  def index
    @pills = Pill.all
  end
end
