# 05 - User Provisioning

## Overview
This section documents the creation of user accounts within the VanFox Active Directory environment.

User objects were provisioned across multiple department-specific Organizational Units to simulate a realistic business directory. The structure supports cleaner administration, future access assignment through security groups, and business-aligned identity organization.

---

## Objectives
- Create domain user accounts across department OUs
- Organize users by department rather than storing them in default containers
- Maintain consistent naming and account structure
- Prepare accounts for group-based permissions, mapped drives, printer access, and policy targeting

---

## User Scope
The lab design includes **20 users** distributed across the following departments:

- **IT** — 5 users
- **HR** — 3 users
- **Finance** — 4 users
- **Operations** — 5 users
- **Warehouse** — 3 users

This user model is part of the documented VanFox lab scope. :contentReference[oaicite:5]{index=5}

---

## Evidence

### 1) Department User Accounts in OU
![Department User Accounts](screenshots/01-department-users-ou.png)

This screenshot shows user accounts created inside a department OU, such as IT, HR, Finance, Operations, or Warehouse.

**Why it matters:**  
This confirms that accounts were placed inside the correct business-aligned OUs instead of default containers, supporting cleaner administration and future policy targeting.

---

### 2) Sample User Properties
![Sample User Properties](screenshots/02-sample-user-properties.png)

This screenshot shows the properties of a sample user account after creation.

**Why it matters:**  
This provides evidence that the account was provisioned correctly as a managed domain user object rather than only appearing in a general list view.

---

### 3) User Group Membership
![User Group Membership](screenshots/03-sample-user-memberof.png)

This screenshot shows the **Member Of** tab for a user account that has been aligned to one or more security groups.

**Why it matters:**  
This demonstrates how user provisioning connects to the access-control model, allowing permissions to be assigned through groups rather than directly to individuals.

---

### 4) Multi-Department User Structure
![Multi Department User Structure](screenshots/04-multiple-departments-users.png)

This screenshot shows that user provisioning was carried out across multiple departments, reflecting a more realistic business directory layout.

**Why it matters:**  
This shows that the project goes beyond basic user creation and instead models a structured organizational identity environment.

---

## Technical Takeaways
This phase demonstrates:
- Active Directory user provisioning
- Department-based identity organization
- Structured user placement in OUs
- Alignment between user accounts and security groups
- Preparation for RBAC, file access, and future Group Policy targeting

---

## Phase Outcome
The VanFox domain now includes a realistic user base organized by department and prepared for group-based access control, future share permissions, and endpoint policy enforcement.
