from concurrent.futures.thread import ThreadPoolExecutor
from concurrent.futures.process import ProcessPoolExecutor
import time
def func(value):
    time.sleep(1)
    print(value)
    return value
pool = ThreadPoolExecutor(max_workers=5)
for i in range(10):
    future = pool.submit(func, i)
    print(future)