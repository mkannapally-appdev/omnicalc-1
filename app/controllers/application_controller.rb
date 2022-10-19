class ApplicationController < ActionController::Base

 

  def blank_square_form
    render({:template => "calc_templates/square_form.html.erb"})
  end

  def calculate_square
     #params
    @num = params.fetch("number").to_f
    @square_of_num = @num * @num 

    render({:template => "calc_templates/square_results.html.erb"})
  end

  def blank_square_root_form
    render({:template => "calc_templates/square_root_form.html.erb"})
  end

  def calculate_square_root
    @num = params.fetch("number").to_f
    @square_root_num = Math.sqrt(@num)

    render({:template => "calc_templates/square_root_results.html.erb"})

  end



  def blank_payment_form
    render({:template => "calc_templates/payment_form.html.erb"})
  end

  def payment_results
    @apr = params.fetch("user_apr").to_f
    @r = @apr / 100

    @num_of_years = params.fetch("user_years").to_f
    @principal = params.fetch("user_pay")

    @numerator = @principal * @r
    @payment = 1 - (1+@r)**@num_of_years

    render({:template => "calc_templates/payment_results.html.erb"})

  end




  def blank_random_form
    render({:template => "calc_templates/random_form.html.erb"})
  end

  def random_results
    @upper = params.fetch("user_max").to_f
    @lower = params.fetch("user_min").to_f
    @random_num = rand(@lower..@upper)

    render({:template => "calc_templates/random_results.html.erb"})
  end

end
