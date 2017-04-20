class CalculationsController < ApplicationController

# PART I
# Sqaure
  def square
    @number_to_square = params[:number].to_i
    @square = @number_to_square ** 2
    render("square.html.erb")
  end

# Square root
  def square_root
    @number_to_square_root = params[:number].to_i
    @square_root = Math.sqrt(@number_to_square_root).round(2)
    render("square_root.html.erb")
  end

# Present value
def present_value
  @number_to_square_root = params[:number].to_i
  @square_root = Math.sqrt(@number_to_square_root).round(2)
  render("square_root.html.erb")
end

# MinMax


end
