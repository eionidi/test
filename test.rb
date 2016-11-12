class Test
  attr_reader :points
  attr_accessor :version

  def initialize
    current_path = File.dirname(__FILE__)
    file_name = current_path + "/quest.txt"
    #abort "Невозможно загрузить вопросы!" if !File.exist?(file_name)
    begin
      f = File.new(file_name)
    rescue
      puts "Невозможно загрузить вопросы!"
    end
    @questions = f.readlines
    f.close
    @points = 0
    @current_question = 0
  end

  def next_question
    puts @questions[@current_question]
    user_input = nil
    until (user_input == "да" || user_input == "нет" || user_input == "иногда")
      puts "введите 'да', 'нет' или 'иногда' и нажмите Enter"
      user_input = STDIN.gets.chomp.downcase
    end
    if (user_input == "да")
      @points += 2
    elsif (user_input == "иногда")
      @points += 1
    end
    @current_question += 1

    return @current_question < @questions.size
  end

  def points
    return @points
  end
end
