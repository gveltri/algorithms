import math
class BasicStats:

    def __init__(self, array):
        self.array = array
        self.array.sort()
                
    def printValues(self):
        print 'size: ' + str(len(self.array))
        print 'median: ' + str(self.Median())
        print 'mode: ' + str(self.Mode())
        print 'mean: ' + str(self.Mean())
        print 'range: ' + str(self.Range())
        print 'max: ' + str(self.Max())
        print 'min: ' + str(self.Min())

    def Max(self):
        return self.array[len(self.array)-1]

    def Min(self):
        return self.array[0]

    def Range(self):
        return abs(self.Max()-self.Min())
        
    def Median(self):
        array = self.array
        length = len(array)
        median = 0
        if length%2!=0:
            median = array[length/2]
        else:
            median = float(array[length/2] + array[(length/2)-1])/2
        return median

    def Mean(self):
        mean = float(sum(self.array))/len(self.array)
        return mean

    def Mode(self):
        unique_nums = {}
        max_val = 0
        max_key = None
        for i in self.array:
            if i in unique_nums:
                unique_nums[i]+=1
                if unique_nums[i] > max_val:
                    max_val = unique_nums[i]
                    max_key = i
            else:
                unique_nums[i]=1
                if unique_nums[i] > max_val:
                    max_val = unique_nums[i]
                    max_key = i
        return max_key

obj = BasicStats([x**2*math.cos(x) for x in range(10)])
obj.printValues()
