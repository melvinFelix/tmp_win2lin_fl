def fact(n):
    facti = []
        for i in range(1,n):
            if n%i == 0:
                facti.append(i)
        total = 0
        for i in facti:
            total = total + i
        if total == n: return True
            return False