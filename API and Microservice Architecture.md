1. **What is an API? Explain and give examples of different types and implementations.**
    - **API (Application Programming Interface):** An API is a set of rules that allows one piece of software to interact with another. It defines methods and data structures for such interactions.
    - **Types of APIs:**
        - **REST APIs:** Used for web services, REST (Representational State Transfer) APIs allow interaction over HTTP with resources identified by URLs. E.g., Twitter API.
        - **SOAP APIs:** Simple Object Access Protocol is a protocol used for exchanging structured information in web services. E.g., PayPal API.
        - **GraphQL APIs:** A query language for your API that allows clients to request exactly the data they need. E.g., GitHub API.
        - **Operating System APIs:** Interfaces to interact with the operating system. E.g., Windows API.
  
2. **What is an SDK?**
    - **SDK (Software Development Kit):** An SDK is a collection of software development tools, libraries, documentation, and sample code that developers use to build applications for specific platforms or environments. 
  
3. **What is a Microservice Architecture?**
    - **Microservice Architecture:** It is an architectural style that structures an application as a collection of loosely coupled, independently deployable services. Each microservice is responsible for a specific business function and communicates with other microservices via APIs.
  
4. **Explain how the architecture works, add a cool diagram.**
    - **How it works:** In a microservice architecture, each service is a small, self-contained unit that performs a single function. Services communicate with each other over a network, typically using HTTP/REST or messaging queues. They can be developed, deployed, and scaled independently.
    - **Diagram:**  In a separate file.
  
5. **What are the pros and cons of this architecture?**
    - **Pros:**
        - Independent deployment and scalability.
        - Improved fault isolation.
        - Flexibility in technology stack.
        - Easier to develop and maintain smaller, focused teams.
    - **Cons:**
        - Complexity in managing distributed systems.
        - Potential for network latency and issues in communication between services.
        - Requires more infrastructure and DevOps expertise.
  
6. **What is a monolithic architecture? What are the key differences between it and a microservice architecture?**
    - **Monolithic Architecture:** A monolithic application is built as a single unit. All components of the application are tightly coupled and run as a single process.
    - **Key Differences:**
        - **Monolithic:** Single codebase, single deployment unit, tightly coupled components.
        - **Microservices:** Multiple small, independent services, loosely coupled, independently deployable.

7. **Which use cases justify using a monolithic architecture?**
    - **Use Cases:**
        - Small-scale applications with limited functionality.
        - Applications with simple business logic and few dependencies.
        - Early-stage startups where speed of development is critical and scaling is not an immediate concern.
        - Environments with limited DevOps capabilities or expertise.

8. **What are the pros and cons of using monolithic architecture?**
    - **Pros:**
        - Simpler development and deployment process.
        - Easier testing and debugging due to a single codebase.
        - Reduced latency as all components are within the same process.
    - **Cons:**
        - Scalability challenges, especially in large applications.
        - Tightly coupled components make changes and updates riskier.
        - Slower development speed as the application grows in size.

9.  **What is a RESTful API?**
    - **RESTful API:** A RESTful API is an API that follows the principles of REST (Representational State Transfer), an architectural style for designing networked applications. RESTful APIs use HTTP requests to perform CRUD operations (Create, Read, Update, Delete) on resources, typically represented in formats like JSON or XML.
  
10.  **Give 3 examples of apps/companies that use the microservice architecture.**
    - **Netflix:** Uses microservices to handle everything from user interface to video streaming.
    - **Amazon:** Breaks down its vast e-commerce platform into independent services like payments, product recommendations, etc.
    - **Uber:** Manages different functions like ride-matching, payment processing, and notifications through microservices.

11. **Imagine a software system. It can be based on existing systems you know. Draw a simple system diagram showing the system's microservices.**
	In a separate file.

12. **What is CRUD?**
    - **CRUD:** An acronym that stands for Create, Read, Update, and Delete. It represents the four basic operations that can be performed on data in a database or an application.

13. **Apart from API calls, what other ways are there to communicate between services?**
    - **Message Queues:** Services can communicate asynchronously using message brokers like RabbitMQ, Kafka, or Amazon SQS.
    - **Event Streaming:** Use platforms like Apache Kafka for real-time data streaming between services.
    - **Service Mesh:** A dedicated infrastructure layer for handling service-to-service communication, often used in microservices architectures.
    - **Shared Databases:** Multiple services might interact with the same database to read or write data, although this is less common in well-designed microservices.
    - **Remote Procedure Calls (RPC):** Direct communication between services through RPC frameworks like gRPC.