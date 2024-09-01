# for a given lists of strings in the following format 
# [(Source) Title](URL)
# Give it in the following format
# [Title | Source](URL)

def changer(string):
    # [(NBC NEWS) WikiLeaks: U.K. trained Bangladeshi 'death squad'](https://www.nbcnews.com/id/wbna40773855)
    # This should become [WikiLeaks: U.K. trained Bangladeshi 'death squad' | NBC NEWS](https://www.nbcnews.com/id/wbna40773855)
    
    return f'[{title} | {source}]({url})'

# Test
string = '[(Source) Title](URL)'
print(changer(string))
