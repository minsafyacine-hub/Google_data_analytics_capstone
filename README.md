# Cyclistic Bike-Share Analysis Case Study
### *Google Data Analytics Capstone Project*

---

## 1. Introduction & Methodology
This case study is the culmination of the **Google Data Analytics Professional Certificate**. To solve this business challenge, I followed the official 6-step data analysis process: **Ask, Prepare, Process, Analyze, Share, and Act**.

### Context & Business Task
Cyclistic, a prominent bike-share program in Chicago, wants to maximize its long-term growth by converting **casual riders** (single-ride and full-day pass users) into **annual members**. As a Data Analyst, my objective is to answer the core question: **How do annual members and casual riders use Cyclistic bikes differently?**

---

## 2. The 6-Step Data Analysis Framework

###  Step 1: Ask
*   **Goal:** Identify the behavioral differences between the two user types to guide marketing strategies.
*   **Initial Hypothesis:** Annual members use Cyclistic for daily commuting (structured, routine trips), while casual riders use it for leisure, tourism, and weekend recreation (flexible, longer trips).

###  Step 2: Prepare
*   **Data Sources Used:** 
    *   Raw compressed dataset: `202605-divvy-tripdata.zip`
    *   Cleaned SQL Query export: `bquxjob_3b1beb7a_19ed1691482.csv`
*   **Tool Used:** **Microsoft Excel** was utilized for initial data exploration, inspecting column types, and creating calculated fields such as `ride_length` (trip duration) and `day_of_week` to prepare the data for deep analysis.

###  Step 3: Process & Analyze (SQL / BigQuery)
Due to the massive scale of the dataset, I imported the data into **BigQuery (SQL)** to perform advanced queries, data aggregation, and statistical filtering. Below is the step-by-step breakdown of the 6 core queries executed, along with their objectives and takeaways.

---

## 3. Deep Dive: The 6 Intermediate Queries & Visualizations

Before assembling the final dashboard, I isolated 6 specific metrics to validate my hypotheses. Here is the documentation for each visualization:

