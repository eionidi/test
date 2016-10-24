require "./" + File.dirname(__FILE__) + "/test.rb"
require "./" + File.dirname(__FILE__) + "/test_result_printer.rb"

version = "Ваш уровень общительности. Version 3\n"
puts version

test = Test.new
test_result_printer = ResultPrinter.new

while test.next_question == true do
end

test_result_printer.print_result(test)
