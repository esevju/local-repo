# Microsoft 365 Administration Foundations

Use this checklist to study the order and ownership of common Microsoft 365 administration decisions. It is a learning aid, not a production change procedure.

## Plan and inventory

- [ ] Define the organization, users, locations, data types, and regulatory requirements.
- [ ] Inventory current mail, files, devices, identities, and dependencies before migration.
- [ ] Select a license based on required capabilities, not only the product name.
- [ ] Record license assignment, renewal, and offboarding ownership.

## Identity and access

- [ ] Use separate administrator accounts for privileged work.
- [ ] Enable security defaults where they fit, or design and test Conditional Access policies.
- [ ] Require MFA for administrators and high-risk access paths.
- [ ] Test policies with report-only or pilot scope before broad enforcement where available.
- [ ] Define joiner, mover, and leaver processes for users, guests, and groups.

## Data and collaboration

- [ ] Decide when content belongs in OneDrive, SharePoint, or a Teams-connected site.
- [ ] Define internal and external sharing defaults.
- [ ] Prefer named recipients or authenticated guests for sensitive collaboration.
- [ ] Review anonymous links, link expiration, guest expiration, and domain restrictions.
- [ ] Document retention, versioning, recovery, audit, and data classification expectations.

## Devices and operations

- [ ] Identify which devices may access company data and whether they must be managed.
- [ ] Define minimum update, encryption, screen-lock, and endpoint protection requirements.
- [ ] Monitor sign-ins, sharing activity, malware alerts, and policy failures.
- [ ] Keep a change record and review administrative roles regularly.
- [ ] Test an incident response path, including account disablement and evidence preservation.

## Study exercise

Choose one small fictional organization and write a one-page design. Explain:

1. Which users and groups it needs.
2. Which authentication baseline protects them.
3. Where department files are stored and how external sharing works.
4. Which devices are managed.
5. Which capabilities depend on the selected license.
6. How an administrator proves that the controls are working.

## Sources

- [Microsoft 365 for business security best practices](https://learn.microsoft.com/en-us/microsoft-365/admin/security-and-compliance/m365b-security-best-practices?view=o365-worldwide)
- [Microsoft Entra multifactor authentication overview](https://learn.microsoft.com/en-us/entra/identity/authentication/concept-mfa-howitworks)
- [Microsoft Entra Conditional Access overview](https://learn.microsoft.com/en-us/entra/identity/conditional-access/overview)
- [Microsoft 365 for enterprise overview](https://learn.microsoft.com/en-us/microsoft-365/enterprise/microsoft-365-overview?view=o365-worldwide)