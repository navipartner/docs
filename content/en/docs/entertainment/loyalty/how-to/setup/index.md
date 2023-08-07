---
title: "Set up the loyalty program"
description: "As the loyalty setup is created on top of the Membership module, it must be activated for the special member community. Refer to this guide to learn more."
lead: ""
date: 2023-07-13T10:28:00+02:00
lastmod: 2023-07-13T10:28:00+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "setup-6405c3483fcac7e6fa988f4c2c060d08"
weight: 271
toc: true
type: docs
---

The loyalty function is created on top of the Membership module, so the initial steps for creating a new loyalty program would be: 

1. Creating a member community,
2. Creating a Membership setup,
3. Creating a Membership Sale setup.

While the creation procedure of these setups will be provided in another document, this article focuses on the setups which are specific to the loyalty program. 

## Loyalty setup activation

As the loyalty setup is created on top of the Membership module, it must be activated for the special member community.

1. To activate the loyalty setup, check the **Activate Loyalty Program** field on the **Member Community** page.        
   When this checkbox is ticked, all members that are in this member community will benefit from the loyalty program.
2. In the **CRM & Loyalty** tab of the **Membership Setup Card** assign the **Loyalty Code** for members of this membership to benefit from this loyalty program.       
   It is important to assign the appropriate loyalty code in every membership, since different memberships can have different benefits, and different conditions for accumulation of points.
3. Tick the **Assign Loyalty Points on Sale** checkbox to be able to assign points on sale of membership (when creating new members) in **Membership Sale Setup**.     
   In this way the customer can be awarded points immediately because they decided to be loyal to a company.

## Additional loyalty settings

A **Loyalty Code** is a type of loyalty program which has its own setups. Loyalty programs can be different in many ways based on the associated setups. They can have different benefits for customers, different collecting periods, different expiration periods, as well as different conditions for accumulation of points.

1. For members to be able to use a loyalty program, on their **Membership Setup Card** they should be assigned a **Loyalty Code** which is created on the **Loyalty Setup** page.
2. Choose between two options for the collection period: 

   - **As you go** - a user will become eligible for point collection as soon as they become a member.
   - **Fixed** - a member will be able to collect points in a fixed period which is defined by the fields **Fixed Period Start** and **Collecting Period Length**.

3. If there is need to set up a loyalty program with points that have a defined expiration period, tick the **Expire Uncollected Points** checkbox and specify the period after which points are going to expire in the **Expire Uncollected After** field.

4. Select conditions for accumulating points in the **Point Base** field. You can choose between the following options:

      - **Amount** - if selected, the ratio between the amount spent and points awarded will be taken from the **Loyalty Setup** page and the **Amount Factor** field. This setup will be used for all items the member has purchased. 

      - **Item Point Setup** - if selected, the setup from the **Loyalty Item Points Setup** page will be taken instead of the setup from the **Loyalty Setup** page. In the **Item Point Setup** page you can define how many points or what value the customer will get for buying a special item, or an item from an item group set up in this page. Additionally, some items can be excluded from the loyalty program if specified here, and assigned the **Exclude** option in the **Constraint** field. 

         **Example**: if a customer buys the item 73036 (from the provided image) which belongs to the item group 402 they won't receive any points because it is excluded. However, if they buy any other item from the group 402, they will be awarded 200 points.

      - **Amount and Item Points Setup** - if selected, for items setup in the **Item Points Setup** page, the setup from that page will be used, and for the rest the setup from **Loyalty Setup** page will be used.

5. Provide the **Amount Factor**, which determines how many pointes will be awarded per 1 EUR spent.

6. Define whether the points will be calculated on the amount with or without VAT in the **Amount Base** field.

7. You can disable usage of the loyalty program on sales which have some discounts applied by unticking the **Points On Discounted Sales** field.

## Loyalty points setup

Loyalty programs can have different benefits if you set up **Points to Amount Setup** in the **Loyalty Points Setup** administrative section.

All benefits which member gets being loyal to the company are summed up in coupon which is created from points customer has in their account. 

1. Set the **Point Rate** which determines how much money the customer will receive per 1 point accumulated. 
2. In **Points Threshold** you can set the amount of points the customer must earn so that they can benefit from the loyalty program.     
   In the example illustrated by the screenshot above, the customer needs to have 100 points to be able to get 1EUR for every point accumulated.

    {{< alert icon="📝" text="Instead of money, customers can get a discount % when they accumulate enough points."/>}}

3. In the **Value Assignment** field you need to set **Coupon Setup**, so that after the customer accumulates the necessary points (points set up in the **Points Threshold** field) they will receive benefits associated with the coupon assigned.       
   In the example illustrated by the screenshot below, after the customer gets 500 points, they will be able to use the coupon with the “20%OFF” name, and enjoy the benefits that this coupon offers. 

![Loyalty_points_setup_example](Loyalty%20points%20setup%20example.png)

   As **Coupon Setup** is selected, the benefits from the loyalty program depend on the setup of the coupon assigned to this program. So, in our example, the customer will have 20% discount, and the maximum discount amount can be 50 EUR.

![Coupon_setup](Coupon.png)
