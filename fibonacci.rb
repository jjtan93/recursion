def fibs(num)
  if(num == 1)
    puts "1"
    return
  end
  
  first = 1
  second = 1
  
  print "#{first}, #{second}"
  
  (num - 2).times do
    new_num = first + second
    print ", #{new_num}"
    first = second
    second = new_num
  end
  
  puts ""
end

def fibs_rec(num) #2
  if(num <= 2)
    return 1
  else
    return fibs_rec(num - 1) + fibs_rec(num - 2)
  end
end