Gem::Specification.new do |gem|
  gem.name			  = 'escalion'
  gem.version		  = '0.0.1'
  gem.date			  = '2012-03-17'
  gem.summary		  = "Implementation of Escalion payment providers api"
  gem.description	  = <<-DESC
						  This gem implements some of the methods required to use Escalions service. 
						DESC
  gem.authors		  = ["Balazs Toth"]
  gem.email			  = 'toth.balazs@me.com'
  gem.files			  = `git ls-files`.split("\n")
  gem.require_paths	  = ["lib"]
  gem.homepage		  = 'http://rubygems.org/gems/escalion'
end
