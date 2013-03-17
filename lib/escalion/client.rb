require 'net/http'

module Escalion
  class Client
	CREATE_ORDER_URL = "/create_order.php"
	CREATE_SESSION_URL = "/create_session.php"

	def initialize(options = {}) 
	  @base_url = options.fetch(:base_url) { fail NoBaseURLError }
	  @username = options.fetch(:username) { fail NoUsernameError }
	  @password = options.fetch(:password) { fail NoPasswordError }
	  @site = options.fetch(:site) { fail NoSiteError }
	end

	def create_order
	  uri = URI.join(@base_url, CREATE_ORDER_URL)
	end

	def create_session 
	  uri = URI.join(@base_url, CREATE_SESSION_URL)

	  form_data = {
		'username' => @username,
		'password' => @password,
		'site' => @site
	  }

	  response, data = Net::HTTP.post_form(uri, form_data)

	  case response
	  when Net::HTTPSuccess, Net::HTTPOK

		puts response.read_body
		case response.read_body
		when /OK:(.*)/
		  
		when /Error: (.*)/ 
		  raise $1 
		end
	  else
		fail RequestError
	  end
	end
  end
end
