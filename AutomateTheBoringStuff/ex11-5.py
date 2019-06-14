import requests
import bs4
import os

# Change current directory
print(os.getcwd())
abspath = os.path.abspath(__file__)
print(abspath)
dname = os.path.dirname(abspath)
os.chdir(dname)
print(os.getcwd())
targetPath = r"C:\Users\jingwei.deng\Documents\xkcd"
print(os.path.join(targetPath, 'xkcd'))

exampleFile = open(r'.\automate_online-materials\example.html')
exampleSoup = bs4.BeautifulSoup(exampleFile, features="html5lib")
spanElem = exampleSoup.select('span')[0]
print(spanElem.get('id'))
