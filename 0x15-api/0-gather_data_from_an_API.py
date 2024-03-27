#!/usr/bin/python3
# This is a Python Script

""" Python script that, using this REST API """

import requests
import sys


if __name__ == "__main__":
    # URL
    url = "https://jsonplaceholder.typicode.com/"

    # Employee information:
    employee_id = sys.argv[1]
    user = requests.get(url + "users/{}".format(employee_id)).json()

    # Fetch TODO list for the employee
    todos = requests.get(url + "todos", params={"userId": employee_id}).json()

    # Filter completed tasks
    completed = [t.get("title") for t in todos if t.get("completed")]

    # Print the information
    print("Employee {} is done with tasks({}/{}):".format(
        user.get("name"), len(completed), len(todos)))

    # Print the tasks completed one by one
    [print("\t {}".format(complete)) for complete in completed]
