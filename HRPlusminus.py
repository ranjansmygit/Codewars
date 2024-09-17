#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr):
    # Write your code here
    total = len(arr)
    
    # Count positive, negative, and zero elements
    positive_count = sum(1 for num in arr if num > 0)
    negative_count = sum(1 for num in arr if num < 0)
    zero_count = sum(1 for num in arr if num == 0)
    
    # Calculate ratios
    positive_ratio = positive_count / total
    negative_ratio = negative_count / total
    zero_ratio = zero_count / total
    
    # Print the results with 6 decimal places
    print(f"{positive_ratio:.6f}")
    print(f"{negative_ratio:.6f}")
    print(f"{zero_ratio:.6f}")
    '''
    #positive = len([num for num in arr if num > 0])
    #negative = len([num for num in arr if num < 0])
    #zero = len([num for num in arr if num == 0])
    
    
    if total == 0:
        print("0.000000", "0.000000", "0.000000")
    else:
        print(f"{positive/total:.6f}", f"{negative/total:.6f}", f"{zero/total:.6f}")
    '''

if __name__ == '__main__':
    n = int(input().strip())

    arr = list(map(int, input().rstrip().split()))

    plusMinus(arr)
