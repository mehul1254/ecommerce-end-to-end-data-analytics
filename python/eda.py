import pandas as pd

customers = pd.read_csv("data/raw/customers.csv")
orders = pd.read_csv("data/raw/orders.csv")
products = pd.read_csv("data/raw/products.csv")
items = pd.read_csv("data/raw/order_items.csv")

print("Customers")
print(customers.head())

print("Orders")
print(orders.head())

print("Products")
print(products.head())

print("Order Items")
print(items.head())
