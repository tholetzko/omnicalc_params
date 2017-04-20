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
def loan_payment
    @apr = params[:basis_points].to_f / 100
    @years = params[:number_of_years].to_i
    @principal = params[:present_value].to_i

    r = @apr.to_f / 100 / 12
    p = @principal.to_f
    n = @years * 12
    @monthly_payment = ( r / ( 1 - (1 + r) ** (-1 * n))) * p
    @monthly_payment_output = @monthly_payment.round(2)

    # ================================================================================
    # Your code goes above.
    # ================================================================================

    render("loan_payment.html.erb")
  end


end
