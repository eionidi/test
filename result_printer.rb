class ResultPrinter
  class KitQuestions < RuntimeError; end

  def initialize
    current_path = File.dirname(__FILE__)
    file_name = current_path + "/results.txt"

    unless File.exist?(file_name)
      raise NoDataFile.new("Невозможно загрузить результаты!")
    end

    f = File.new(file_name)
    @results = f.readlines
    f.close
  end

  def print_result(test)

    puts "\nВаш результат теста - #{test.points} баллов:"

    if (test.points >= 30)
      puts @results[0]
    elsif (test.points >= 25 && test.points <= 29)
      puts @results[1]
    elsif (test.points >= 19 && test.points <= 24)
      puts @results[2]
    elsif (test.points >= 14 && test.points <= 18)
      puts @results[3]
    elsif (test.points >= 9 && test.points <= 13)
      puts @results[4]
    elsif (test.points >= 4 && test.points <= 8)
      puts @results[5]
    else
      puts @results[6]
    end
  end
end
