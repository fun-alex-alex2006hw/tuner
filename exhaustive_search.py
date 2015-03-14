import math
from collections import namedtuple

ExhaustiveSearchResult = namedtuple('ExhaustiveSearchResult',
        ['optimal', 'tests', 'num_iterations'])

def exhaustive_search(objective, points):
    '''Optimizes an objective function using an exhaustive search.

    Arguments:
    objective -- the objective function to optimize.  Receives a Point as input
                 and returns a pair (x, s), where x is a numeric (int or float)
                 value representing the average runtime and s is the standard
                 deviation of the runtimes.
    points -- a generator producing Points at which to evaluate the function.
    '''

    times = {}
    iterations = 0
    for pt in points:
        iterations += 1
        result, stdev = objective(pt)
        if not math.isinf(result):
            times[pt] = (result, stdev)

    best = sorted(times, key=lambda x: times[x])[0]
    return ExhaustiveSearchResult(best, times, iterations)