###  Visualization 1: Percentages of Casual Riders and Members
*   **Objective:** Establish the baseline volume and baseline market share for both user categories.
*   **What the Data Shows:** A clear breakdown showing that members represent **62.51%** of the user base, while casual riders make up **37.49%**.
*   **Key Takeaway:** Members generate the majority of total trips, but casual riders represent more than a third of the market, proving they are a massive pool of potential subscribers.
*   ![image alt](https://github.com/minsafyacine-hub/Google_data_analytics_capstone/blob/58a124fe3cbce76ce9ffd5d749aa387cec1b55f8/Capture%20d%E2%80%99%C3%A9cran%202026-06-21%20152156.png)

###  Visualization 2: Trips by Bike and User Type
*   **Objective:** Determine if the type of bicycle chosen differs based on who is riding.
*   **What the Data Shows:** Both members and casuals show a massive preference for `electric_bike` over `classic_bike`.
*   **Key Takeaway:** Electric bikes are the primary driver of engagement for both groups. Marketing assets should heavily feature electric bikes to attract conversions.
*   ![image_alt](https://github.com/minsafyacine-hub/Google_data_analytics_capstone/blob/58a124fe3cbce76ce9ffd5d749aa387cec1b55f8/Capture%20d%E2%80%99%C3%A9cran%202026-06-21%20152417.png)

###  Visualization 3: Average Riding Duration per Type (Descriptive Statistics)
*   **Objective:** Benchmark the fundamental ride behaviors using statistical aggregation.

#### Descriptive Statistics Matrix (SQL Query 3 Result):

| member_casual | total_trips | moyenne_minutes | mediane_minutes | standart_deviation_minutes | variance_minutes | min_minutes | max_minutes |
| :--- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| **member** | 402163 | 12.37 | 8.87 | 19.77 | 390.71 | 0.52 | 1439.47 |
| **casual** | 238924 | 19.56 | 11.62 | 38.65 | 1494.16 | 0.52 | 1438.68 |

*   **Key Takeaway:** The behavior gap is undeniable. Casual riders keep the bikes **twice as long** on average (~20.5 mins) compared to members (~12.2 mins), heavily supporting the leisure vs. utility hypothesis.
*   ![image alt](https://github.com/minsafyacine-hub/Google_data_analytics_capstone/blob/58a124fe3cbce76ce9ffd5d749aa387cec1b55f8/Capture%20d%E2%80%99%C3%A9cran%202026-06-21%20152507.png)

###  Visualization 4: Hourly Bike Trips Context
*   **Objective:** Analyze traffic fluctuations hour-by-hour during a 24-hour cycle.
*   **What the Data Shows:** Members show two sharp peaks at **8:00 AM** and **5:00 PM** (standard corporate commute hours). Casual riders show a smooth, steady curve that rises throughout the afternoon, peaking around 5:00 PM without any morning spike.
*   **Key Takeaway:** Members use the service as a functional transit tool for work, while casuals ride progressively as the day warms up or during afternoon free time.
*   ![image alt](https://github.com/minsafyacine-hub/Google_data_analytics_capstone/blob/58a124fe3cbce76ce9ffd5d749aa387cec1b55f8/Capture%20d%E2%80%99%C3%A9cran%202026-06-21%20152538.png)

###  Visualization 5: Trends in Bike Trips by Day of the Week
*   **Objective:** Observe how ride volume shifts between weekdays and weekends.
*   **What the Data Shows:** Member trips stay consistently high from Monday to Friday and drop on weekends. Casual trips do the exact opposite, spiking dramatically on **Saturday and Sunday**.
*   **Key Takeaway:** Weekdays belong to commuters (members), while weekends belong to recreational riders (casuals).
*   ![image alt](https://github.com/minsafyacine-hub/Google_data_analytics_capstone/blob/58a124fe3cbce76ce9ffd5d749aa387cec1b55f8/Capture%20d%E2%80%99%C3%A9cran%202026-06-21%20152606.png)

###  Visualization 6: Top Stations Map
*   **Objective:** Map out the spatial concentration of the top 50 most popular starting stations in Chicago.
*   **What the Data Shows:** A dense, tight cluster of high-traffic stations positioned directly along the Lake Michigan shoreline, tourist hubs, and waterfront parks.
*   **Key Takeaway:** Casual riders are not evenly distributed across Chicago; they are highly localized around leisure areas and scenic routes.
*   ![image alt](https://github.com/minsafyacine-hub/Google_data_analytics_capstone/blob/58a124fe3cbce76ce9ffd5d749aa387cec1b55f8/Capture%20d%E2%80%99%C3%A9cran%202026-06-21%20152635.png)

---

##  Step 4 & 5: Share (The Unified Tableau Dashboard)

To present a cohesive narrative to executive stakeholders, I consolidated these individual findings into a streamlined, high-impact dashboard.

### Interactive Dashboard
 **[View the Interactive Tableau Dashboard Here](https://public.tableau.com/app/profile/yacine.minsaf/viz/google_data_analytics_capstone_17817096046960/Dashboard)**

![image alt](https://github.com/minsafyacine-hub/Google_data_analytics_capstone/blob/58a124fe3cbce76ce9ffd5d749aa387cec1b55f8/Capture%20d%E2%80%99%C3%A9cran%202026-06-21%20152840.png)

### Design & UI Architecture Choices
*   **Color Palette Consistency:** Borrowing directly from Cyclistic's visual identity, I used the exact corporate teal (`#3B8E9B`) to represent the primary data structure, paired with a high-contrast orange to clearly separate the user categories.
*   **Clean Descriptive Legends:** To maintain a professional corporate style, every sheet was given a concise, non-numerical English descriptive subtitle to tell the user exactly what is being measured:
    *   *Proportion of total rides by user category.*
    *   *Breakdown of bike selection per user type.*
    *   *Comparison of length of rides by user type.*
    *   *Number of rides throughout the day.*
    *   *Distribution of rides across weekdays and weekends.*
    *   *Map location of the most active start stations.*
*   **Whitespace & Grid Alignment:** Swapped floating elements for an aligned grid structure to ensure immediate scannability for stakeholders.

---

##  Step 6: Act (Strategic Recommendations & Conclusion)

Based on the insights shared in the dashboard, here are three targeted recommendations for the Cyclistic marketing team to trigger casual-to-member conversions:

1.  **Introduce a "Weekend Leisure" Membership:** Since casual riders dominate weekend traffic, design a seasonal or weekend-only subscription pass that appeals to recreational riders who do not need a daily commuter membership.
2.  **Geolocated Physical & Digital Campaigns:** Deploy high-visibility marketing campaigns (QR code discounts on docks, localized mobile ads) exclusively around the top waterfront stations identified on the map, focusing efforts where casual density is highest during weekend afternoons.
3.  **Value-Driven Cost Framing:** Use marketing messaging to show casual riders the financial benefit of switching. Since their average ride time is twice as long as members, show them how much money they would save per month by converting from single-use fees to an annual membership.

### Conclusion
By shifting the corporate strategy from broad city-wide advertising to location-specific, weekend-centric campaigns, Cyclistic can efficiently convert high-value casual riders into loyal subscribers, driving sustainable subscription revenue for years to come.


