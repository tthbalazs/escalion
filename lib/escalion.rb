require 'escalion/client'

module Escalion
  def self.client(options)
	Client.new(options)
  end
end
