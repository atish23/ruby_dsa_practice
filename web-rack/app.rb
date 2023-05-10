class App
  def call(env)
    headers = {
      'Content-Type' => 'text/html'
    }
    
    response = ['<h1>Greetings from Rack!!</h1>']
    
    [200, headers, response]
  end
end

