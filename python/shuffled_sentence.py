s = 'gdJL3 qZVrDtrdt4 hNbOybAYKc1 IPUpNYOFYdFbP2'

def sortSentence(s):
  sentence = ' '.join(sorted(s.split(' '), key = lambda word: word[-1]))
  return ''.join([i for i in sentence if not i.isdigit()])


print(sortSentence(s))