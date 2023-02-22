def diagonalDifference(arr)
    left = []
    right = []
    n = arr.length
    (0...n).each do |i|
        left << arr[i][i]
        right << arr[i][-(i+1)]
    end
    (left.sum - right.sum).abs
end
