# 02 - Domain Controller Promotion

## Overview
This section documents the deployment and promotion of DC01 as the primary Domain Controller for the VanFox lab environment.

DC01 was configured to host Active Directory Domain Services and DNS, forming the identity and name-resolution backbone of the domain. This phase establishes the centralized authentication infrastructure required for organizational units, security groups, user accounts, client joins, and future Group Policy deployment.

---

## Objectives
- Configure the main Windows Server system as DC01
- Install Active Directory Domain Services
- Install DNS Server
- Promote the server to a Domain Controller
- Create the new forest for the VanFox lab domain

---

## Domain Configuration
- **Server Name:** `DC01`
- **Core Roles:** Active Directory Domain Services, DNS
- **Domain Name:** `vanfox.local`

These elements are part of the defined lab design for the project. :contentReference[oaicite:2]{index=2}

---

## Evidence

### 1) DC01 Local Server View
![DC01 Local Server](screenshots/01-dc01-local-server.png)

This screenshot shows the Windows Server system after initial configuration and renaming to DC01.

**Why it matters:**  
This confirms that the server identity was configured correctly before promotion, which is an essential part of clean domain deployment.

---

### 2) AD DS and DNS Role Installation
![AD DS and DNS Installed](screenshots/02-adds-dns-installed.png)

This screenshot shows the installation of the required server roles, specifically Active Directory Domain Services and DNS Server.

**Why it matters:**  
This proves that DC01 was prepared to function as both a Domain Controller and the domain’s DNS service provider.

---

### 3) Domain Promotion to vanfox.local
![Domain Promotion](screenshots/03-domain-promotion.png)

This screenshot shows the promotion workflow or the completed promotion result for the new forest using the domain name `vanfox.local`.

**Why it matters:**  
This is the core evidence that the domain was actually created and that the server moved from standalone configuration into domain infrastructure.

---

### 4) Post-Promotion Validation
![Post Promotion Validation](screenshots/04-post-promotion-validation.png)

This screenshot should show a post-promotion view such as Server Manager, AD Users and Computers, or another management console confirming DC01 is operating as a Domain Controller.

**Why it matters:**  
This validates that promotion completed successfully and that directory services are active.

---

## Technical Takeaways
This phase demonstrates:
- Windows Server role deployment
- Active Directory Domain Services installation
- DNS integration with Active Directory
- Domain Controller promotion
- Centralized domain identity infrastructure

---

## Phase Outcome
DC01 was established as the primary Domain Controller for the VanFox environment, providing the domain foundation needed for structured identity and administrative management throughout the rest of the project.
