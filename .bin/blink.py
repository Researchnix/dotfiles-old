#!/usr/bin/python3
import os
import re



#  baseUrl = "https://www.blinkist.com"
#  url = "https://www.blinkist.com/en/content/daily"
#  s2 = "https://www.blinkist.com/en/nc/daily/reader/the-gap-and-the-gain-en"


#  # get the first html that contains the daily link
#  print("downloading today\'s blink information")
#  a = os.system('wget -q --user-agent "Mozilla" ' + url + ' -O /tmp/daily.html')
#  with open('/tmp/daily.html', 'r') as f:
    #  xs = f.read()
#  print("...")




#  # extract the daily url
#  ys = xs.split('\n')
#  zs = list(filter(lambda x : 'daily-book__cta' in x, ys))
#  if len(zs) == 1:
    #  x = zs[0]
#  else:
    #  print('problem!')
#  i = x.index('href')
#  x = x[i:]
#  dailyUrl =  baseUrl + x.split('\"')[1]


#  # extract title of today's blink
#  dailyUrl.split('/')[-1].split('-')[:-1]

dailyUrl = 'https://www.blinkist.com/en/nc/new-reader/peak-mind-en'


b = os.system('wget -q --user-agent "Mozilla" ' + dailyUrl + ' -O /tmp/gucci.html')
with open('/tmp/gucci.html', 'r') as f:
    xs = f.read()

xs = xs.split('\n')


# convert html into markdown
def extractHeader(x):
    return re.split('</*h1>', x)[1]

def extractParagraph(x):
    return re.split('</*p>', x)[1]

def extractListItem(x):
    print(re.split('</*li>', x))
    return re.split('</*li>', x)[1]

out = ""
for x in xs:
    if '<h1>' in x:
        out += '\n### ' + extractHeader(x) + '\n\n'
    elif '<p>' in x:
        out += extractParagraph(x) + '\n'
    elif '<li>' in x:
        out += '- ' + extractListItem(x) + '\n'


with open('out.md', 'w') as f:
    f.write(out)

print('writing successful')


