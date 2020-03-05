$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'


def directors_totals(nds)
  result = {
  }

  director_index = 0

  while director_index < nds.length
    director_name = nds[director_index][:name]
    movie_index = 0
    result[director_name] =  0
    
  while movie_index < nds[director_index][:movies].length do
      individual_gross = 0

      result[director_name] += nds[director_index][:movies][movie_index][:worldwide_gross]

      movie_index += 1
    end
    director_index += 1
end
  result
end
