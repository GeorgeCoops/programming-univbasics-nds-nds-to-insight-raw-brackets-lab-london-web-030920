$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'


def directors_totals(nds)
  result = {
  }

  director_index = 0
  inner_index = 0

  while director_index < nds.length
  inner_len = nds[director_index][:movies].length
  while inner_index < inner_len do
      individual_gross = 0
      director_name = nds[director_index][:name]
      num = nds[director_index][:movies][inner_index][:worldwide_gross]
binding.pry
      individual_gross += num

      result[director_name] = individual_gross

      inner_index += 1
    end
    director_index += 1
end
  result
end
