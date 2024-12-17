---
title: "Set up the Ticket to Coupon feature"
description: ""
lead: ""
date: 2024-12-11T11:58:10+01:00
lastmod: 2024-12-11T11:58:10+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "ticket_to_coupon-43dcb6eee102ecec81f1139ed3846f24"
weight: 288
toc: true
type: docs
---

You can create a ticket, which can be purchased online. When you choose a ticket item on checkout and use the **Ticket to Coupon** action, the ticket is scanned, and the customer can purchase it. When they are next in situation that requires them to scan a coupon, they can scan the purchased ticket to achieve the needed result. 

The coupon is both created and archived on the spot automatically in the background. When this happens, the coupon is exported to Business Central and posted. 

{{< alert icon="📝" text="The document number needs to match the number from the coupon reservation request."/>}}

Tickets can also be used to purchase and renew memberships. 

The administrative section **Ticket Coupon Profile** has been created to accommodate this setup and the necessary configurations. You can use it to create or maintain the coupons per profile. In this table you connect one ticket with a coupon or multiple coupons.

1. Navigate to the **Ticket Coupon Profiles** administrative section.     
2. Define the coupon type you will use for this purpose, and make sure to include meaningful required admission code.     
   The coupon type will be used later connected to the specific coupon type. 
3. Mark at least one coupon aliases within the profile group as **Default**.      
   If this is done, the alias name will not need to be specifically provided when the coupon is requested.       

   {{< alert icon="📝" text="The coupon alias is the method that web stores use to attempt to acquire a coupon for a specific purpose."/>}}

4. Navigate to the **Ticket Types** administrative section, and create a new ticket type. 
5. Add the profile code of the ticket coupon profile created at the beginning of the procedure to the **Coupon Profile Code** column. 
6. Create a new button on the POS, and attach the **TM_TICKETMGMT_3** action to it. 
7. Configure the action's variables:     
   - Set the **CouponAliasCode** to the alias assigned to the ticket coupon profile you're using.
   - Set **Function (Enum)** to **Ticket to Coupon**. 
   - Add a caption that will be visible on the button when added to the POS.
   - Optionally add the second caption.

8. Open the POS to perform the sale. 
9. Select the item that needs to be purchased.       
   The item can also be a new membership or membership renewal. 
10. Press the button you've created in the previous steps.      
    A 100% discount is automatically applied to the item's price. 
11. Finalize the POS sale.     
    When the coupon is scanned and used, it will be automatically created and archived. You can see it when you use the **View Ticket Coupons** action in the **Ticket List**. The same coupon can also be found under **Archived Coupons**.