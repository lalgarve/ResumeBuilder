<!-----------------------------------------------------------------------
    This is part of the documentation of Deployo.io Resume Builder System.
    Copyright (C) 2025
    Leila Otto Algarve
    Licensed under the GNU Free Documentation License v1.3 or later.
    See LICENSE-DOCUMENTATION for details.
------------------------------------------------------------------------>
# ResumeBuilder Backlog - Version 1.0 - First Portfolio-Ready Version

The **ResumeBuilder** system will be developed using an **API-first design** with Swagger, focusing on offering a unique value proposition through **artificial intelligence integration** as a differentiator from other portfolio projects. The system will leverage the Gemini AI interface for rapid prototyping and implement core functionalities in Java with **Quarkus**. In addition to functionality, this version emphasizes well-structured code, comprehensive testing (including mocks of external services), and a DevOps pipeline with Terraform for deployment.

Below is the complete backlog for the first version.

## API Design and Implementation

- **Design the API using Swagger**:
  - Define endpoints for user selection, resume retrieval, template selection, AI optimization, and resume generation.
  - Generate Swagger documentation (`swagger.yaml`) for all API routes.
  - Implement initial endpoints with mock responses, migrating to complete logic as development progresses.

## Base User and Resume Management

- **Implement four predefined users**:
  - Create four distinct users, each with a unique avatar, job title, and pre-loaded base resume:
    - User 1: "Software Engineer" with a technology-focused resume.
    - User 2: "Graphic Designer" with a creative resume.
    - User 3: "Project Manager" with a management-oriented resume.
    - User 4: "Marketing Specialist" with a sales-oriented resume.
  - Store user data and base resumes in a JSON file or in-memory structure initially (to be replaced by a database in future versions).
- **Display user selection interface**:
  - Present a screen showing the four avatars with their job titles after the system launch.
  - Allow user selection by clicking on the avatar.

## Base Resume Visualization

- **Display the base resume**:
  - Show the pre-loaded base resume of the selected user in a readable format (e.g., HTML or plain text).
  - Include fields such as name, job title, experience, education, and skills.

## AI Integration with Gemini

- **Prototype AI functionality with Gemini**:
  - Use the Gemini interface to create a quick prototype for testing commands and prompts.
  - Test basic prompts for:
    - Analyzing raw resume data into structured fields (e.g., extracting experience and skills).
    - Generating improvement suggestions based on job descriptions.
  - Document the most effective prompts for implementation.
- **Implement AIService in Java with Quarkus**:
  - Create an `AIService` class in Java to integrate with the Gemini API, utilizing Quarkus features for optimization.
  - Implement methods for:
    - Analyzing raw resume data (`parseResume(rawData)` → `parsedData`).
    - Optimizing resume content based on job descriptions (`optimizeResume(parsedData, jobDescription)` → `customData`).
  - Manage API authentication (e.g., API key or OAuth) and error cases.

## Template and Personalization Options

- **Offer template selection**:
  - Present a screen with two available templates after displaying the base resume:
    - Template 1: "Modern" - Clean layout with bold titles.
    - Template 2: "Classic" - Traditional layout with formal style.
  - Allow the user to choose a template.
- **Add color palette selection**:
  - Provide a simple color palette with 3-5 options (e.g., shades of blue, green, red).
  - Apply the selected color scheme to the chosen template.

## Testing

- **Implement unit tests**:
  - Create unit tests for all system components, including mocks of external services (Gemini API).
- **Perform integration tests**:
  - Test the integration between the different modules of the system to ensure cohesive functionality.

## DevOps and Deployment

- **Create CI/CD pipeline with Terraform**:
  - Automate the build, test, and deploy process using a CI/CD pipeline with Terraform for infrastructure provisioning on AWS (Lambda, API Gateway, etc.).
- **Implement monitoring and logging**:
  - Configure basic monitoring and logging to track system performance and diagnose issues.