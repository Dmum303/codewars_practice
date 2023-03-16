class Scrabble
  def initialize(string)
    $string = string.upcase
  end

  def score
    one_pointers = "A, E, I, O, U, L, N, R, S, T".split(",").join.split(" ")
    two_pointers = ["D","G"]
    three = "B, C, M, P".split(",").join.split(" ")
    four = "F, H, V, W, Y".split(",").join.split(" ")
    five = ["K"]
    eight = ["J", "X"]
    ten = ["Q", "Z"]
    counter = 0
    $string.split("").each do |s|
      if one_pointers.include? s
        counter += 1
      elsif two_pointers.include? s
        counter +=2
      elsif three.include? s
        counter +=3
      elsif four.include? s
        counter += 4
      elsif five.include? s
        counter += 5
      elsif eight.include? s
        counter += 8
      elsif ten.include? s
        counter += 10
      end
    end
    counter
  end

end
