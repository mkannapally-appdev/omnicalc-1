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

  def blank_payment_form
    render({:template => "calc_templates/payment_form.html.erb"})
  end

  def blank_random_form
    render({:template => "calc_templates/random_form.html.erb"})
  end
end
