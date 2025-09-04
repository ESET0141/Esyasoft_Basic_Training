points = [(1,2),(5,8),(3,4),(6,2)]

for x,y in points:
    if x>y :
        print(f"X-coordinate in greater than Y-coordinate for point ({x},{y})")
    else:
        print(f"Y-coordinate in greater than X-coordinate for point ({x},{y})")