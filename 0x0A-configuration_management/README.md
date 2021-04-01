
# 0x0A Configuration management

-   Foundations - System engineering & DevOps ― CI/CD
-   By Sylvain Kalache, co-founder at Holberton School

## Background Context

[![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2019/6/6a0a8024f2b1c47a9d1e.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUWMNL5ANN%2F20210401%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210401T201638Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=3e3cd8739b7f2bdd36257403ec70b163316f34abb350b76564fbe0f39da8d53c)](https://youtu.be/ogYLFyp68cI)

That was me ^_^‘:  [https://twitter.com/devopsreact/status/836971570136375296](https://intranet.hbtn.io/rltoken/uHU1llO2UZXg8_funEgpJA "https://twitter.com/devopsreact/status/836971570136375296")

## Resources

**Read or watch**:

-   [Intro to Configuration Management](https://intranet.hbtn.io/rltoken/r-NmkYO8bxIKp2qEx2ZjKQ "Intro to Configuration Management")
-   [Puppet resource type: file](https://intranet.hbtn.io/rltoken/fuhnsI9_1_F4GrHwGT3GxA "Puppet resource type: file")  (_check “Resource types” for all manifest types in the left menu_)
-   [Puppet’s Declarative Language: Modeling Instead of Scripting](https://intranet.hbtn.io/rltoken/Fqmb5rnChQgYAypvKoTxAQ "Puppet's Declarative Language: Modeling Instead of Scripting")
-   [Puppet lint](https://intranet.hbtn.io/rltoken/oezu0m_hJ8nEVA6a9o17Tw "Puppet lint")
-   [Puppet emacs mode](https://intranet.hbtn.io/rltoken/N70cVw8mG3707He-OxjP1w "Puppet emacs mode")

## Requirements

### General

-   All your files will be interpreted on Ubuntu 14.04 LTS
-   All your files should end with a new line
-   A  `README.md`  file at the root of the folder of the project is mandatory
-   Your Puppet manifests must pass  `puppet-lint`  version 2.1.1 without any errors
-   Your Puppet manifests must run without error
-   Your Puppet manifests first line must be a comment explaining what the Puppet manifest is about
-   Your Puppet manifests files must end with the extension  `.pp`

## Note on Versioning

Your Ubuntu 14.04 VM should have Puppet 3.4 preinstalled.

You do  **not**  need to attempt to upgrade versions. This project is simply a set of tasks to familiarize you with the basic level syntax which is virtually identical in newer versions of Puppet.

The linked documentation is to Puppet 3.8 because the 3.4 documentation has been archived and is therefore more challenging to navigate. If you would like to upgrade anyway,  [click here](https://intranet.hbtn.io/rltoken/e6imCENcgeeIw6JV5ltSkw "click here")  (this will not affect how your code is checked).  [Puppet 5 Docs](https://intranet.hbtn.io/rltoken/_xOod_Lzz8WKTbhpG5SWLQ "Puppet 5 Docs")

### Install  `puppet-lint`

```
$ apt-get install -y ruby
$ gem install puppet-lint -v 2.1.1
```
