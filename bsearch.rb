require 'rubygems'
require 'pry-debugger'
module ArrayUtil

  # If the array is empty return a result
  # Otherwise call your helper _bsearch method
  def self.bsearch(array, element)
    if array.empty?
      return false
    else
      start_index = array.index(array.first)
      end_index = array.index(array.last)
      self._bsearch(array, element, start_index, end_index)
    end
  end

  # If the start and end indeces are the same, search
    # that element and return
   # Otherwise, find the midpoint
  #   midpoint = start_index + (end_index - start_index) / 2
  #
  # If the element is greater than the one at midpoint, call
  #   _bsearch on the right half of the remaining array
  # Otherwise, call _bsearch on left half of the remaining array
  def self._bsearch(array, element, start_index, end_index)
    if start_index == end_index
      return array[start_index] == element
    else
      midpoint = start_index + (end_index - start_index) / 2
      if element > array[midpoint]
        self._bsearch(array, element, midpoint + 1, end_index)
      else
        self._bsearch(array, element, start_index, midpoint)
      end
    end
  end
end
