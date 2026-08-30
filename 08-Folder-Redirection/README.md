# 08 - Folder Redirection

## Overview

This phase documents the configuration and validation of Documents Folder Redirection in the VanFox Active Directory environment.

The `VC-Folder-Redirection` Group Policy Object redirects each authorized user's Documents folder from the local Windows profile to a private folder hosted on **FS01**. Users continue accessing Documents normally, while their files are centrally stored and available from multiple domain-joined computers.

---

## Objectives

- Store user Documents folders centrally on FS01
- Apply Folder Redirection through Group Policy
- Create a separate redirected folder for each user
- Restrict the policy to authorized department users
- Preserve the familiar Windows Documents experience
- Confirm that user files follow the user between domain computers

---

## Folder Redirection Design

| Setting | Configuration |
|---|---|
| Server root | `D:\Shares\RedirectedFolders` |
| Hidden share | `\\FS01\Redirected$` |
| Group Policy Object | `VC-Folder-Redirection` |
| Redirected folder | Documents |
| Configuration method | Basic |
| Target path | `\\FS01\Redirected$\%USERNAME%\Documents` |
| Security filtering | `Folder_Redirection_Users` |
| Policy removal behavior | Leave contents in the redirected location |

The policy creates a separate Documents folder for each user beneath the hidden `Redirected$` share.

---

## Policy Configuration

The Folder Redirection policy includes the following options:

- Redirect everyone’s Documents folder to the same root location
- Create an individual folder based on the username
- Grant the user exclusive rights to Documents
- Move existing Documents contents to the redirected location
- Leave the redirected folder in place if the policy is removed

The GPO is linked to the following department user OUs:

- Finance
- HR
- IT
- Operations
- Warehouse

Security filtering limits application to members of:

```text
Folder_Redirection_Users
