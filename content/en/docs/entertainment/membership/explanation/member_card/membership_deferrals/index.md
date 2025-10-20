For any **Membership** that is sold as an **Item** and needs to be posted on a deferral basis, a **Default Deferral Template** must be specified on the Item card.
The **Deferral Template** defines how deferral amounts are distributed across accounting periods and determines the posting date for each transaction segment.
The key difference between regular items and memberships is that memberships have a **validity period** (from Valid From Date to Valid Until Date), which directly influences the deferral posting schedule. In contrast, regular items follow the Deferral Template strictly, without regard to any validity period.
### Deferral Posting Logic
When a new **Membership** is created and posted, the deferral posting period is determined based on the **membership’s activation date** (Valid From Date) and the **number of periods** defined in the selected Deferral Template.<br>
After a **POS Entry** document is posted, a corresponding Deferral Schedule can be viewed. <br>
This schedule clearly shows how the sale is distributed across accounting periods.This schedule clearly shows how the sale is distributed across accounting periods.
### POS Deferral Posting vs. Standard MS Deferral Posting
The key distinction between **Standard Microsoft Deferral Posting** and **POS Deferral Posting** is in how the deferral amounts are calculated.
In the POS environment, the **Deferral Schedule** is generated automatically during posting, provided that a Default Deferral Template is defined. <br>
The POS posting algorithm distinguishes between the following membership transaction types:
 * New
 * Upgrade
 * Regret
 * Cancel
No additional user setup is required to post any of these transaction types – however, the posting logic differs for each case:
### New Membership
The deferral schedule is created based on the **membership’s Valid From Date** and follows the periods defined in the Default Deferral Template.
### Membership Regret
The deferral schedule for a **Regret** transaction mirrors the schedule of the original Membership Entry that the regret refers to.
### Membership Upgrade
The deferral schedule for an **Upgrade** is distributed between the upgrade date (new Valid From Date) and the original Valid Until Date (the end date before the upgrade).
### Membership Cancel
The deferral schedule for a **Cancellation** is distributed between the new Valid Until Date (the date when the membership becomes inactive after cancellation) and the original Valid Until Date (the end date before cancellation).
### Compressed vs. Uncompressed Deferral Posting  
POS Posting allows you to control whether transactions are compressed or uncompressed during posting.
This is configured in the **POS Posting Profile card** under the field **G/L Posting Compression.** <br>
Different compression types can be selected depending on how you want transactions to appear in the General Ledger either as **detailed** (uncompressed) or **summarized** (compressed) entries.