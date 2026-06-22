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
The primary goal of this analysis is to identify the distinct behavioral differences between annual members and casual riders in order to guide future targeted marketing strategies. Initially, the project was built on the hypothesis that annual members predominantly utilize Cyclistic for their daily commuting—resulting in structured, routine trips—whereas casual riders turn to the service for leisure, tourism, and weekend recreation, which typically translates into more flexible and longer trips.

###  Step 2: Prepare
The analysis was conducted using two main data sources: the raw compressed dataset containing the historical records (202605-divvy-tripdata.zip) and a cleaned SQL query export (bquxjob_3b1beb7a_19ed1691482.csv). Microsoft Excel was utilized as the primary tool for initial data exploration, which involved inspecting column types and creating calculated fields such as ride_length to determine trip duration and day_of_week to isolate daily trends, effectively preparing the data for subsequent deep analysis.

###  Step 3: Process & Analyze (SQL / BigQuery)
Due to the massive scale of the dataset, I imported the data into **BigQuery (SQL)** to perform advanced queries, data aggregation, and statistical filtering. Below is the step-by-step breakdown of the 6 core queries executed, along with their objectives and takeaways.

---

## 3. Deep Dive: The 6 Intermediate Queries & Visualizations

Before assembling the final dashboard, I isolated 6 specific metrics to validate my hypotheses. Here is the documentation for each visualization:

