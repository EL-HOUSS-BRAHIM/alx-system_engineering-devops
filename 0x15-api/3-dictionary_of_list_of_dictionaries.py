#!/usr/bin/python3
# Python script

""" extend your Python script to export data in the JSON format from t#1 """
import json
import requests

if __name__ == "__main__":
    # url && Fetch user inforamtion
    url = "https://jsonplaceholder.typicode.com/"
    users = requests.get(url + "users").json()

    # data export
    with open("todo_all_employees.json", "w") as jsonfile:
        json.dump({
            u.get("id"): [{
                "task": t.get("title"),
                "completed": t.get("completed"),
                "username": u.get("username")
            } for t in requests.get(url + "todos",
                                    params={"userId": u.get("id")}).json()]
            for u in users}, jsonfile)
