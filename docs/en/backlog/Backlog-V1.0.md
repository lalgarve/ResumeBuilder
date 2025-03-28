<!----------------------------------------------------------------------- 
	This is part of the documentation of Deployo.io Resume Builder System.
	Copyright (C) 2025
	Leila Otto Algarve
	See LICENSE.md for copying conditions. 
------------------------------------------------------------------------>
# ResumeBuilder Backlog - Version 1.0 - First Portfolio Ready Version

The **ResumeBuilder** system will be developed using an **API-first design** with Swagger, focusing on delivering a unique value proposition through **artificial intelligence integration** as a key differentiator compared to other portfolio projects. The system will leverage the Gemini AI interface for rapid prototyping and implement core functionality in Java. Beyond functionality, this version emphasizes well-structured code, comprehensive tests (including mocking external services), and a DevOps pipeline with Terraform for deployment.

Below is the complete backlog for the first version.

## API Design and Implementation

- **Design API using Swagger**:
  - Define endpoints for user selection, resume retrieval, template selection, AI optimization, and resume generation.
  - Generate Swagger documentation (`swagger.yaml`) for all API routes.
  - Implement initial endpoints with mock responses, transitioning to full logic as development progresses.

## User Management and Base Resumes

- **Implement four predefined users**:
  - Create four distinct users, each with a unique avatar, job title, and pre-loaded base resume:
    - User 1: "Software Engineer" with a tech-focused resume.
    - User 2: "Graphic Designer" with a creative resume.
    - User 3: "Project Manager" with a management-focused resume.
    - User 4: "Marketing Specialist" with a sales-oriented resume.
  - Store user data and base resumes in a JSON file or in-memory structure initially (to be replaced with a database in future versions).
- **Display user selection interface**:
  - Present a screen showing the four avatars with their job titles after launching the system.
  - Allow user selection via avatar click.

## Base Resume Visualization

- **Show the base resume**:
  - Display the pre-loaded base resume for the selected user in a readable format (e.g., HTML or plain text).
  - Include fields like name, job title, experience, education, and skills.

## AI Integration with Gemini

- **Prototype AI functionality with Gemini**:
  - Use the Gemini interface to create a rapid prototype for testing commands and prompts.
  - Test basic prompts to:
    - Parse raw resume data into structured fields (e.g., extract experience and skills).
    - Generate improvement suggestions based on job descriptions.
  - Document the most effective prompts for implementation.
- **Implement AIService in Java**:
  - Create an `AIService` class in Java to integrate with the Gemini API.
  - Implement methods for:
    - Parsing raw resume data (`parseResume(rawData)` → `parsedData`).
    - Optimizing resume content based on job descriptions (`optimizeResume(parsedData, jobDescription)` → `customData`).
  - Handle API authentication (e.g., API key or OAuth) and error cases.

## Template and Customization Options

- **Provide template selection**:
  - Offer a screen with two available templates after showing the base resume:
    - Template 1: "Modern" - Clean layout with bold headings.
    - Template 2: "Classic" - Traditional layout with a formal style.
  - Allow the user to choose one template.
- **Add color palette selection**:
  - Provide a simple color palette with 3-5 options (e.g., Blue, Green, Red tones).
  - Apply the selected color scheme to the chosen template.

## Job Description Input and AI Optimization

- **Add job description input**:
  - Include a text area for the user to paste the job description of the target role.
- **Generate AI-optimized resume**:
  - Use the `AIService` to process the base resume (`parsedData`) and job description, generating optimized `customData`.
  - Display the optimized content to the user for review.

## Resume Generation

- **Generate the customized resume**:
  - Combine the AI-optimized `customData`, selected template, and color palette into an HTML output.
  - Use the **iText** library in Java to convert the HTML into a PDF file.
  - Save the generated PDF temporarily in a local folder (e.g., `./output/`).
- **Display the generated resume**:
  - Provide a preview of the PDF or a download link for the user.

## Code Structure and Testing

- **Structure the codebase**:
  - Organize the Java project using a clean architecture (e.g., separate layers for controllers, services, models, and utilities).
  - Follow naming conventions and package structure (e.g., `com.resumebuilder.controller`, `com.resumebuilder.service`).
- **Write unit and integration tests**:
  - Use JUnit and Mockito to test:
    - `AIService` parsing and optimization logic.
    - Resume generation with iText.
  - Mock the Gemini API using Mockito to simulate responses during testing.
- **Document code**:
  - Add Javadoc comments to all public classes and methods.
  - Include a `README.md` with setup instructions and project overview.

## DevOps and Deployment

- **Configure DevOps pipeline**:
  - Set up a CI/CD pipeline using GitHub Actions:
    - Build the Java project with Maven or Gradle.
    - Run tests automatically on push/pull requests.
    - Generate artifacts (e.g., JAR file).
  - Configure linting and code quality checks (e.g., SonarQube or Checkstyle).
- **Deploy with Terraform**:
  - Write Terraform scripts to provision AWS infrastructure:
    - Lambda function for the API.
    - S3 bucket for storing generated PDFs.
    - API Gateway for exposing endpoints.
  - Test deployment locally with `terraform init` and `terraform apply` using an AWS sandbox account.

## Additional Notes

- **Focus on AI as a Differentiator**:
  - The Gemini-powered `AIService` will enhance resume parsing and tailoring, setting ResumeBuilder apart from typical portfolio projects.
- **Simplifications for Version 1.0**:
  - Use static templates and mock data initially.
  - Limit AI features to basic parsing and optimization for faster delivery.
- **Future Enhancements**:
  - Expand AI capabilities (e.g., natural language suggestions).
  - Replace mock storage with DynamoDB.
  - Add more templates and customization options.

## Next Steps

- Finalize Swagger API specification and prototype initial endpoints.
- Implement user selection and base resume display.
- Prototype AI functionality in Gemini and implement `AIService` in Java.
- Develop template selection and resume generation with iText.
- Set up testing framework with mocks for Gemini.
- Configure GitHub Actions pipeline and Terraform deployment scripts.
- Test the end-to-end flow with all four users.

