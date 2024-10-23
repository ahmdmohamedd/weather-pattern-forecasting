% Load the dataset (same as before)
data = readtable('GHCND_sample_csv.csv');

% Convert DATE to datetime
data.DATE = datetime(num2str(data.DATE), 'InputFormat', 'yyyyMMdd');

% Replace 9999 in PRCP (precipitation) column with NaN
data.PRCP(data.PRCP == 9999) = NaN;

% Convert temperature from tenths of degree Celsius to degrees Celsius
data.TMAX = data.TMAX / 10;
data.TMIN = data.TMIN / 10;

% Visualize TMAX over time
figure;
plot(data.DATE, data.TMAX, 'b');
title('Daily Maximum Temperature Over Time');
xlabel('Date');
ylabel('Temperature (°C)');
grid on;

% Train-test split (80% train, 20% test)
n = height(data);
train_size = round(0.8 * n);
train_data = data(1:train_size, :);
test_data = data(train_size+1:end, :);

% Use simple moving average for forecasting
smoothedTMAX = smoothdata(train_data.TMAX, 'movmean', 5); % 5-point moving average

% Forecast using the last value from the smoothed series
forecasted_TMAX = repelem(smoothedTMAX(end), length(test_data.TMAX));

% Plot forecast vs actual data
figure;
plot(test_data.DATE, test_data.TMAX, 'r', 'LineWidth', 1.5); hold on;
plot(test_data.DATE, forecasted_TMAX, 'b--', 'LineWidth', 1.5);
legend('Actual TMAX', 'Forecasted TMAX');
title('Forecast vs Actual Temperature');
xlabel('Date');
ylabel('Temperature (°C)');
grid on;

% Evaluate using Mean Squared Error (MSE)
mse_value = mean((test_data.TMAX - forecasted_TMAX).^2);
disp(['Mean Squared Error: ', num2str(mse_value)]);