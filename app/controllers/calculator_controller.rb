class CalculatorController < ApplicationController
  before_action :extract_numbers_from_params

  def add
    @answer = @number1 + @number2
  end

  def subtract
    @answer = @number1 - @number2
  end

  def math
    @answer = case params[:operation]
                when 'add'
                  @operator = '+'
                  @number1 + @number2
                when 'subtract'
                  @operator = '-'
                  @number1 - @number2
              end
  end

  private

  def extract_numbers_from_params
    @number1 = params[:number_1].to_i
    @number2 = params[:number_2].to_i
  end
end
