#!/usr/bin/python3
""" Using what you did in the task #0, extend your Python script to export
    data in the CSV format. """

import csv
import json
import requests
from sys import argv

if __name__ == "__main__":
    task_done = 0
    user_id = argv[1]
    url_users = "https://jsonplaceholder.typicode.com/users?id="
    url_tasks = "https://jsonplaceholder.typicode.com/todos?userId="

    resp = requests.get("{}{}".format(url_users, user_id)).json()
    user_name = resp[0].get('username')

    resp = requests.get("{}{}".format(url_tasks, user_id)).json()

    task_list = []
    task_row = {}

    for task in resp:
        task_status = task.get('completed')
        task_title = task.get('title')
        task_row = {"task": task_title,
                    "completed": task_status,
                    "username": user_name}
        task_list.append(task_row)
    dict_json = {user_id: task_list}

    with open(user_id + ".json", 'w') as json_file:
        json.dump(dict_json, json_file)
