class DemoWorker
  include Sidekiq::Worker 
  sidekiq_options retry: false
  def perform(delay, message)
    sleep delay
    logger.info message
  end
end