from datetime import datetime
if __name__ == "__main__":
  current_hour = datetime.now().hour
  # Light mode runs from 7 AM to 6 PM
  if (current_hour > 6 and current_hour < 18):
    print("BreezeLight")
  else:
    print("BreezeDark")