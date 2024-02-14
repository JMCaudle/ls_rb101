OPS = [:+, :-, :*, :/, :%, :**]

def prompt(string)
  puts "==> #{string}"
end

prompt("Enter the first number:")
num1 = gets.chomp.to_f

prompt("Enter the second number:")
num2 = gets.chomp.to_f

OPS.each do |op|
  prompt("#{num1} #{op} #{num2} = #{num1.send(op, num2)}")
rescue ZeroDivisionError
  prompt("#{num1} #{op} #{num2} = Undefined, cannot divide by zero.")
end
