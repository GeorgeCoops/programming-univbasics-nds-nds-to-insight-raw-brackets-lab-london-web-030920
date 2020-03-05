$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


def directors_totals(nds)
  result = {
  }

  row_index = 0
  inner_index = 0

  while row_index < nds.length
  inner_len = nds[row_index][:movies].length
  while inner_index < inner_len do
      individual_gross = 0
      director_name = nds[row_index][:name]
      num = nds[row_index][:movies][inner_index][:worldwide_gross]
      individual_gross += num

      result[director_name] = num

      inner_index += 1
    end
    row_index += 1
end
  result
end
