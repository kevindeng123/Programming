import requests
import bs4
import os

print(os.getcwd())
abspath = os.path.abspath(__file__)
dname = os.path.dirname(abspath)
os.chdir(dname)
print(os.getcwd())

exampleFile = open(r'.\automate_online-materials\example.html')
exampleSoup = bs4.BeautifulSoup(exampleFile, features="html5lib")
spanElem = exampleSoup.select('span')[0]
print(spanElem.get('id'))
