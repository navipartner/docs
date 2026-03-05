---
title: "NPR Default Retention Policies"
description: "NPR Default Retention Policies"
lead: ""
date: 2024-03-12T13:58:48+01:00
lastmod: 2024-03-12T13:58:48+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "ref-d138d8fb8ff209899bc1eceaa9a79ea6"
weight: 256
toc: true
type: docs
---


| Table | Table ID | Retention Period |
|------------------|----------|----------------|
| NPR Retention Policy Log Entry | 6151288 | 6 months |
| NPR Data Log Record | 6059898 | According to specification, 3 months if not specified |
| NPR EFT Receipt | 6014403 | 6 months |
| NPR EFT Transaction Log | 6184513 | 1 year |
| NPR EFT Transaction Request | 6184495 | 1 year |
| NPR Exchange Label | 6014498 | 5 years, 6 years if Irish Fiscalization enabled |
| NPR HL Webhook Request | 6059840 | 1 month if "Processing Status" = Processed |
| NPR M2 Record Change Log | 6059856 | 1 month |
| NPR MM Admis. Service Entry | 6060091 | 14 days |
| NPR Nc Import Entry | 6151504 | 1 month |
| NPR Nc Task | 6151502 | 1 month if "Processed" = false and "Process Error" = true<br>14 days if "Processed" = true |
| NPR NpCs Arch. Document | 6151202 | 1 year |
| NPR NpGp Export Log | 6151035 | 7 days if "Sent" = true |
| NPR NpGp POS Sales Entry | 6151167 | 5 years, 6 years if Irish Fiscalization enabled |
| NPR NPRE Kitchen Order | 6150677 | 3 months if "On Hold" = false and "Order Status" = Ready for Serving, In-Production, Released or Planned<br>14 days if "On Hold" = false and "Order Status" = Finished or Cancelled |
| NPR NPRE Waiter Pad | 6150660 | 3 months if "Closed" = false<br>14 days if "Closed" = true |
| NPR NPRE W.Pad Prnt LogEntry | 6150671 | 3 months if "Waiter Pad Line Exists" = false |
| NPR POS Entry | 6150621 | 5 years, 6 years if Irish Fiscalization enabled |
| NPR POS Balancing Line | 6150624 | 5 years, 6 years if Irish Fiscalization enabled |
| NPR POS Entry Output Log | 6150636 | 3 months |
| NPR POS Entry Payment Line | 6150623 | 5 years, 6 years if Irish Fiscalization enabled |
| NPR POS Entry Sales Line | 6150622 | 5 years, 6 years if Irish Fiscalization enabled |
| NPR POS Entry Tax Line | 6150629 | 5 years, 6 years if Irish Fiscalization enabled |
| NPR POS Layout Archive | 6059796 | 6 months |
| NPR POS Period Register | 6150620 | 5 years, 6 years if Irish Fiscalization enabled |
| NPR POS Posting Log | 6150635 | 7 days |
| NPR POS Saved Sale Entry | 6151002 | 3 months if "Contains EFT Approval" = false |
| NPR Replication Error Log | 6014584 | 1 month |
| NPR BTF EndPoint Error Log | 6014524 | 1 month |
| NPR Sales Price Maint. Log | 6059858 | 1 month if "Processed" = true |
| NPR Tax Free Voucher | 6014477 | 5 years, 6 years if Irish Fiscalization enabled |
| NPR Spfy App Request | 6151027 | 1 month |
| NPR Spfy Log | 6150993 | 1 month |
| NPR Spfy Webhook Notification | 6150883 | 3 months if "Status" = New or Error<br>1 month if "Status" = Processed or Cancelled |
