class CalculationsController < ApplicationController
  def square
    @input = params[:number].to_i
    @square = @input ** 2

    render("square.html.erb")

  end
end
