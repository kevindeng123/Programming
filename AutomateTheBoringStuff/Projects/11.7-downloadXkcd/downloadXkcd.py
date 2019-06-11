#! python3
# downloadXkcd.py -  Downloads every single XKCD comic.

import requests
import os
import bs4

url = 'http://xkcd.com'
os.makedirs('xkcd', exist_ok=True)
while not url.endswith('#'):
    # Download the page.
    print('Downloading page %s...' % url)
    
    # Find the URL of the comic image.

    # Download the image.

    # Save the image to ./xkcd.

    # Get the Prev button's url.

print('Done.')
