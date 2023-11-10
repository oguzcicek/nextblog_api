Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    #origins '*'
        origins 'localhost:3000', '127.0.0.1:3000', 'localhost:3001', '127.0.0.1:3001',
            /\Ahttp:\/\/192\.168\.0\.\d{1,3}(:\d+)?\z/
    resource '*', headers: :any, methods: [:get, :post, :patch, :put]
  end
end