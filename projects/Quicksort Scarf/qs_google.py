def quicksort_with_steps(arr):
    """Quicksort an array and return a 2D array of steps."""

    def partition(arr, low, high):
        pivot = arr[high]
        i = low - 1

        for j in range(low, high):
            if arr[j] <= pivot:
                i += 1
                arr[i], arr[j] = arr[j], arr[i]
                steps.append(arr.copy())

        arr[i + 1], arr[high] = arr[high], arr[i + 1]
        steps.append(arr.copy())
        return i + 1

    def quicksort(arr, low, high):
        if low < high:
            pi = partition(arr, low, high)
            quicksort(arr, low, pi - 1)
            quicksort(arr, pi + 1, high)

    steps = [arr.copy()]
    quicksort(arr, 0, len(arr) - 1)
    return steps

#arr = [10, 7, 8, 9, 1, 5]
#steps = quicksort_with_steps(arr)

#for step in steps:
    #print(step)
