class ResultPrinter

  def initialize
    current_path = File.dirname(__FILE__)
    file_name = current_path + "/results.txt"

    abort "Невозможно загрузить результаты!" if !File.exist?(file_name)

    f = File.new(file_name)
    @results = f.readlines
    f.close
  end

  def print_result(test)

    puts "\nВаш результат теста - #{test.points} баллов:"

    puts @results[0] if (test.points >= 30)
    puts @results[1] if (test.points >= 25 && test.points <= 29)
    puts @results[2] if (test.points >= 19 && test.points <= 24)
    puts @results[3] if (test.points >= 14 && test.points <= 18)
    puts @results[4] if (test.points >= 9 && test.points <= 13)
    puts @results[5] if (test.points >= 4 && test.points <= 8)
    puts @results[6] if (test.points < 4)
  end
end
