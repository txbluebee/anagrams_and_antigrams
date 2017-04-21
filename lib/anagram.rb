class Array
  define_method(:anagram?) do
    first= self[0].split('').sort.join()
    second= self[1].split('').sort.join()
    first == second
 end
end
