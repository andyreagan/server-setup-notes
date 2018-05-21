Trying to document how to set up a server for a new website.

The scripts that I had living on the linode are all in the `from-linode` directory.

2015-12-25

Got a new digital ocean set up.
Seems to be necessary to add the SSH key to the account before creating the droplet.
Can then ssh in with ```root@1.2.3.4``` (for the IP given by DO).
The DNS record for namecheap them looks something like this:
```
A Record	@    104.236.231.180
```
With an `*` instead of the `@` that doesn't seem to be helping for the `www.` address.

Then I should be able to do all of the setup from the user account.
Could use ansible but that seems to be just complicating the setup right now.

On the server, install all of the basics:
```
apt-get install mysql-server python3-dev python-dev nginx emacs
```

Get the `get-pip.py` script and then get pip.
Just used the regular python executable.

Hm, problem with the old scripts, they're not like new format that I set up with ansible using the `app` directory.

2015-12-29

8:29AM

Going to put up a placeholder html page now, just via nginx.

10:46AM

There already was one there, just changed it.

