# 0x09. Web infrastructure design

-   Foundations - System engineering & DevOps ― Web stack
-   By Sylvain Kalache, co-founder at Holberton School

![](https://i.imgur.com/KQR6JDw.jpg)

## Concepts

_For this project, students are expected to look at these concepts:_

-   [DNS](https://intranet.hbtn.io/concepts/12)
-   [Monitoring](https://intranet.hbtn.io/concepts/13)
-   [Web Server](https://intranet.hbtn.io/concepts/17)
-   [Network basics](https://intranet.hbtn.io/concepts/33)
-   [Load balancer](https://intranet.hbtn.io/concepts/46)
-   [Server](https://intranet.hbtn.io/concepts/67)

## Resources

-   **Network basics**  concept page
-   **Server**  concept page
-   **Web server**  concept page
-   **DNS**  concept page
-   **Load balancer**  concept page
-   **Monitoring**  concept page
-   [What is a database](https://intranet.hbtn.io/rltoken/XLIOfzfuaxPQu39VQ0TLtw "What is a database")
-   [What’s the difference between a web server and an app server?](https://intranet.hbtn.io/rltoken/Nb8B47Y2D8SLqQMOKVoQyQ "What's the difference between a web server and an app server?")
-   [DNS record types](https://intranet.hbtn.io/rltoken/oAxMObOTX3Wx4KH_hCNw3g "DNS record types")
-   [Single point of failure](https://intranet.hbtn.io/rltoken/wYpewVpIp9PSqqL27RPafg "Single point of failure")
-   [How to avoid downtime when deploying new code](https://intranet.hbtn.io/rltoken/Mlvynt0OgLQXrxjrC5Wlnw "How to avoid downtime when deploying new code")
-   [High availability cluster (active-active/active-passive)](https://intranet.hbtn.io/rltoken/POX3jE0S6TChQHSYQraYeQ "High availability cluster (active-active/active-passive)")
-   [What is HTTPS](https://intranet.hbtn.io/rltoken/N4BwU4wYDNW02kdzMiekFw "What is HTTPS")
-   [What is a firewall](https://intranet.hbtn.io/rltoken/ZFTutaKN4wWzmL4fWhQmeg "What is a firewall")

## Learning Objectives

At the end of this project, you are expected to be able to  [explain to anyone](https://intranet.hbtn.io/rltoken/mTOwCk7vlvpScjuBL0zyZA "explain to anyone"),  **without the help of Google**:

### General

-   You must be able to draw a diagram covering the web stack you built with the sysadmin/devops track projects
-   You must be able to explain what each component is doing
-   You must be able to explain system redundancy
-   Know all the mentioned acronyms: LAMP, SPOF, QPS

## Requirements

### General

-   A  `README.md`  file, at the root of the folder of the project, is mandatory
-   For each task, once you are done whiteboarding (on a whiteboard, piece of paper or software or your choice), take a picture/screenshot of your diagram
-   This project will be manually reviewed:
-   As each task is completed, the name of that task will turn green
-   Upload a screenshot, showing that you completed the required levels, to any image hosting service (I personally use  [imgur](https://intranet.hbtn.io/rltoken/QorG0rvw1PzqWBVrqWW6Sg "imgur")  but feel free to use anything you want).
-   For the following tasks, insert the link from of your screenshot into the answer file
-   After pushing your answer file to GitHub, insert the GitHub file link into the URL box
-   You will also have to whiteboard each task in front of a mentor, staff or student - no computer or notes will be allowed during the whiteboarding session
-   Focus on what you are being asked:
-   Cover what the requirements mention, we will explore details in a later project
-   Keep in mind that you will have 30 minutes to perform the exercise, you will get points for what is asked in requirements
-   Similarly in a job interview, you should answer what the interviewer asked for, be careful about being too verbose - always ask the interviewer if going into details is necessary - speaking too much can play against you
-   In this project, again, avoid going in details if not asked