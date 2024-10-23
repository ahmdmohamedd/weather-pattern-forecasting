# Weather Pattern Forecasting using Time Series Analysis

This MATLAB project demonstrates time series forecasting of weather patterns using historical weather data from the Global Historical Climatology Network (GHCN). The dataset includes daily maximum and minimum temperatures as well as precipitation values, and the project employs a simple moving average technique to predict future temperature values based on historical data trends.

## Table of Contents
- [Project Overview](#project-overview)
- [Dataset Description](#dataset-description)
- [Forecasting Model](#forecasting-model)
- [Files Included](#files-included)
- [How to Use](#how-to-use)
- [Results](#results)
- [Future Improvements](#future-improvements)

## Project Overview
This project performs time series forecasting to predict future weather patterns based on historical data. It utilizes a dataset from the Global Historical Climatology Network (GHCN), which contains daily weather observations like temperature and precipitation for a specific location.

The focus is on forecasting daily maximum temperatures (`TMAX`) using a simple moving average model. The project also includes data preprocessing steps, visualization of weather patterns over time, and model evaluation using Mean Squared Error (MSE).

## Dataset Description
The dataset used in this project, `GHCND_sample_csv.csv`, contains daily weather observations from the GHCN. The key columns include:
- **DATE**: The date of the observation in `YYYYMMDD` format.
- **TMAX**: Daily maximum temperature (in tenths of degrees Celsius).
- **TMIN**: Daily minimum temperature (in tenths of degrees Celsius).
- **PRCP**: Daily precipitation (in tenths of millimeters).
- **STATION**: Station identifier where the data was collected.

Note: Missing precipitation values are represented as `9999` and are handled during preprocessing.

## Forecasting Model
The project uses a simple moving average (SMA) model for time series forecasting. This method smooths out short-term fluctuations and highlights longer-term trends in the time series data. The model predicts future maximum temperatures by averaging recent historical values.

### Model Evaluation
- **Mean Squared Error (MSE)** is used to evaluate the accuracy of the forecasted values compared to the actual observed values. MSE measures the average of the squares of the errors, providing an indication of the model's predictive performance.

## Files Included
- **`GHCND_sample_csv.csv`**: The dataset containing historical weather observations.
- **`time_series_forecasting.m`**: The MATLAB script that loads the dataset, preprocesses the data, applies the forecasting model, and visualizes the results.

## How to Use
1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/weather-pattern-forecasting.git
   ```
2. Open MATLAB and navigate to the project folder.
3. Run the `time_series_forecasting.m` script to perform time series analysis and visualization on the dataset.

### Prerequisites
- **MATLAB**: Ensure MATLAB is installed on your machine.
- The dataset file (`GHCND_sample_csv.csv`) must be in the same directory as the MATLAB script.

## Results
The project provides a plot of actual vs. forecasted maximum temperatures over time, along with the Mean Squared Error (MSE) to assess the performance of the model. The results give an indication of how well the moving average model predicts short-term weather trends based on historical data.

### Sample Visualization:
- **Plot**: Time series plot of daily maximum temperature (TMAX) and the corresponding forecasted values.
- **MSE**: The Mean Squared Error of the model is printed after running the script.

## Future Improvements
- **Incorporating More Advanced Models**: Future versions of this project could experiment with ARIMA, Exponential Smoothing, or neural networks (e.g., LSTM) to handle more complex weather patterns.
- **Handling Seasonal Data**: Adding seasonality and trend components to the model could improve prediction accuracy over long time horizons.
- **Larger Dataset**: Using a larger dataset with more observations could allow for more sophisticated forecasting models like ARIMA.
