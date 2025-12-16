# Customer Analysis – Business Insights (Analysis 02)

## Objective
To analyze customer purchase behavior, identify high-value customers, and understand customer engagement levels to support targeted marketing and retention strategies.

---

## Data Sources
- customers  
- orders  
- order_items  

---

## Metrics Defined
- **Total Spend per Customer**:  
  SUM(quantity × list_price × (1 − discount))
- **Total Orders per Customer**:  
  COUNT(DISTINCT order_id)

---

## 1. Top Customers by Total Spend

### Purpose
Identify customers who contribute the most to overall revenue.

### Key Observations
- A small subset of customers accounts for a disproportionately large share of total revenue.
- High-spending customers often place multiple orders with higher average order value.
- Revenue contribution varies significantly across the customer base.

### Business Insight
Revenue is **concentrated among a limited number of high-value customers**, indicating strong potential for loyalty-based strategies.

### Business Implication
- High-value customers should be prioritized for retention.
- Personalized offers, loyalty rewards, and premium services can increase lifetime value.
- Losing a small number of top customers could significantly impact revenue.

---

## 2. Customers with No Orders

### Purpose
Identify registered customers who have not yet converted into buyers.

### Key Observations
- Some customers exist in the system without any associated orders.
- These customers represent unrealized revenue potential.

### Business Insight
Non-ordering customers indicate **drop-off points in the customer journey**, such as onboarding issues, pricing sensitivity, or lack of engagement.

### Business Implication
- Target these customers with onboarding campaigns and first-purchase incentives.
- Improve communication through email or promotional offers.
- Analyze barriers preventing first-time purchases.

---

## 3. High-Value Customers (≥3 Orders and > $25,000 Spend)

### Purpose
Identify loyal and high-impact customers based on both frequency and monetary value.

### Key Observations
- Customers meeting both order frequency and spending thresholds form a very small but powerful segment.
- These customers demonstrate consistent engagement and trust in the brand.

### Business Insight
This segment represents **core loyal customers** with high lifetime value.

### Business Implication
- Introduce VIP programs or exclusive benefits.
- Offer early access to new products or premium services.
- Monitor satisfaction closely to reduce churn risk.

---

## Customer Segmentation Summary

Customers can be broadly segmented into:

- **High-Value Loyal Customers**  
  Frequent buyers with high total spend.

- **Regular Customers**  
  Moderate purchase frequency and spend.

- **Inactive / Non-Purchasing Customers**  
  Registered users with no completed transactions.

---

## Overall Conclusions

- Customer revenue contribution is highly skewed.
- Retention of high-value customers is more cost-effective than acquiring new ones.
- There is significant opportunity to activate non-purchasing customers through targeted strategies.

---
