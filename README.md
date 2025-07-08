DockRock
Welcome to DockRock! This is a super simple, one-click Bash script that makes it easy to pull a Docker image, zip files from a folder inside it, save the zip to your computer, and share it via a local web server. It’s designed to be user-friendly, with prompts you can skip to use default settings.
Why Use DockRock?
Ever needed to grab files from inside a Docker container but got stuck with complex commands or manual steps? DockRock is your solution! It’s a hassle-free way to extract files from any Docker image in just a few clicks. Whether you're a developer, a hobbyist, or just experimenting with Docker, DockRock saves you time and effort by automating the process. No need to dig through container internals—just run the script, answer a few questions (or skip them!), and get your files instantly. It’s like a magic wand for Docker file extraction!
What It Does

Grabs a Docker image (default: ubuntu:latest).
Goes to a folder in the container (default: /app).
Zips up all the files in that folder.
Copies the zip file to your computer.
Starts a web server so you can download the zip from your browser.

What You Need

Docker up and running.
Python 3 installed (for the web server).
A Bash-compatible terminal (works on Linux, macOS, or WSL on Windows).

Installation

Clone the repo:git clone https://github.com/maruf009sultan/DockRock.git
cd DockRock


Make the script executable:chmod +x dockrock.sh



How to Use It

Run the script:./dockrock.sh


Answer the prompts (or press Enter to use defaults):
Docker image? (default: ubuntu:latest)
Folder in the container? (default: /app)
Name for the zip file? (default: app-files.zip)


Wait for the magic! The script will:
Pull the Docker image.
Zip the files from the chosen folder.
Save the zip to your computer.
Start a web server on http://localhost:8080.


Open your browser, go to http://localhost:8080, and download your zip file!

Example
$ ./dockrock.sh
Enter Docker image name [ubuntu:latest]: 
Enter working directory in container [/app]: 
Enter output zip file name [app-files.zip]: 
Pulling Docker image: ubuntu:latest
Started container with ID: 1f0e37d6cc3d
Copying zip file from container...
Starting HTTP server on port 8080...

Tips

Make sure Docker is running before you start.
If the folder you choose doesn’t exist in the container, the script might not work as expected.
Stop the web server by pressing Ctrl+C when you’re done.
Want to change something? Feel free to tweak dockrock.sh!

Support DockRock
If you love DockRock, give it a ⭐ star on GitHub to show your support! Want to stay updated on new features or other cool projects? Follow me on GitHub at @maruf009sultan!
Contributing
Got ideas to make DockRock even better? Open an issue or submit a pull request on GitHub!
License
This project is licensed under the MIT License. Check out the LICENSE file for details.
