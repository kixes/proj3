
#number 7#
def maxVal(L):
    return reduce(lambda x, y: x if x>y else y, L)

print maxVal([5.2,5.3,5.4,5.5,5.3,6.2,5.1]);

#number 6#
def f(x):
    return abs(float(x));
def to_absreal(L):
    return map(f, L);

print to_absreal([-1,2,3,-4,5]);

#number 8#
def ft(x):
    if(1 < x and x < 2):
        return x;
def range(L):
    return filter((lambda x: 1 < x < 2), L);

print range([1.1,1.2,0.1,2.5,3.1]);
