# 04 - Security Groups

## Overview
This section documents the security group model created within the VanFox domain.

The group structure was designed to separate department-based resource access from role-based administrative functions. This approach supports cleaner permission management, stronger access control design, and easier administration as the lab expands into file shares, printers, USB policy exceptions, and local admin delegation.

---

## Objectives
- Create department-based groups for shared resource access
- Create role-based groups for administrative or operational control
- Prepare the environment for future file permissions and policy targeting
- Separate resource access groups from privileged role groups

---

## Security Group Design

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

These groups are defined in the lab plan and were created under the administrative structure of the domain. :contentReference[oaicite:4]{index=4}

---

## Evidence

### 1) Group Inventory in Administrative Container
![Security Group Inventory](screenshots/01-security-group-inventory.png)

This screenshot shows the created groups inside the administrative area of the domain, including both department share groups and role-based groups.

**Why it matters:**  
This confirms that the access model is being built through reusable groups rather than direct object-by-object permissions.

---

### 2) Department Share Group Example
![Department Share Group Properties](screenshots/02-department-share-group-properties.png)

This screenshot shows the properties of one department-based share group, such as `HR_Share_RW` or `Finance_Share_RW`.

**Why it matters:**  
This demonstrates the use of security groups as part of a structured access model for department resources.

---

### 3) Role-Based Group Example
![Role Based Group Properties](screenshots/03-role-group-properties.png)

This screenshot shows a role-based group such as `IT_Admins` or `IT_Helpdesk`.

**Why it matters:**  
This provides evidence that the lab separates administrative roles from department resource access, which is an important design principle in business environments.

---

## Technical Takeaways
This phase demonstrates:
- Security group planning
- Resource access modeling
- Role-based access control thinking
- Separation of privilege and resource assignment
- Preparation for scalable permission management

---

## Phase Outcome
The VanFox environment now includes a structured security group model that supports future share permissions, administrative access control, and policy-linked role assignment.
