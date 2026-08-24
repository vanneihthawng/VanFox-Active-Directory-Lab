# 03 - OU Design

## Overview
This section documents the Organizational Unit structure created inside the VanFox domain.

The OU design was built to reflect a business-oriented directory layout with separate containers for administration, departments, and computer objects. This structure prepares the environment for cleaner administration, future Group Policy targeting, and scalable directory management.

---

## Objectives
- Create a root OU for the VanFox organization
- Separate department user objects into dedicated OUs
- Separate computer objects into their own administrative structure
- Prepare the directory for organized administration and future policy application

---

## OU Structure
The VanFox directory structure includes:

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

---

## Evidence

### 1) Root OU Structure
![Root OU Structure](screenshots/01-root-ous-structure.png)

This screenshot shows the top-level `VanFox` Organizational Unit and the main administrative, departmental, and computer-related containers created beneath it.

**Why it matters:**  
This confirms that the environment was structured intentionally instead of relying on a flat or default directory layout.

---

### 2) Computer OU Structure
![Computer OU Structure](screenshots/02-computer-ou-structure.png)

This screenshot shows the `Computers` OU and its child OUs for department-specific workstations, such as IT-PCs, HR-PCs, Finance-PCs, Operations-PCs, and Warehouse-PCs.

**Why it matters:**  
This demonstrates forward planning for endpoint management, department-based computer placement, and future Group Policy application.

---

## Technical Takeaways
This phase demonstrates:
- Logical Active Directory design
- Department-based directory organization
- Separation of user and computer administration
- Policy-ready OU hierarchy
- Business-aligned environment structuring

---

## Phase Outcome
The VanFox domain was organized into a structured OU hierarchy that supports scalable administration and prepares the environment for later user management, computer placement, and Group Policy deployment.
