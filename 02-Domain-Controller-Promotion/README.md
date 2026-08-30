# 02 - Domain Controller Promotion

## Overview
This section documents the deployment and promotion of DC01 as the primary Domain Controller for the VanFox lab environment.

DC01 was configured to host Active Directory Domain Services and DNS, forming the identity and name-resolution backbone of the domain. This phase establishes the centralized authentication infrastructure required for organizational units, security groups, user accounts, client joins, and Group Policy deployment.

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

---

## Evidence

### 1) DC01 System Name and Domain Membership
![DC01 System Name](screenshots/01-dc01-system-name.png)

This screenshot shows the Server Manager **Local Server** view for DC01, including the configured hostname and domain membership.

**Why it matters:**  
This confirms that the server is correctly identified as DC01 and associated with the `vanfox.local` domain environment.

---

### 2) AD DS and DNS Role Installation
![AD DS and DNS Installed](screenshots/02-adds-dns-installed.png)

This screenshot shows that the required server roles, **Active Directory Domain Services** and **DNS Server**, are installed on DC01.

**Why it matters:**  
These roles are required for domain controller functionality, enabling centralized directory services and domain-based name resolution.

---

### 3) vanfox.local Domain in Active Directory Users and Computers
![vanfox.local Domain](screenshots/03-vanfox-local-domain.png)

This screenshot shows **Active Directory Users and Computers** with the `vanfox.local` domain visible in the directory tree.

**Why it matters:**  
This is the core evidence that the domain was successfully created and that Active Directory is functioning within the environment.

---

### 4) DNS Forward Lookup Zone
![DNS Forward Lookup Zone](screenshots/04-dns-forward-lookup-zone.png)

This screenshot shows the Active Directory-integrated `vanfox.local` DNS zone. It includes the required SOA and name-server records, along with host records for DC01 and FS01.

- **DC01:** `10.0.2.15`
- **FS01:** `10.0.2.20`

**Why it matters:**  
This confirms that DNS is functioning for the domain and that domain systems have registered host records. Reliable DNS resolution is required for domain authentication, computer joins, Group Policy processing, and access to network resources.

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
DC01 was successfully established as the primary Domain Controller for the VanFox environment, providing the domain foundation needed for structured identity, access, and administrative management throughout the rest of the project.
