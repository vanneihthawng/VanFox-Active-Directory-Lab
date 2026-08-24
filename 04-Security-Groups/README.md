# 04 - Security Groups

## Overview
This section documents the security group structure created within the VanFox domain.

The group design separates department-based resource access from role-based administrative functions. This supports cleaner permission assignment, stronger access-control planning, and easier administration as the environment expands into file shares, printers, USB restrictions, and delegated support roles.

---

## Objectives
- Create department-based groups for shared resource access
- Create role-based groups for administrative and operational control
- Prepare the environment for future file permissions and policy targeting
- Separate resource access groups from privileged or support-related groups

---

## Security Group Structure

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

---

## Evidence

### 1) Security Group Inventory
![Security Group Inventory](screenshots/01-security-groups-overview (updated).png)

This screenshot shows the security groups created in the administrative area of the domain, including both department-based share groups and role-based groups.

**Why it matters:**  
This confirms that access is being designed through reusable security groups rather than being assigned directly to individual users.

---

### 2) Department Share Group Membership
![Department Share Group Membership](screenshots/02-department-share-group-members.png)

This screenshot shows the membership of a department-based share group, such as `Finance_Share_RW`.

**Why it matters:**  
This demonstrates how department resource access is being assigned through group membership, which is cleaner and more scalable than user-by-user permission management.

---

### 3) Role-Based Group Membership
![Role Based Group Membership](screenshots/03-role-based-group-members.png)

This screenshot shows the membership of a role-based group, such as `IT_Admins`.

**Why it matters:**  
This shows that administrative and support access is being assigned through dedicated role groups rather than being mixed directly with department resource access.

---

## Technical Takeaways
This phase demonstrates:
- Security group planning
- Group-based access design
- Separation of resource access and role assignment
- Preparation for role-based access control
- Scalable permission management practices

---

## Phase Outcome
The VanFox environment now includes a structured security group model that supports future share permissions, delegated administration, and policy-linked access control.
