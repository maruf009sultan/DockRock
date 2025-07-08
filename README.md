🌟 DockRock 🚀
Welcome to DockRock! This is your go-to Bash script for effortlessly pulling files from a Docker container with just one click! 🎉 It grabs a Docker image, zips up files from a folder inside, saves them to your computer, and serves them via a local web server. It’s super simple, with prompts you can skip to use defaults—perfect for beginners and pros alike! 😎
🎯 Why Use DockRock?
Struggling to extract files from a Docker container? Tired of typing endless commands? DockRock is here to save the day! 🦸‍♂️ It’s a hassle-free, one-stop tool that:

📦 Grabs files from any Docker image in seconds.
⚡ Automates everything: pull, zip, copy, and serve.
🛠️ Customizable with easy prompts (or skip them for defaults!).
🌈 Fun and fast, making Docker file extraction a breeze!

Whether you're a developer, a hobbyist, or just curious about Docker, DockRock makes the process smooth as butter. Try it, and you’ll wonder how you lived without it! 😍
🛠️ What You Need
Before rocking with DockRock, make sure you have:

🐳 Docker installed and running.
🐍 Python 3 for the web server.
💻 A Bash-compatible terminal (Linux, macOS, or WSL on Windows).

🚀 Get Started

Clone the repo:git clone https://github.com/maruf009sultan/DockRock.git
cd DockRock


Make the script executable:chmod +x dockrock.sh



🎉 How to Use It

Run the script:./dockrock.sh


Answer these simple prompts (or hit Enter for defaults):
Docker image? (default: ubuntu:latest)
Folder in the container? (default: /app)
Zip file name? (default: app-files.zip)


Sit back and watch the magic! ✨ DockRock will:
Pull the Docker image.
Zip the files from your chosen folder.
Save the zip to your computer.
Fire up a web server at http://localhost:8080.


Open your browser, head to http://localhost:8080, and download your zip file! 📥

📺 Example Run
$ ./dockrock.sh
Enter Docker image name [ubuntu:latest]: 
Enter working directory in container [/app]: 
Enter output zip file name [app-files.zip]: 
Pulling Docker image: ubuntu:latest
Started container with ID: 1f0e37d6cc3d
Copying zip file from container...
Starting HTTP server on port 8080...

💡 Tips

Ensure Docker is running before you start.
If the folder you pick doesn’t exist in the container, the script may hiccup. Double-check your folder path!
Stop the web server with Ctrl+C when you’re done.
Want to tweak things? Open dockrock.sh and make it your own! 🛠️

⭐ Support DockRock
Love DockRock? Show it some love! 🌟

Star the repo on GitHub to spread the word! ⭐
Follow me on GitHub at @maruf009sultan for more awesome projects! 🚀

🤝 Contributing
Got a cool idea to make DockRock even better? Share it! Open an issue or submit a pull request on GitHub. Let’s make it rock harder! 🤘
📜 License
DockRock is licensed under the MIT License. See the LICENSE file for details.

Rock on with DockRock! 🎸
