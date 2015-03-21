require "calc_gpa/version"

module CalcGpa
  def self.initialize()
    @grades = File.read("grades.txt", :encoding => Encoding::UTF_8)
    @grades = @grades.split(",")
    @grades.last.chomp!
  end

  def self.calc
    total = 0.0
    @grades.each do |s|
      case s
      when "a+"
        total = total + 4
      when "a"
        total = total + 3
      when "b"
        total = total + 2
      when "c"
        total = total + 1
      when "f"
      else 
        puts "Wrong Character #{s} Entered"
      end
    end
    
    @gpa = 0.0
    @gpa = total / @grades.count
    puts sprintf("GPA: %.2f", @gpa)
  end
end
