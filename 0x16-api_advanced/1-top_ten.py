#!/usr/bin/python3
"""
A function that queries the Reddit API and returns the number of subscribers
"""
from requests import get


def top_ten(subreddit):
    """ Return the 10 hot posts listed for a given subreddit """

    headers = {'user-agent': 'my-app/0.0.1'}
    url = 'https://www.reddit.com/r/{}/hot.json'.format(subreddit)

    response = get(url, headers=headers, allow_redirects=False).json()

    if response:
        data = response.get('data')
        childrenList = data.get('children')

        hotPostList = []
        for children in childrenList[:10]:
            childrenObj = children.get('data')
            print(childrenObj.get('title'))

    return 0
