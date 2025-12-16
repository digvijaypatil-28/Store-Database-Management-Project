# Sales Analysis – Business Insights (Analysis 01)

## Objective
To assess overall sales performance, identify key revenue drivers, and understand how products and stores contribute to business growth.

---

## Data Sources
- orders  
- order_items  
- products  
- stores  

---

## Metrics Defined
- **Total Orders**: COUNT(orders)
- **Total Items Sold**: SUM(order_items.quantity)
- **Total Revenue**: SUM(quantity × list_price × (1 − discount))
- **Product Revenue**: Aggregated revenue at product level
- **Store Revenue**: Aggregated revenue at store level

---

## 1. Overall Sales Performance (Baseline Metrics)

### Purpose
Establish a high-level understanding of business scale and validate data consistency before deeper analysis.

### Key Observations
- The business has processed a large number of orders, with multiple items per order.
- Total revenue exceeds 7 million, indicating meaningful transactional volume.
- Average order value suggests a mix of premium and mid-range products.

### Business Insight
The dataset represents an active retail environment with sufficient transaction volume to support advanced analytical insights.

### Business Implication
Management can confidently rely on this data for strategic decision-making related to inventory, staffing, and sales optimization.

---

## 2. Top-Selling Products by Quantity Sold

### Purpose
Identify products that drive customer footfall and sales volume.

### Key Observations
- Several products sell in high quantities but generate relatively lower revenue.
- Entry-level and comfort bicycles dominate the volume-based rankings.
- High unit sales do not always translate into high revenue.

### Business Insight
These products act as **volume drivers**, attracting customers and maintaining consistent store traffic.

### Business Implication
- Ensure steady stock availability to prevent lost sales.
- Avoid excessive overstocking due to lower margins.
- Use these products strategically for bundling and upselling opportunities.

---

## 3. Top Products by Revenue Generated

### Purpose
Identify products that contribute most significantly to overall revenue.

### Key Observations
- Premium bicycles dominate revenue rankings despite lower unit sales.
- A small subset of products contributes disproportionately to total revenue.
- Revenue concentration is clearly visible.

### Business Insight
Revenue is driven more by **product pricing and positioning** than by sales volume alone.

### Business Implication
- These products must be protected from stock-outs.
- Aggressive discounting should be avoided.
- Sales staff should be trained to clearly communicate premium product value.

---

## 4. Product Segmentation: Volume vs Revenue

Products naturally fall into three strategic categories based on sales behavior.

###  High Volume + High Revenue
Examples:
- Trek Slash 8 27.5 – 2016  
- Trek Conduit+ – 2016  

**Insight:**  
These are core business drivers contributing to both scale and profitability.

**Actions:**
- Prioritize inventory availability
- Limit discounting
- Focus marketing efforts on these products

---

###  High Volume + Low Revenue
Examples:
- Electra Cruiser series
- Entry-level and children bicycles

**Insight:**  
These products support customer acquisition and store traffic but offer lower margins.

**Actions:**
- Optimize inventory turnover
- Use as entry-point products
- Bundle with accessories to increase order value

---

###  Low Volume + High Revenue
Examples:
- Surly Straggler – 2016

**Insight:**  
Premium niche products with strong revenue impact per unit.

**Actions:**
- Targeted marketing campaigns
- Maintain premium pricing
- Train staff for consultative selling

---

## 5. Revenue Distribution by Store

### Purpose
Evaluate store-level performance and revenue contribution.

### Key Observations
- Revenue is unevenly distributed across stores.
- One store contributes a majority share of total revenue.
- Other stores show lower volume but comparable revenue per order.

### Business Insight
Store performance depends heavily on **staff effectiveness**, **product mix**, and **local demand**.

### Business Implication
- Protect and replicate high-performing store strategies.
- Identify improvement opportunities for underperforming locations.
- Apply store-specific sales and inventory strategies.

---

## Overall Conclusions

- Sales volume and revenue are driven by different product segments.
- A limited number of products and stores contribute most of the revenue.
- Inventory planning, pricing strategy, and staff training must be data-driven and differentiated.

---
