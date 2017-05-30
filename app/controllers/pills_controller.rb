class PillsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @pills = Pill.all
  end
end
