require "./" + File.dirname(__FILE__) + "/test.rb"
require "./" + File.dirname(__FILE__) + "/result_printer.rb"

VERSION = "Ваш уровень общительности. Version 3"

test = Test.new
test.version = VERSION
test_result_printer = ResultPrinter.new

while test.next_question == true do
end

test_result_printer.print_result(test)
