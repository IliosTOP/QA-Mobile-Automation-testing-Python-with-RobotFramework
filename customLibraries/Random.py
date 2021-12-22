import random
import string
from datetime import datetime
from robot.api.deco import library, keyword


@library
class Random:

    @keyword
    def get_random_string(self, length, prefix=None):
        letters = string.ascii_lowercase
        # print(letters)
        result_str = ''.join(random.choice(letters) for i in range(int(length)))
        if prefix:
            return prefix + "_" + result_str
        return result_str

    @keyword
    def get_current_time_stamp(self):
        now = datetime.now()
        timestamp = datetime.timestamp(now)
        return timestamp
