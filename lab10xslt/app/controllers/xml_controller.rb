class XmlController < ApplicationController
 before_action :parse_params, only: :input

 def input
  palindromes = find_palindromes(@num)

  data = if palindromes.nil? || /[0-9]+/.match(@num).nil?
	         { message: "Неверный запрос (num = #{@num}), введите число" }
	     else

	      palindromes.map { |elem| { elem: elem, square: elem**2 } }

	        end

  respond_to do |format|
   format.xml { render xml: data.to_xml }
   format.rss { render xml: data.to_xml }
   format.json { render json: { data: data } }
  end
 end

 private

 def parse_params
  @num = params[:num]
 end

 def find_palindromes(number)
  (0..number.to_i).select { |x| (x.to_s.reverse == x.to_s) && ((x**2).to_s.reverse == (x**2).to_s) }
 end
end
