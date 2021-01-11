---
date: '2018-11-20T15:53:51-05:00'
---
New shell script to tell me when long-running processes are done — tmwd, short for “tell me when done”

```
brew install terminal-notifier
echo "terminal-notifier -message 'Done"'!'"'" > ~/bin/tmwd
chmod +x ~/bin/tmwd
```

I use it like so:

```
run-tests; tmwd
```
