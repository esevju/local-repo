# Microsoft 365 Service Map

## Purpose

This note gives Microsoft 365 beginners a useful mental model: choose the service according to the work being done, the people involved, and the required access boundary. Product names overlap, so the ownership and sharing model matter more than the application icon.

## The main service areas

| Need | Primary service | Typical ownership and boundary |
| --- | --- | --- |
| Sign-in, users, groups, and access decisions | Microsoft Entra ID | Tenant-wide identity and access control |
| Mail, calendars, and contacts | Exchange Online and Outlook | Personal mailbox plus organization-wide mail flow |
| Personal work files | OneDrive for Business | A user's work area; sharing should be intentional |
| Team files and structured collaboration | SharePoint and Teams | Team or site ownership; permissions should follow the team |
| Documents and analysis | Word, Excel, PowerPoint, and OneNote | Apps that consume files stored in OneDrive or SharePoint |
| Devices and applications | Microsoft Intune | Device and app management, where licensed and configured |
| Threat protection and compliance | Microsoft Defender and Microsoft Purview | Security, classification, retention, and data protection capabilities |

## A simple decision model

Ask these questions before creating a workspace or sharing a file:

1. **Who owns the work?** One person suggests OneDrive; a continuing team suggests SharePoint or a Teams-connected site.
2. **Who needs access?** Use the smallest useful group. Avoid making a file public just because it is convenient.
3. **How long should it exist?** Temporary projects need an owner, review date, and an exit plan.
4. **How sensitive is it?** Apply the organization's classification and sharing rules before external collaboration.
5. **How will it be recovered or audited?** Confirm retention, version history, recycle bin behavior, and audit requirements with an administrator.

## Common misconceptions

- Teams is not a separate file system. Team channel files are stored in SharePoint; chat files are stored in the sender's OneDrive and shared with the chat participants.
- OneDrive is not a replacement for a team site. It is designed around an individual owner, even when files are shared.
- A sharing link is a permission decision. The link type, recipient scope, edit rights, and expiration all affect the risk.
- A Microsoft 365 plan name is not enough to prove that a capability is available. Confirm the current license, tenant configuration, and applicable limits.

## Review questions

1. Where would you store a draft that only you own?
2. Where would you store a department procedure that must remain after one employee leaves?
3. Which service would you inspect when a sign-in must require MFA only from an unmanaged device?
4. Why is a Teams channel usually a better home for team documents than one employee's OneDrive?

## Sources

- [Microsoft 365 for enterprise overview](https://learn.microsoft.com/en-us/microsoft-365/enterprise/microsoft-365-overview?view=o365-worldwide)
- [Microsoft Entra Conditional Access overview](https://learn.microsoft.com/en-us/entra/identity/conditional-access/overview)
- [Microsoft Teams and SharePoint collaboration guidance](https://learn.microsoft.com/en-us/microsoft-365/solutions/setup-secure-collaboration-with-teams)