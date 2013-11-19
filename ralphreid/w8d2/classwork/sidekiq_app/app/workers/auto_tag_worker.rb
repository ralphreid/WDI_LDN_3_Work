class AutoTagWorker
  include Sidekiq::Worker
  sidekiq_options retry: 3

  def perform(post_id)
    open_calais = OpenCalais::Client.new(:api_key=>'cef3jmthdxx6bhuvznb5hp2d')
    p = Post.find post_id
    text = [p.title, p.content].join(" ")
    response = open_calais.enrich text
    tags = response.tags.map { |t| t[:name] }
    p.tag_list.add tags
    p.save!
  end


end