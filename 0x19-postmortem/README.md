# Postmortem
![](https://miro.medium.com/max/3936/0*xyaPGUFSl37FtuuX.jpeg)

On 9–04–2021 PDT at midnight, our company released a new project where there were issues. We were tasked with finding the cause of the problem by the end of 14–04–2021. This is the postmortem of that bug.

# The Service Interruption

A WordPress website, running on a LAMP stack, was returning a 500 status code to all get requests. The website itself is a simple HTML page, but a problem with MySQL or PHP can still disable the website.

# Timeline

-   9–11–2021, 12:00 am PDT, Project released.
-   9–12–2021, 12:00 pm, Begin working on a project with Madison Burke, with help from Mitali Sengupta and Victor Nguyen. Notice missing error logs.
-   9–12–2021, 12:30 pm, Error logging has been enabled and ‘no such file’ error is seen.
-   9–12–2021, 12:40 pm, typo is manually fixed and requests return 200 status code.
-   9–12–2021, 1:53 pm, Rough draft of Puppet code written.
-   9–12–2021, 5:56 pm PDT, Puppet code finalized.

# The Bug

The first clue came from  /var/log. Apache and MySQL both had error logs, but PHP’s was conspicuously missing. After enabling PHP’s various error configurations in /etc/php5/apache2/php.ini, I restarted the server and used the command  `curl localhost:80`  , and the response stated an error on line 137 of the file /var/www/html/wp-settings.php. Going to the file, the line reads  `require_once( ABSPATH . WPINC . ‘/class-wp-locale.phpp’ );`  , a clear typo.

# The Solution

To fix this server, the file var/www/html/wp-settings.php can be changed directly, but if the issue exists on multiple servers a script will be handy. Here’s a Puppet script that accomplishes the task.

# fixes typo in config file  
exec { ‘replaces line in config file’: command => ‘sed -i “s/.phpp/.php/g” /var/www/html/wp-settings.php’,  
path => ‘/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin’,  
onlyif => ‘test -f /var/www/html/wp-settings.php’  
}

After implementing the solution, a get request returns a normal HTML page with a status code of 200.

# Prevention

This is a very glaring error to find in production, so I assume this would likely be caused by someone manually changing one thing in a config file and accidentally changing something else. It’s also possible that a seemingly unrelated part of the program hosted on the server changes this config file as an unforeseen side effect. I would check other servers for the same bug, and implement more rigorous testing.