class Movie

  def initialize connection
    @connection = connection
  end

  # def all
  #   @connection.exec "SELECT * FROM movies" #retun is implicit in ruby
  # end

  # def find id
  #   @movie = @connection.exec("SELECT * FROM movies WHERE id=#{id }").first
  # end

  # def create params  # TIP - called the argument params so that there was nothing to change in the method when we main
  #   @connection.exec("INSERT INTO movies (title, year, rated, poster, director, actors)
  #   VALUES ('#{params[:title]}', '#{params[:year]}', '#{params[:rated]}', '#{params[:poster]}', '#{params[:director]}', '#{params[:actors]}') RETURNING id") [0]["id"]
  # end

  # def search query
  #   @connection.exec "SELECT * FROM movies WHERE title ILIKE '%#{query}%'"
  # end

  # def find id
  #   @connection.exec("SELECT * FROM movies WHERE id=#{id.to_i}").first
  # end

  # def update params
  #   @connection.exec "UPDATE movies SET
  #      title='#{params[:title]}',
  #      year='#{params[:year]}',
  #      rated='#{params[:rated]}', 
  #      poster='#{params[:poster]}',
  #      director='#{params[:director]}', 
  #      actors='#{params[:actors]}' 
  #      WHERE id=#{params [:movie_id]}"
  # end

  # def delete id
  #   @connection.exec "DELETE FROM movies WHERE id= #{id} "
  # end

end