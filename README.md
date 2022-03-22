# netpirate
----
[![Open Source Love svg2](https://badges.frapsoft.com/os/v2/open-source.svg?v=103)](https://github.com/ellerbrock/open-source-badges/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)


<!-- <img src="NNNNNNNNNNNNN" width="400"> -->


<h2 align="center">Send Internet (IP) over pirate radio using morse code over a FM radio using a raspberry pi</h2>

<h4 align="center">________________________</h4>

---


# Summary
### -  *[Installation](#Installation)*
### -  *[Deveopment](#For-developers)*
### -  *[Contributors](#Contributors)*
### -  *[Links](#Links)*
### -  *[License](#License)*













 
# Installation
### 
```bash
cd ~
git clone https://github.com/wisehackermonkey/netpirate.git
cd netpirate

balena login
balena push pirateship

balena ssh pirateship pirateradio

/bin/sh ./pi_fm_adv --ps RASP-PI
--wait specifies whether PiFmAdv should wait for the the audio pipe or terminate as soon as there is no audio. It's set to 1 by default.
```


# hack to get text from api to file as characters, to morse code to wave audio file
```bash
echo "audio.wav" | entr -c ./pi_fm_adv --ps RASP-PI --wait 1 --audio ./audio.wav
echo "audio.wav" | entr -c cwwav -f 700 -w 20 -o hello_world.wav
```










 -----------------
# Screenshots
- <!-- <img src="NNNNNNNNNNNNN" width="400"> -->














-----------------
# Development
### 
```bash
```












 
---
# Links
### [python-restx/flask-restx: Fork of Flask-RESTPlus: Fully featured framework for fast, easy and documented API development with Flask](https://github.com/python-restx/flask-restx) [Quick start — Flask-RESTX 0.5.2.dev documentation](https://flask-restx.readthedocs.io/en/latest/quickstart.html#a-minimal-api)
### [balena-io-examples/balena-python-hello-world: A simple Hello World server with Python Flask](https://github.com/balena-io-examples/balena-python-hello-world)
### [Kerrick/cwwav: Command line tool to generate morse code sound files from text or stdin](https://github.com/Kerrick/cwwav)
### 
### 












 -----------------
# Contributors

[![](https://contrib.rocks/image?repo=wisehackermonkey/netpirate)](https://github.com/wisehackermonkey/netpirate/graphs/contributors)

##### Made with [contributors-img](https://contrib.rocks).

-----------------


# License

#### MIT © wisehackermonkey
<img src="osi-logo.png" width="100">

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
```bash
by oran collins
github.com/wisehackermonkey
oranbusiness@gmail.com
2022/03/17
```
<!-- 

# Docker
### Build
```bash
cd ~
git clone https://github.com/wisehackermonkey/netpirate.git
cd netpirate
docker build -t wisehackermonkey/netpirate:latest .  
```
### Run
```bash
docker run -it --rm --name wisehackermonkey/netpirate:latest  
```
### Docker-compose
```bash
docker-compose build
docker-compose up 
```
# Publish Docker Image
```bash
docker build -t wisehackermonkey/netpirate:latest .
docker login
docker push wisehackermonkey/netpirate:latest
```
# Deploy on netlify
```
npm install netlify-cli -g
netlify login
netlify deploy
netlify deploy --prod
```
-->