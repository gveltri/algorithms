class BasicStats:

    def __init__(self, array):
        self.array = array
        print 'length: ' + str(len(self.array))

    def findMedian(self):
        array = self.array
        array.sort()
        length = len(array)
        median = 0
        if length%2!=0:
            median = array[length/2]
        else:
            median = float(array[length/2] + array[(length/2)-1])/2

        print "median: " + str(median)
        return median

    def findMean(self):
        mean = float(sum(self.array))/len(self.array)
        print "mean: " + str(mean)
        return mean

    def findMode(self):
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
        print "mode: " + str(max_key)
        return max_key
        

obj = BasicStats([8,8,1,7,8,1,7,4])
obj.findMedian()
obj.findMean()
obj.findMode()
