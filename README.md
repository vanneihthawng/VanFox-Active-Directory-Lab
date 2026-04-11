# VanFox Active Directory Lab

## Overview
VanFox is a multi-system Active Directory home lab designed to simulate a small enterprise Windows environment. The project is being built in VirtualBox and documents the deployment of core identity infrastructure, directory organization, security groups, and user provisioning within a structured domain environment.

This lab is intended to demonstrate practical skills in Windows Server administration, Active Directory design, role-based access planning, and technical documentation for IT support and systems administration roles.

---

## Current Project Status
**Status:** In Progress

### Completed Phases
- Infrastructure planning
- Domain Controller deployment and promotion
- Organizational Unit (OU) design
- Security group creation
- User provisioning

### In Progress / Planned Phases
- File Server deployment
- Group Policy implementation
- Windows 11 client domain join
- Access validation and testing

---

## Lab Environment

### Virtual Infrastructure
- **Platform:** Oracle VirtualBox
- **Network Type:** Internal lab network
- **Environment Type:** Windows enterprise simulation

### Systems
- **DC01** — Domain Controller, Active Directory Domain Services, DNS
- **FS01** — Planned File Server
- **WIN11-01** — Planned domain-joined client
- **WIN11-02** — Planned domain-joined client

### Domain
- **Domain Name:** `vanfox.local`

---

## Project Objectives
This lab was designed to simulate a business-oriented Active Directory environment with a focus on:

- Centralized identity management
- Department-based Organizational Unit design
- Security group structure for controlled access
- User provisioning aligned to business roles
- Preparation for Group Policy and file-share access control
- Clear, recruiter-friendly technical documentation

---

## Architecture Summary
The VanFox lab follows a role-separated design:

- **DC01** provides directory services and DNS for the domain
- **FS01** will host department-based shared resources
- **Windows 11 clients** will be joined to the domain and placed into department-aligned computer OUs
- **Security groups** are used to support access control and future permission assignment
- **Users** are organized into department-based OUs to support clean administration and scalable policy targeting

---

## Skills Demonstrated
This project demonstrates hands-on exposure to:

- Windows Server administration
- Active Directory Domain Services (AD DS)
- DNS configuration in a domain environment
- Organizational Unit design
- Security group planning
- User account provisioning
- Role-based access control (RBAC) concepts
- Enterprise-style lab structuring
- Technical project documentation

---

## Project Structure

### Completed Sections
- [01-Infrastructure](./01-Infrastructure)
- [02-Domain-Controller-Promotion](./02-Domain-Controller-Promotion)
- [03-OU-Design](./03-OU-Design)
- [04-Security-Groups](./04-Security-Groups)
- [05-User-Provisioning](./05-User-Provisioning)

### Upcoming Sections
- [06-File-Server](./06-File-Server)
- [07-Group-Policy](./07-Group-Policy)
- [08-Client-Join-and-Validation](./08-Client-Join-and-Validation)

---

## Directory Design Snapshot
The Active Directory structure is being organized around a business-style hierarchy including:

- `VanFox`
  - `_Admin`
  - `IT`
  - `HR`
  - `Finance`
  - `Operations`
  - `Warehouse`
  - `Computers`
    - `IT-PCs`
    - `HR-PCs`
    - `Finance-PCs`
    - `Operations-PCs`
    - `Warehouse-PCs`

This structure supports cleaner object management, future Group Policy scoping, and department-specific administration.

---

## Security Model Snapshot
The lab includes both department-based and role-based security groups.

### Department Share Groups
- `HR_Share_RW`
- `Finance_Share_RW`
- `Operations_Share_RW`
- `Warehouse_Share_RW`
- `Public_Share_R`

### Role-Based Groups
- `IT_Admins`
- `IT_Helpdesk`
- `USB_Allowed`
- `Printer_Users`

This group structure is intended to support scalable access control and separation of administrative roles from resource permissions.

---

## User Provisioning Scope
The current build includes user creation across multiple departments in order to simulate a realistic business directory structure. Accounts were created and organized into the correct departmental OUs to prepare the environment for future permission assignment, drive mapping, printer access, and Group Policy targeting.

---

## Documentation Approach
Each project phase is documented in its own folder using:

- A dedicated `README.md`
- Screenshot-based evidence
- Explanations for each important configuration view
- Clear technical takeaways for recruiter and hiring manager review

This repository is being maintained as a project portfolio rather than a build tutorial.

---

## Planned Next Steps
The next implementation phases are:

1. Build and join **FS01** to the domain  
2. Create departmental shared folders and apply access controls  
3. Configure and document **Group Policy Objects (GPOs)**  
4. Join Windows 11 clients to the domain  
5. Validate access behavior, mapped drives, device restrictions, and policy application  

---

## Why This Project Matters
VanFox is intended to show more than isolated lab tasks. The goal is to demonstrate the ability to structure, document, and present an enterprise-style Windows environment in a way that reflects real-world IT administration and support responsibilities.

---

## Author
**Van Neih Thawng**  
IT Support / Help Desk / Systems Administration Portfolio Project
