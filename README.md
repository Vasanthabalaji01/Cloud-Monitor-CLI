# Mini Cloud CLI

Mini Cloud CLI is a command-line interface tool designed to simplify the management of cloud services across multiple providers. With Mini Cloud CLI, you can interact with various cloud platforms such as AWS, Azure, and Google Cloud directly from your terminal, without the need for complex graphical interfaces or multiple login sessions.

## Features

- **Provider Selection**
  
  Choose your preferred cloud provider Cloud from the main menu
    - AWS
    - Azure
    - Google 
- **Service Management**
  
  Access specific services offered by each cloud provider, such as
    - EC2, S3, and Lambda for AWS,
    - Virtual Machines, Blob Storage, and Functions for Azure,
    - Compute Engine, Cloud Storage, Load Balancing, and Cloud Functions for Google Cloud.
      
- **Command-Line Interface**
  
  Perform actions and configurations using familiar command-line syntax.
  
- **Modular Design**
  
  Each cloud provider's functionality is organized into separate scripts for easy maintenance and extensibility.

## Getting Started

To get started with Mini Cloud CLI, follow these steps:

1. **Clone the Repository**: Clone this repository to your local machine:

    ```bash
    git clone https://github.com/your-username/mini-cloud-cli.git
    ```

2. **Navigate to the Directory**: Change into the directory of the cloned repository:

    ```bash
    cd mini-cloud-cli
    ```

3. **Run the Main Script**: Execute the `minicloudcli.sh` script to launch the main menu:

    ```bash
    ./minicloudcli.sh
    ```

4. **Choose Your Cloud Provider**: Select your desired cloud provider from the main menu options.

5. **Explore Services**: Navigate through the available services and execute commands as needed.

## Prerequisites

- Bash shell environment
- Internet connectivity for initial setup and authentication with cloud providers
- Proper credentials and permissions for accessing cloud services

## Contributing

Contributions are welcome! If you have any ideas for new features, improvements, or bug fixes, please open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

## Acknowledgments

- This project was inspired by the need for a lightweight and versatile tool to manage cloud services from the command line.
- Special thanks to [learn to cloud](https://github.com/learntocloud) 
- Developed by [Mr.CloudExplorer](https://github.com/Vasanthabalaji01).
