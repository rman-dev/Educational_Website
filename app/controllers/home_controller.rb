class HomeController < ApplicationController
  def index
  	session[:test_name] = "";
  	session[:cur_part] = 0
  	session[:cur_ques] = 0
  	session[:cur_select] = '0'
  	session[:exp_point] = 0
  	session[:point1] = 0
  	session[:point2] = 0
  	session[:point3] = 0
  end
end
