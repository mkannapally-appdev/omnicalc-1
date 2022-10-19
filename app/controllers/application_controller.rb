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

    @num_of_years = params.fetch("user_years").to_f
    @num_of_periods = @num_of_years * 12

    @apr = params.fetch("user_apr").to_f
    @r = @apr / 1200

    @apr = @apr.to_s(:percentage , {:precision => 4})

    @principal_i = params.fetch("user_pay").to_f
    @principal = @principal_i.to_s(:currency)

    @numerator = @principal_i * @r
    #@denominator = (1 + @r)**(1 / @num_of_years)
    @denominator = (1 + @r)**( - @num_of_periods )

    @payment = (@numerator/ (1 - @denominator)).to_s(:currency)
    #@payment = @numerator

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
