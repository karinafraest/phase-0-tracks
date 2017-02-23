#Method that searches for the index of a number in an Array of numbers

def search_array(arr, integer)
  count = 0
  index = 0
  arr.each do |number|
    if number == integer
      index = count
      return index
    else
      index = nil
    end
  count += 1
  end
  return index
end

arr = [42, 89, 23, 1]

p search_array(arr, 1)

p search_array(arr, 24)


#Add the previous two numbers
def fib(num)

  new_array = []

  count = 1
  num1 = 0
  num2 = 1
  sum1 = 0
  new_array = [0,1]

  if num == 0
      new_array = [0]
      #p "hi"
  count += 1
  else

    while new_array.length < num

      if num == 1
        new_array = [0,1]
        #p num2
      else
        sum1 = num1 + num2
        new_array.push(sum1)
        num1 = num2
        num2 = sum1
        #p new_array
      end

    count += 1

    end
  end

  #p new_array[-1] == 218922995834555169026
  #p new_array.length
  #p new_array.index(218922995834555169026)
  return new_array
end

p fib(100)


#SORTING METHODS

#1. BUBBLE SORT
#Declare an array
array = [ 5, 7, 9, 3]

#Method that compares each index value to the one directly to the right and decides which value is higher. If the value on the left is higher than the value on the right, the two numbers will swap places.

#This method will evaluate until it runs through each number of the array with zero swaps.

  def bubble_sort(array)
    length = array.length
    loop do
      swapped = false

      (length-1).times do |count|
        if array[count] > array[count+1]
          array[count], array[count+1] = array[count+1], array[count]
          swapped = true
        end
      end

      break if not swapped
    end

    array
  end


#2. INSERTION SORT
#Stores array in order from lowest value to highest value in a new array
p array
ordered_array = bubble_sort(array)
p ordered_array

#METHOD to find the smallest digit in an array
def smallest list
    smallest=list[0]
    i=0
    list.each do |num|
        if smallest > num
            smallest=num
        end
    end
    return smallest
end

#METHOD to remove smallest number from an array and add it in other
def sorting list
    unsorted=list
    sorted=[]
    i=list.length
    until sorted.length==i #list.length is goint to be changing
        current=smallest unsorted
        sorted.push(current)
        unsorted-=[current]
    end
    return sorted
end
numbers=[4,5,2,1,6]
#CALL METHOD
p sorting numbers