# Enter your code here. Read input from STDIN. Print output to STDOUT
"""def division(a, b):
    try:
        result = int(a) // int(b)
        print(result)
    except (ZeroDivisionError, ValueError):
        print("Error Code:")
        return None
"""
for _ in range(int(input())):
    try:
        a, b = map(int, input().split())
        print(a // b)
    except Exception as e:
        print(f"Error Code: {e}")
