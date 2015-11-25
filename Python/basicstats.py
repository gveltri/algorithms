import math, random
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
        print 'population variance: ' + str(self.Variance())
        print 'standard deviation: ' + str(self.standardDeviation())
        print ''
        print ''
        
    def printSamples(self):
        print 'begin sampling'
        sum_sample = 0
        sum_normal = 0
        for i in range(1,11):
            sample = self.Sample(20)
            print '--------------'
            print 'sample #' + str(i) + ' has size ' + str(i) + '.'
            print 'median: ' + str(sample.Median())
            print 'mode: ' + str(sample.Mode())
            print 'mean: ' + str(sample.Mean())
            print 'sample variance: ' + str(sample.sampleVariance())
            print 'normal variance (bad): ' + str(sample.Variance())
            sum_sample += sample.sampleVariance()
            sum_normal += sample.Variance()
            print '--------------'
            print''
            print 'sample variance average: ' + str(sum_sample/10)
            print '  difference from the pop variance: ' + str(abs(self.Variance()-(sum_sample/10)))
            print 'normal variance average: ' + str(sum_normal/10)
            print ' difference from the pop variance: ' + str(abs(self.Variance()-(sum_normal/10)))

        
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

    def Variance(self):
        return sum([ (x-self.Mean())**2 for x in self.array ])/len(self.array)

    def standardDeviation(self):
        return math.sqrt(self.Variance())

    def Sample(self, size):
        array = self.array
        sample_array = []
        index = 0
        for i in range(0,size):
            index = random.randint(0,len(array)-1)
            sample_array.append(array[index])
            array = array[:index] + array[(index+1):]
        sample_array.sort()
        sample = BasicStats(sample_array)
        return sample

    def sampleVariance(self):
        return sum([ (x-self.Mean())**2 for x in self.array ])/(len(self.array)-1)

obj = BasicStats([x for x in range(0,101)] + [x for x in range(40,150)])
obj.printSamples()
obj.printValues()
