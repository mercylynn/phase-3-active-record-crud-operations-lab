class Movie < ActiveRecord::Base

    def self.find_all_movies_by_year(year)
    Movie.where(year: year)
  end

    def self.create_with_title(title)
        Movie.create(title: title)
    end

    def self.first_movie
    Movie.first 
  end
  
  def self.last_movie
    Movie.last 
  end  

  def self.movie_count
    Movie.count 
  end
  
  def self.find_movie_with_id(id)
    Movie.find(id)
  end 
  
  def self.find_movie_with_attributes(attr)
    Movie.find_by(attr)
  end
  
  def self.find_movies_after_2002
    self.where("release_date > ?", 2002)
  end
  
  def update_with_attributes(attributes)
    self.update(attributes: attributes)
  end 

  def self.update_all_titles(title)
    self.update_all(title: title)
  end

  def self.delete_by_id(id)
    self.destroy_by(id: id)
  end 

  def self.delete_all_movies
    self.destroy_all
  end


end