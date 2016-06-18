WTF
===

Sometimes when writing shell scripts you find yourself doing things
like:

```bash
if test "$(wc -l list.txt)" -eq 0; then
  echo 'the file is empty'
fi
```

Of course, you can test if the file is empty or not with:

```bash
test -s list.txt || echo 'the file is empty'
```

But then you can do it the pipe way:

```bash
wc -l list.txt | eq 0
```

And also test for an arbitrary number of lines:

```bash
wc -l list.txt | eq 1337 && echo 'probably not enough'
```

(This example may not be the best one though.)


This repository also contains commands for `gt` (greater-than) and `lt`.
Also a `must_be` which I use to test if an output is what I expect.

Test `/etc/passwd` belongs to 'root'.

```bash
stat --printf="%U" /etc/passwd | must_be 'root'
```

Disclaimer
----------

I don't expect this to work with other shells, so **patches welcome!**
