# 🌱 AgriInsight – Next-Gen Agritech App  

AgriInsight is a **Flutter-based frontend solution** designed for the agriculture sector.  
It empowers farmers and stakeholders with **weather insights, crop monitoring, and farm management tools**, presented through a clean and intuitive UI.  

This project is part of the **Flutter Development – F1 Assessment**.  

---

## 🚀 Features  

- 📊 **Dashboard UI** – Centralized place to monitor weather and crop data  
- 🌦 **Weather Insights** – Fetches live temperature data from API (no city input needed)  
- 🌱 **Crop Monitoring** – Displays crop-related insights with state management (Provider)  
- 📱 **Responsive UI** – Works smoothly on mobile and tablet  
- 🎨 **Modern UI/UX** – Clean design, rounded cards, and smooth layouts  

---

## 📐 System Architecture  

```mermaid
flowchart TD
    User[👨‍🌾 User] -->|Interacts with| App[📱 AgriInsight Flutter App]
    App -->|Fetches Weather Data (Default Location)| API[(🌦 OpenWeather API)]
    App -->|State Management| Provider[(🗂 CropProvider)]
    App --> UI[🎨 Dashboard UI]
