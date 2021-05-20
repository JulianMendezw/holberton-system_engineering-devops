# 0x18. Webstack monitoring

-   Foundations - System engineering & DevOps ― Web stack
-   By Sylvain Kalache, co-founder at Holberton School

## Concepts

_For this project, students are expected to look at these concepts:_

-   [Monitoring](https://intranet.hbtn.io/concepts/13)
-   [Server](https://intranet.hbtn.io/concepts/67)


## Background Context

“You cannot fix or improve what you cannot measure” is a famous saying in the Tech industry. In the age of the data-ism, monitoring how our Software systems are doing is an important thing. In this project, we will implement one of many tools to measure what is going on our servers.

Web stack monitoring can be broken down into 2 categories:

-   Application monitoring: getting data about your running software and making sure it is behaving as expected
-   Server monitoring: getting data about your virtual or physical server and making sure they are not overloaded (could be CPU, memory, disk or network overload)


## Resources

**Read or watch**:

-   [What is server monitoring](https://intranet.hbtn.io/rltoken/m8e7smqRz3k4PUBnv0zB7g "What is server monitoring")
-   [What is application monitoring](https://intranet.hbtn.io/rltoken/fGzCCVr7lwNEvarE8u1HRQ "What is application monitoring")
-   [System monitoring by Google](https://intranet.hbtn.io/rltoken/h6WV2iIVUCL-atjFIu6TZA "System monitoring by Google")
-   [Nginx logging and monitoring](https://intranet.hbtn.io/rltoken/ZUIlnid6NphRWIaGZ3MTZQ "Nginx logging and monitoring")

## Learning Objectives

At the end of this project, you are expected to be able to  [explain to anyone](https://intranet.hbtn.io/rltoken/SPQiERiTz9g8iT8tsfxZVQ "explain to anyone"),  **without the help of Google**:

### General

-   Why is monitoring needed
-   What are the 2 main area of monitoring
-   What are access logs for a web server (such as Nginx)
-   What are error logs for a web server (such as Nginx)

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
