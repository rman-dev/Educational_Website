class ConquestController < ApplicationController
	def income
		@data = Income.all
		@conquest_title = "THE INCOME STATEMENT"
		session[:test_name] = "income"
		@test_name = "income"
		@cur_part = session[:cur_part]
		@cur_ques = session[:cur_ques]
		@cur_select = session[:cur_select]
		@exp_point = session[:exp_point]
		@point1 = session[:point1]
		@point2 = session[:point2]
		@point3 = session[:point3]
		render 'conquest'
	end

	def asset
		@data = Asset.all
		@conquest_title = "ASSETS"
		session[:test_name] = "asset"
		@test_name = "asset"
		@cur_part = session[:cur_part]
		@cur_ques = session[:cur_ques]
		@cur_select = session[:cur_select]
		@exp_point = session[:exp_point]
		@point1 = session[:point1]
		@point2 = session[:point2]
		@point3 = session[:point3]
		render 'conquest'
	end
	
	def liability
		@data = Liability.all
		@conquest_title = "LIABILITY"
		session[:test_name] = "liability"
		@test_name = "liability"
		@cur_part = session[:cur_part]
		@cur_ques = session[:cur_ques]
		@cur_select = session[:cur_select]
		@exp_point = session[:exp_point]
		@point1 = session[:point1]
		@point2 = session[:point2]
		@point3 = session[:point3]
		render 'conquest'
	end
	
	def equity
		@data = Equity.all
		@conquest_title = "OWNERS` EQUITY"
		session[:test_name] = "equity"
		@test_name = "equity"
		@cur_part = session[:cur_part]
		@cur_ques = session[:cur_ques]
		@cur_select = session[:cur_select]
		@exp_point = session[:exp_point]
		@point1 = session[:point1]
		@point2 = session[:point2]
		@point3 = session[:point3]
		render 'conquest'
	end

	def credit
		@data = Credit.all
		@conquest_title = "DEBITS AND CREDITS"
		session[:test_name] = "credit"
		@test_name = "credit"
		@cur_part = session[:cur_part]
		@cur_ques = session[:cur_ques]
		@cur_select = session[:cur_select]
		@exp_point = session[:exp_point]
		@point1 = session[:point1]
		@point2 = session[:point2]
		@point3 = session[:point3]
		render 'conquest'
	end

	def result
		@exp_point = session[:exp_point];
		name = session[:test_name];
		if(name == "income")
			@conquest_title = "THE INCOME STATEMENT"
		elsif (name == "asset")
			@conquest_title = "ASSETS"
		elsif (name == "liability")
			@conquest_title = "LIABILITY"
		elsif (name == "equity")
			@conquest_title = "OWNERS` EQUITY"
		elsif (name == "credit")
			@conquest_title = "DEBITS AND CREDITS"
		end
		render 'result'
	end
	
	def get_data
		name = params[:name]
		data = nil;
		if( name == "income")
			data = Income.all
		elsif (name == "asset")
			data = Asset.all
		elsif (name == "liability")
			data = Liability.all
		elsif (name == "equity")
			data = Equity.all
		elsif (name == "credit")
			data = Credit.all
		end
		render json:data
	end

	def save_state
		session[:cur_part] = params[:cur_part].to_i
	  	session[:cur_ques] = params[:cur_ques].to_i
	  	session[:cur_select] = params[:cur_select]
		session[:exp_point] = params[:exp_point].to_i
		session[:point1] = params[:point1].to_i
		session[:point2] = params[:point2].to_i
		session[:point3] = params[:point3].to_i
		session[:test_name] = params[:test_name]
		render json:"success"
	end
end
