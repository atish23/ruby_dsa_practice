
require_relative './app'

app = Rack::Builder.new do
  use Rack::ShowExceptions
  use Rack::Logger
  
  map "/welcome" do
    use Rack::Lint
    run App.new
  end
end

run app
