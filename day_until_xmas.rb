require 'date'

def day_until_xmas(today)
  # today = Date.today
  year = today.year
  xmas = Date.new(year, 12, 25)
  # Subtrair a data do natal com a data de hoje
  days_to_xmas = (xmas - today).to_i
  "Faltam #{days_to_xmas} dias para o natal"
end

today = Date.today

puts day_until_xmas(today)
