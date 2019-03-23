import random

def getAnswer(answerNumber):
    if answerNumber < 5:
        return 'It is certain.'
    else:
        return 'It is not equal 1.'

r = random.randint(1 , 9)
fortune = getAnswer(r)
print(fortune)
