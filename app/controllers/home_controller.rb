class HomeController < ApplicationController
  


  def state_cities
  	p params.inspect
 	puts "countries"
    @country= Country.find_by_code(params[:country])
   #  puts "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
   #  p params[:state]
   #  p params[:city]
   #  puts "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    @states = @country.states unless @country.nil?
    p @states
   @str=""
    unless @states.empty?
      @str=""
      @str +="'<option value="">Select state</option>"
      @states.each do |s|
        @str += "<option value=#{s.name}>#{s.name}</option>"
      end
      @str +="'"
    end
    render :text=>@str
  end





def state_codes
    p params.inspect
  puts "countries"
    @country= Country.find_by_code(params[:country])
   #  puts "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
   #  p params[:state]
   #  p params[:city]
   #  puts "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    @states = @country.states unless @country.nil?
    p @states
   @str=""
    unless @states.empty?
      @str=""
      @str +="'<option value="">Select City</option>"
      @states.each do |s|
        @str += "<option value=#{s.iso}>#{s.iso}</option>"
      end
      @str +="'"
    end
    render :text=>@str
  end










end
