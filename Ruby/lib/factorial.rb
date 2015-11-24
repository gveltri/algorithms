def factorial(result)
  if (result == 0)
    return 1
  end
  return factorial(result-1) * result
end

