# def diagonalDifference(arr)
#     left = []
#     right = []
#     n = arr.length
#     (0...n).each do |i|
#         left << arr[i][i]
#         right << arr[i][-(i+1)]
#     end
#     (left.sum - right.sum).abs
# end

# def countingSort(arr)
#     new_arr = (0..arr.max()).map {|i| 0}
#     arr.each {|j| new_arr[j] += 1}
#     new_arr
# end

# def solution(a)
#   patient_hash = Hash.new(0)
#   a.each do |patient|
#     patient_hash[patient] += 1
#   end
#   patient_hash.each do |key, value|
#     # puts key
#     # puts value
#   end
#   patient_hash.values.sort[-1]
# end

#   def solution_2(string)
#   operations = string.split(" ")
#   stack = []
#   operations.each {|op|
#     if op == "POP"

#     elsif op == "DUP"

#     elsif op == "+"
#       first = stack[-2]
#       second = stack[-1]
#       result = first + second
#       stack.pop(2)
#       stack << result
#     elsif op == "-"
#       first = stack[-2]
#       second = stack[-1]
#       result = second - first
#       stack.pop(2)
#       stack << result
#     else
#       stack << op.to_i
#     end
#   }
#     stack[-1]
#   end

# end

def solution_3(a, x)
    # n = a.length
    # if (n == 0) then
    #     return -1
    # end
    # l = 0
    # r = n - 1
    # while (l < r)
    #     m = (l + r) / 2
    #     if (a[l] != x) then
    #         l += 1
    #     else
    #         # binding.irb
    #         return a.index(x)
    #     end
    # end
    # # binding.irb
    # if (a[l] == x) then
    #     return l
    # end
    # return -1
    # if a.include? x
    #     a.index(x)
    # else
    #     -1
    # end
    (a.include? x) ? a.index(x) : -1
end
