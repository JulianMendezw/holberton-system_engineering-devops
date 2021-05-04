#!/usr/bin/python3
""" Using what you did in the task #0, extend your Python script to export
    data in the CSV format. """

import json
import requests

if __name__ == "__main__":
    url_users = "https://jsonplaceholder.typicode.com/users"
    url_tasks = "https://jsonplaceholder.typicode.com/todos?userId="

    all_users = requests.get(url_users).json()

    dict_json = {}

    for user in all_users:

        user_id = user['id']
        user_name = user.get('username')

        all_task = requests.get("{}{}".format(url_tasks, user_id)).json()

        task_row = {}
        task_list = []

        for task in all_task:
            task_status = task.get('completed')
            task_title = task.get('title')
            task_row = {
                "username": user_name,
                "task": task_title,
                "completed": task_status,
            }

            task_list.append(task_row)
        dict_json[user_id] = task_list

    with open("todo_all_employees.json", 'w') as json_file:
        json.dump(dict_json, json_file)
