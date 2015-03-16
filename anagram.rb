require 'time'

def letter_counts (str)
  str.chars.inject(Hash.new(0)) do |h, x|
    h[x] += 1
    h
  end
end

def anagrams? (str1, str2)
  puts "lc1", Time.now
  lc1 = letter_counts(str1)
  puts "lc2", Time.now
  lc2 = letter_counts(str2)
  puts "compare", Time.now
  lc1 == lc2
  puts "done", Time.now
end

def anagrams2?(str1, str2)
  puts "lencomp", Time.now
  return false if str1.length != str2.length

  puts "lc", Time.now
  str1counts = letter_counts(str1)
  puts "other thing", Time.now
  str2.chars.each do |x|
    str1counts[x] -= 1
    return false if str1counts[x] < 0
  end

  puts "done", Time.now
  true
end

def anagrams3?(str1, str2)
  puts "sort1", Time.now
  s1 = str1.chars.sort
  puts "sort2", Time.now
  s2 = str2.chars.sort
  puts "comp", Time.now
  s1 == s2
  puts "done", Time.now
end
