# Salesforce Deployment to PROD

This repository contains the GitHub Actions workflow to automate the deployment process to the Salesforce production environment. The workflow handles various stages, including authorization, delta deployment, and post-deployment tasks.

## Features

- **Automated Deployment**: Deploy Salesforce metadata to production automatically using GitHub Actions.
- **Delta Deployment**: Only deploys the changes made since the last production release.
- **Pre/Post Scripts**: Supports executing pre- and post-deployment scripts, including destructive changes and anonymous Apex scripts.
- **CI/CD**: Integration with GitHub Actions for seamless CI/CD pipeline.

## Workflow Steps

1. **Checkout Code**: The latest code is checked out from the repository.
2. **Install Utilities**: Dependencies like `yq`, `xq`, and Salesforce CLI are installed.
3. **Server Key Creation**: A decryption process is performed to create a secure server key file.
4. **Salesforce Authorization**: The Salesforce CLI is used to log into the Salesforce environment via JWT-based authentication.
5. **Delta Deployment**: A delta deployment is triggered using the latest changes from the repository.
6. **Pre/Post Destructive Changes**: Supports pre- and post-deployment destructive changes.
7. **Anonymous Apex Scripts**: Allows the execution of Apex scripts before and after the deployment.
8. **Deployment Report**: Generates a detailed deployment report after the deployment is complete.
9. **Tagging**: After a successful deployment, the repository is tagged with the latest release number for versioning.

## Prerequisites

- Salesforce Developer Edition or appropriate credentials.
- JWT key file for authentication with Salesforce (configured as GitHub Secrets).
- Salesforce CLI (`sf`) and `sfdx-git-delta` plugin for delta deployments.

## Setting Up the GitHub Secrets

Ensure the following GitHub secrets are set up in your repository:

- `SF_CLIENT_ID`: Salesforce connected app client ID.
- `SF_CICD_USERNAME`: Salesforce username for the CI/CD process.
- `DECRYPTION_KEY`: Key to decrypt the server key file.
- `DECRYPTION_IV`: Initialization vector for decryption.
- `GITHUB_TOKEN`: GitHub token for tagging the repository.

## How to Use

1. Fork or clone this repository.
2. Set up the necessary secrets in your GitHub repository.
3. Push to the `main` branch to trigger the deployment to production.
4. Monitor the deployment status through GitHub Actions.

## Notes

- The workflow is configured to deploy only the modified files since the last deployment to minimize unnecessary changes.
- In case of errors or failures, you can review the detailed logs generated during the workflow execution.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

