# ResumeBuilder

**ResumeBuilder** is a system designed to efficiently create and manage resumes, leveraging AI integration and a modular architecture based on Quarkus and AWS Lambda. This project serves as a portfolio piece, demonstrating clean code, comprehensive testing, and modern DevOps practices.

## Project Overview

- **Core Software**: Built in Java with Quarkus, deployed on AWS Lambda.
- **Documentation**: Detailed architecture and usage guides written in Markdown.
- **Scripts**: Automation tools for setup, testing, and deployment.

## Getting Started

1. Clone the repository:
	```bash
	git clone https://github.com/yourusername/ResumeBuilder.git
	```
	
2. Set up your data:
	```bash
	git config --global user.name "<your name>"  
	git config --global user.email "<your email>"
	```
	
3. Set up end-of-line:  
   	If Git changes the end-of-line style, some scripts may not work correctly. 
	```bash
	git config --global core.eol lf`  
	git config --global core.autocrlf false`
	```

4. Set up for WSL:  
   You can create a new profile in Windows Terminal for WSL to launch directly in the project's root directory and configure the `PATH` along with other environment variables.

   **Steps**:  
   1. Open the settings: Use the menu or press `Ctrl+,`.  
   2. Click the plus (`+`) sign to add a new profile.  
   3. Set a name, e.g., `ResumeBuilder`.  
   4. Set the command line: `wsl.exe -d Ubuntu --cd <root_project_directory>/ResumeBuilder bash -c 'source <root_project_directory>/ResumeBuilder/scripts/setup_resumebuilder.sh && bash'`.  
   5. Set the starting directory: `<root_project_directory>`.  
   6. *(Optional)* Icon: Select the logo at `<root_project_directory>/docs/images/logo.png`.  
   7. *(Optional)* Appearance: Choose a color scheme and font.

   The two figures below illustrate my configuration:  
   ![Configuration WSL Part 1](docs/images/ConfigurationScreenWSL1.png)  
   ![Configuration WSL Part 2](docs/images/ConfigurationScreenWSL2.png)