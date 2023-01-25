def persistence(n)
  count = 0
  return 0 if n.to_s.length == 1
  while n.to_s.length > 1
    n = n.to_s.chars.map(&:to_i).reduce(:*)
    count += 1
  end
  return count
end
