# Advanced Reporting & Time-Based Analysis – Business Insights (Analysis 05)

## Objective
To analyze sales performance over time, identify growth patterns, measure month-over-month changes, and apply advanced analytical techniques using window functions to support strategic planning.

---

## Data Sources
- orders  
- order_items  
- customers  

---

## Metrics Defined
- **Monthly Revenue**:  
  SUM(quantity × list_price × (1 − discount))
- **Previous Month Revenue**:  
  LAG(monthly_revenue)
- **Revenue Change**:  
  Current Month Revenue − Previous Month Revenue
- **Running Total of Sales**:  
  Cumulative revenue ordered by date
- **Order Sequence per Customer**:  
  ROW_NUMBER partitioned by customer

---

## 1. Monthly Sales Trend

### Purpose
Understand how revenue evolves over time and identify seasonality or growth trends.

### Key Observations
- Monthly revenue shows clear variation across different periods.
- Certain months consistently outperform others, indicating seasonality.
- Revenue trends reflect both demand patterns and promotional cycles.

### Business Insight
Sales performance is **time-dependent**, and revenue does not remain constant throughout the year.

### Business Implication
- Inventory planning should account for high-demand months.
- Marketing campaigns should align with seasonal peaks.
- Underperforming months present opportunities for promotions.

---

## 2. Month-over-Month Sales Comparison

### Purpose
Measure revenue growth or decline between consecutive months.

### Key Observations
- Revenue fluctuates month-to-month rather than following a steady trend.
- Some months show significant positive growth, while others decline.
- Changes are influenced by both sales volume and pricing effects.

### Business Insight
Month-over-month comparison provides a clearer view of **short-term business momentum** than absolute revenue alone.

### Business Implication
- Sudden revenue drops require immediate investigation.
- Positive growth periods should be analyzed and replicated.
- MoM analysis supports proactive decision-making instead of reactive reporting.

---

## 3. Running Total of Sales

### Purpose
Track cumulative revenue growth over time.

### Key Observations
- Revenue accumulation accelerates during high-performing periods.
- Growth is non-linear, reflecting real-world business behavior.
- The running total highlights the pace at which revenue targets are achieved.

### Business Insight
Cumulative revenue analysis helps assess **long-term performance trajectory** rather than isolated periods.

### Business Implication
- Supports forecasting and goal tracking.
- Helps management evaluate whether revenue targets are on track.
- Useful for investor and executive-level reporting.

---

## 4. Order Sequence per Customer

### Purpose
Understand customer ordering patterns and purchase frequency.

### Key Observations
- Customers exhibit varied purchasing behavior.
- Some customers place repeat orders consistently, while others are one-time buyers.
- Order sequencing reveals customer lifecycle stages.

### Business Insight
Customer value grows over time through **repeat purchases**, not single transactions.

### Business Implication
- Repeat customers should be targeted with loyalty programs.
- First-time buyers require engagement to encourage repeat purchases.
- Order sequence data supports customer lifecycle and churn analysis.

---

## Overall Advanced Reporting Conclusions

- Time-based analysis reveals patterns not visible in static reports.
- Revenue growth is influenced by seasonality, customer behavior, and operational decisions.
- Window functions provide deeper insights into trends, momentum, and customer engagement.

---

## Strategic Recommendations

- Incorporate monthly and MoM trends into regular performance reviews.
- Align inventory and staffing with seasonal demand patterns.
- Use running totals for forecasting and revenue target tracking.
- Leverage customer order sequencing to improve retention strategies.

---
