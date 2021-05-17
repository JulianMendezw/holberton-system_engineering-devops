#!/usr/bin/python3
"""
A function that queries the Reddit API and returns the number of subscribers
"""

from requests import get


def number_of_subscribers(subreddit):
    """ Return the number of suscribers """

    headers = {'user-agent': 'my-app/0.0.1'}
    url = 'https://www.reddit.com/r/{}/about.json'.format(subreddit)

    response = get(url, headers=headers, allow_redirects=False)

    if response.status_code != 200:
        return 0

    response = response.json()

    if response:
        data = response.get('data')

        if data:
            return data.get('subscribers')

    return 0
