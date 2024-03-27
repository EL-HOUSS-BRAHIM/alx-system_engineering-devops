#!/usr/bin/python3
# Python script

""" extend your Python script to export data in the JSON format from t#1 """

import json
import requests
import sys

if __name__ == "__main__":

    # id
    user_id = sys.argv[1]

    # url
    url = "https://jsonplaceholder.typicode.com/"

    # Fetch user information
    user = requests.get(url + "users/{}".format(user_id)).json()

    # Extract the username from the user data
    username = user.get("username")

    # Fetch the to-do list
    params = {"userId": user_id}
    todos = requests.get(url + "todos", params=params).json()

    # data export
    data_to_export = {
        user_id: [
            {
                "task": t.get("title"),
                "completed": t.get("completed"),
                "username": username
            }
            for t in todos
        ]
    }

    # json file
    with open("{}.json".format(user_id), "w") as jsonfile:
        json.dump(data_to_export, jsonfile, indent=4)
