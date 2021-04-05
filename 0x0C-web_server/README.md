
# 0x0C. Web server

-   Foundations - System engineering & DevOps ― Web stack
-   By Sylvain Kalache, co-founder at Holberton School

## Concepts

_For this project, students are expected to look at these concepts:_

-   [DNS](https://intranet.hbtn.io/concepts/12)
-   [Web Server](https://intranet.hbtn.io/concepts/17)
-   [CI/CD](https://intranet.hbtn.io/concepts/43)
-   [Docker](https://intranet.hbtn.io/concepts/65)
-   [Web stack debugging](https://intranet.hbtn.io/concepts/68)
-   [What is a Child Process?](https://intranet.hbtn.io/concepts/110)
-   [DevOps](https://intranet.hbtn.io/concepts/124)
-   [System Administration](https://intranet.hbtn.io/concepts/125)
-   [Site Reliability Engineering](https://intranet.hbtn.io/concepts/126)

## Background Context

In this project, some of the tasks will be graded on 2 aspects:

1.  Is your  `web-01`  server configured according to requirements
2.  Does your answer file contain a Bash script that automatically performs commands to configure an Ubuntu machine to fit requirements (meaning without any human intervention)

For example, if I need to create a file  `/tmp/test`  containing the string  `hello world`  and modify the configuration of Nginx to listen on port  `8080`  instead of  `80`, I can use  `emacs`  on my server to create the file and to modify the Nginx configuration file  `/etc/nginx/sites-enabled/default`.

But my answer file would contain:

```
sylvain@ubuntu cat 88-script_example
#!/usr/bin/env bash
# Configuring a server with specification XYZ
echo hello world > /tmp/test
sed -i 's/80/8080/g' /etc/nginx/sites-enabled/default
sylvain@ubuntu

```

As you can tell, I am not using  `emacs`  to perform the task in my answer file. This exercise is aiming at training you on automating your work. If you can automate tasks that you do manually, you can then automate yourself out of repetitive tasks and focus your energy on something more interesting. For an  [SRE](https://intranet.hbtn.io/rltoken/Hjv9yJQtW6X7VRa2ByMeEg "SRE"), that comes very handy when there are hundreds or thousands of servers to manage, the work cannot be only done manually. Note that the checker will execute your script as the  `root`  user, you do not need to use the  `sudo`  command.

A good Software Engineer is a  [lazy Software Engineer](https://intranet.hbtn.io/rltoken/y1MX-uAX-0a4bgXfH3uweQ "lazy Software Engineer").  

Tips: to test your answer Bash script, feel free to reproduce the checker environment:

-   start an  `ubuntu:16.04`  Docker container
-   run your script on it
-   see how it behaves

Check out the Docker concept page for more info about how to manipulate containers.

## Resources

**Read or watch**:

-   [How the web works](https://intranet.hbtn.io/rltoken/4tRRzyyETAySzU-bgNGLSw "How the web works")
-   [Nginx](https://intranet.hbtn.io/rltoken/H9OfhUnBDdxV-QQnIucMlA "Nginx")
-   [How to Configure Nginx](https://intranet.hbtn.io/rltoken/wePwmjbJDgJZO7YPvffWxQ "How to Configure Nginx")
-   **Child process**  concept page
-   [Root and sub domain](https://intranet.hbtn.io/rltoken/qkpso3mgcpv3tPUhBrZBOA "Root and sub domain")
-   [HTTP requests](https://intranet.hbtn.io/rltoken/C9s3U62JbiOAvn9WCoxKsA "HTTP requests")
-   [HTTP redirection](https://intranet.hbtn.io/rltoken/kI4vRQ6vc45Wfbdo3UD8Lw "HTTP redirection")
-   [Not found HTTP response code](https://intranet.hbtn.io/rltoken/5UvC588x2hZR7dm6eRFPoQ "Not found HTTP response code")
-   [Logs files on Linux](https://intranet.hbtn.io/rltoken/bkqQ72HZVAV65G8nB503Pw "Logs files on Linux")

**For reference:**

-   [RFC 7231 (HTTP/1.1)](https://intranet.hbtn.io/rltoken/gdZet6dJ30MzaeoucXCfRA "RFC 7231 (HTTP/1.1)")
-   [RFC 7540 (HTTP/2)](https://intranet.hbtn.io/rltoken/EWo6KcJSfShUKLPqzeiXqQ "RFC 7540 (HTTP/2)")

**man or help**:

-   `scp`
-   `curl`

## Learning Objectives

At the end of this project, you are expected to be able to  [explain to anyone](https://intranet.hbtn.io/rltoken/PWcmUSJf1Hq6gea-oM3wgQ "explain to anyone"),  **without the help of Google**:

### General

-   What is the main role of a web server
-   What is a child process
-   Why web servers usually have a parent process and child processes
-   What are the main HTTP requests

### DNS

-   What DNS stands for
-   What is DNS main role

### DNS Record Types

-   `A`
-   `CNAME`
-   `TXT`
-   `MX`

## Requirements

### General

-   Allowed editors:  `vi`,  `vim`,  `emacs`
-   All your files will be interpreted on Ubuntu 16.04 LTS
-   All your files should end with a new line
-   A  `README.md`  file, at the root of the folder of the project, is mandatory
-   All your Bash script files must be executable
-   Your Bash script must pass  `Shellcheck`  (version  `0.3.7`) without any error
-   The first line of all your Bash scripts should be exactly  `#!/usr/bin/env bash`
-   The second line of all your Bash scripts should be a comment explaining what is the script doing
-   You can’t use  `systemctl`  for restarting a process