###  Visualization 1: Percentages of Casual Riders and Members
This initial phase aimed to establish the baseline volume and baseline market share for both user categories. The extracted data shows a clear breakdown revealing that annual members represent **62.51%** of the total user base, while casual riders make up **37.49%**. The key takeaway from this metric is that while members generate the clear majority of total trips, casual riders represent more than a third of the market, proving they constitute a massive pool of potential subscribers for future conversion campaigns.
*   ![image alt](https://github.com/minsafyacine-hub/Google_data_analytics_capstone/blob/58a124fe3cbce76ce9ffd5d749aa387cec1b55f8/Capture%20d%E2%80%99%C3%A9cran%202026-06-21%20152156.png)

###  Visualization 2: Trips by Bike and User Type
The objective of this query was to determine if the specific type of bicycle chosen differs based on the rider's category. The data shows a massive preference for electric bikes over classic bikes across both user groups, with members recording ***279 029*** electric bike trips compared to 129,570 classic bike trips, and casual riders similarly logging ***178 713*** electric bike trips versus ***66 392*** classic bike trips. The key takeaway here is that electric bikes act as the primary driver of engagement for all customers, suggesting that future marketing assets should heavily feature electric models to successfully attract and convert casual riders.
*   ![image_alt](https://github.com/minsafyacine-hub/Google_data_analytics_capstone/blob/58a124fe3cbce76ce9ffd5d749aa387cec1b55f8/Capture%20d%E2%80%99%C3%A9cran%202026-06-21%20152417.png)

###  Visualization 3: Average Riding Duration per Type (Descriptive Statistics)
The objective of this query was to benchmark the fundamental ride behaviors of both user groups using a comprehensive statistical aggregation.

#### Descriptive Statistics Matrix (SQL Query 3 Result):

| member_casual | total_trips | moyenne_minutes | mediane_minutes | standart_deviation_minutes | variance_minutes | min_minutes | max_minutes |
| :--- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| **member** | 402163 | 12.37 | 8.87 | 19.77 | 390.71 | 0.52 | 1439.47 |
| **casual** | 238924 | 19.56 | 11.62 | 38.65 | 1494.16 | 0.52 | 1438.68 |

While the final visual graph highlights the clear gap in average trip length—with casual riders maintaining an average ride duration of 19.56 minutes compared to the shorter 12.37 minutes for members—the deeper descriptive statistics reveal an even wider behavioral divide. 

The median trip duration further reinforces this pattern, showing that a typical casual ride stands at 11.62 minutes, whereas a member's median ride is tightly controlled at 8.87 minutes. Interestingly, both user types share an identical minimum trip duration of 0.52 minutes and a nearly identical maximum cap around 24 hours (1,439.47 minutes for members and 1,438.68 minutes for casuals). However, the spread of the data tells the most compelling story: casual riders display a standard deviation of 38.65 minutes and a massive variance of 1,494.16, indicating highly unpredictable, flexible, and leisure-oriented journeys. In contrast, annual members present a much lower standard deviation of 19.77 minutes and a variance of 390.71, demonstrating highly consistent, routine, and utility-driven commuting habits. 

The key takeaway from this deep statistical matrix is that the behavioral gap is undeniable; casual riders naturally log much longer and more varied trips, strongly supporting the hypothesis that they use the fleet for recreational purposes rather than strict day-to-day transit.
*   ![image alt](https://github.com/minsafyacine-hub/Google_data_analytics_capstone/blob/58a124fe3cbce76ce9ffd5d749aa387cec1b55f8/Capture%20d%E2%80%99%C3%A9cran%202026-06-21%20152507.png)

###  Visualization 4: Hourly Bike Trips Context
The objective of this analysis was to track and evaluate traffic fluctuations hour-by-hour over a complete 24-hour operational cycle. The data displays two highly contrasting behavioral trends between the user groups: annual members exhibit two sharp traffic spikes peaking precisely at 8:00 AM and 5:00 PM, which perfectly aligns with standard corporate commuting hours. Conversely, casual riders generate a smooth, steady upward curve that gradually increases throughout the afternoon, peaking around 5:00 PM without showing any evidence of a morning rush hour spike. The key takeaway from this temporal distribution is that members heavily rely on the service as a functional, time-sensitive transit tool for work, whereas casual customers engage with the fleet progressively as the day warms up or during their afternoon leisure time.
*   ![image alt](https://github.com/minsafyacine-hub/Google_data_analytics_capstone/blob/58a124fe3cbce76ce9ffd5d749aa387cec1b55f8/Capture%20d%E2%80%99%C3%A9cran%202026-06-21%20152538.png)

###  Visualization 5: Trends in Bike Trips by Day of the Week
The objective of this query was to observe how ride volume shifts across different days of the week, specifically contrasting weekdays against weekends. The analysis reveals an inverse relationship between the two segments: annual member trips remain consistently high from Monday to Friday before dropping off significantly over the weekend. In stark contrast, casual trips follow the exact opposite trajectory, spiking dramatically on Saturday and Sunday. The key takeaway from this weekly trend is that weekdays clearly belong to professional commuters (members), while weekends are dominated by recreational and leisure riders (casuals).
*   ![image alt](https://github.com/minsafyacine-hub/Google_data_analytics_capstone/blob/58a124fe3cbce76ce9ffd5d749aa387cec1b55f8/Capture%20d%E2%80%99%C3%A9cran%202026-06-21%20152606.png)

###  Visualization 6: Top Stations Map
The objective of this final query was to map out the spatial concentration of the top 50 most popular starting stations across Chicago. The geographic data reveals a dense, tight cluster of high-traffic stations positioned directly along the Lake Michigan shoreline, major tourist hubs, and waterfront parks. The key takeaway from this spatial analysis is that casual riders are not evenly distributed across the Chicago metropolitan area; instead, they are highly localized around specific leisure areas, entertainment hubs, and scenic routes, pinpointing the exact physical locations where future conversion campaigns will be most effective.
*   ![image alt](https://github.com/minsafyacine-hub/Google_data_analytics_capstone/blob/58a124fe3cbce76ce9ffd5d749aa387cec1b55f8/Capture%20d%E2%80%99%C3%A9cran%202026-06-21%20152635.png)

---

##  Step 4 & 5: Share (The Unified Tableau Dashboard)

To present a cohesive narrative to executive stakeholders, I consolidated these individual findings into a streamlined, high-impact dashboard.

### Interactive Dashboard
 **[View the Interactive Tableau Dashboard Here](https://public.tableau.com/app/profile/yacine.minsaf/viz/google_data_analytics_capstone_17817096046960/Dashboard)**

![image alt](https://github.com/minsafyacine-hub/Google_data_analytics_capstone/blob/58a124fe3cbce76ce9ffd5d749aa387cec1b55f8/Capture%20d%E2%80%99%C3%A9cran%202026-06-21%20152840.png)

---

##  Step 6: Act (Strategic Recommendations & Conclusion)

Based on the comprehensive insights shared across the analytics dashboard, three targeted strategic recommendations have been developed for the Cyclistic marketing team to effectively trigger casual-to-member conversions. 

First, the company should introduce a tailored "Weekend Leisure" Membership. Since the data proves that casual riders heavily dominate weekend traffic, designing a seasonal or weekend-only subscription pass would directly appeal to these recreational riders who currently avoid signing up because they have no need for a traditional daily commuter membership. 

Second, the marketing team should deploy localized, geolocated physical and digital campaigns. Instead of spreading advertising resources city-wide, high-visibility marketing assets—such as promotional QR codes placed directly on physical docks and localized mobile push notifications—should be concentrated exclusively around the top waterfront stations identified on the map. This ensures that promotional efforts are focused precisely where casual rider density peaks during weekend afternoons. 

Finally, Cyclistic should leverage value-driven cost framing in its messaging. Marketing campaigns can be used to explicitly demonstrate the long-term financial benefits of switching to a subscription. Because casual riders log an average ride time that is twice as long as members, showing them a clear data-driven breakdown of how much money they would save per month by converting from single-use fees to an annual membership can remove price friction and drive higher conversion rates.

### Conclusion
By shifting the corporate strategy from broad city-wide advertising to location-specific, weekend-centric campaigns, Cyclistic can efficiently convert high-value casual riders into loyal subscribers, driving sustainable subscription revenue for years to come.


