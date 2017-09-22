from datetime import datetime, timedelta

start_date = 'Aug-29-14'
days = 60
all_dates = [datetime.strptime(start_date, '%b-%d-%y') + timedelta(days=i) for i in range(days)]
all_dates_str = [datetime.strftime(d, '%b-%d-%y') for d in all_dates]
print("(%s)"%(' '.join(all_dates_str)))
