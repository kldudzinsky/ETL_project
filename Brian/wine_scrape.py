from splinter import Browser
from bs4 import BeautifulSoup
from webdriver_manager.chrome import ChromeDriverManager

executable_path = {'executable_path' : ChromeDriverManager().install()}
browser = Browser('chrome', **executable_path, headless=False)

url = "https://www.winemag.com/?s=French&drink_type=wine&country=France&page="
url2 = "&search_type=reviews"

with open("wine.csv","a", encoding='utf-8') as f:
    #proceed = True
    #while proceed:
    for x in range(1,20):
        #get the html and soup it up
        browser.visit(f'{url}{str(x)}{url2}')
        html = browser.html
        soup = BeautifulSoup(html, 'html.parser')

        #find our 5 data points
        titles = soup.find_all('h3', class_='title')
        #remove duplicate titles by only getting every other
        titles = titles[::2]
        appellations = soup.find_all('span', class_='appellation')
        ratings = soup.find_all('span', class_='rating')
        prices = soup.find_all('span', class_='price')
        #strip variety information from title
        types = []
        for title in titles:
            s = title.text
            types.append(s[s.find("(")+1:s.find(")")])

        #write a line for each wine found.
        for i in range(len(titles)):
            f.write(f'{titles[i].text}, {types[i]}, {appellations[i].text}, {ratings[i].text[:2]}, {prices[i].text[1:]}\n')
        #go to next page
        #url = input("Q to quit or paste url: ")
        #if url == 'Q':
        #    proceed = False
        
browser.quit()



