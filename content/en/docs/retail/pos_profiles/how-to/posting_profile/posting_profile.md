---
title: "Set up POS Posting Profile"
description: "Each POS unit can have a different set of posting rules. The first thing is to set POS Posting Profile."
lead: ""
date: 2023-07-04T12:40:11+02:00
lastmod: 2023-07-04T12:40:11+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "posting_profile-f697d3c2bd6aac93b4fc55a5beaf0f58"
weight: 121
toc: true
type: docs
---

Each POS unit can have a different set of posting rules. The first thing is to set POS Posting Profile.

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Posting Profile**, and choose the related link.
2. Create **New**.
3. Add the **Code** in the indicated field.
4. Add a **Description**.
5. Make a selection between **Store** and **Customer** in the **Default POS Posting Setup** field.   
   Your choice determines whether rules will apply to the POS store or customers.
6. Set the value of the **Source Code** field to **Retail**.
7. Set the predefined posting group in the field **General Business Posting Group**. 
8. Set the predefined VAT posting group in the **VAT Business Posting Group** field.
9. (Optional) If the posting profile is set up for the US localization, populate the **Tax Area Code** and **Tax Liable** fields.
10. (Optional) If the posting to the General Ledger is done by posting the period compression, populate the **POS period Register No. Series** field.
11. (Optional) If a customer is assigned to a specific POS store, populate the **VAT Customer No.** field.
12. Define how the POS entries will be posted in **Posting Compression**.     

   - **Uncompressed** – Every POS entry line is posted as-is in the General Ledger. 
   - **Per POS Entry** – The lines are compressed per an account code within that entry.        
      *Example:* If there are 3 lines for sale with the same revenue account, the entry is compressed into one line in the General Ledger entry for that transaction. 
   - **Per POS Period** – All transactions within that POS period are compressed per the same General Ledger account.       
      *Example:* 100 sales lines are compressed as 1 line in the General Ledger.      
      

13. Specify the value of the **Journal Template Name**, which will be assigned to **General Journal Lines** in the POS Posting activity.
14. Use the **Max POS Posting Differences** field to define the maximum allowed difference caused by the difference between currencies.
15. Define the G/L account on which these differences will be posted in **Difference Account**.
16. Use the **POS Sales Rounding Account** field to define the G/L account in which all sales rounding amounts will be posted.
17. Define on which decimal spaces the rounding will be performed in the **POS Sales Amount Rounding** field.
18. Define how the rounding will be performed in **Rounding Type**.    
    The possible settings are **Nearest**, **Up** or **Down**.
19. Use the **Post POS Sale Documents with Job Queue** to allow the salesperson to continue with the work while the sale document posting is running in the background.

![POS_posting](POSPostingProfileCard.png)

## Next steps

### Add the POS Posting Profile to the POS Store

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Store List** and choose the related link.
2. Select the POS store to which you want to link the prepared POS Posting Profile.
3. Add the prepared POS Posting Profile to the **POS Posting Profile** field.


![pos pos](POS_POS_1.png)


<div style="position: relative; overflow: hidden; padding-top: 56.25%;"><iframe src="https://share.synthesia.io/embeds/videos/9a8b21c0-ab2a-4ca8-838d-720a38ff766c" loading="lazy" title="Synthesia video player - POS Academy: Configure POS Posting Setup" allow="encrypted-media; fullscreen;" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0; margin: 0; overflow:hidden;"></iframe></div>