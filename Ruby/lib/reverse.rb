def reverse(arr,i=0,n=arr.length-1)

  return arr if n<=i
  
  num = arr[i]
  arr[i] = arr[n]
  arr[n] = num

  reverse(arr,i+1,n-1)  
  
end

arr = [0,1,2,3,4,5,6,7]

reverse(arr)
