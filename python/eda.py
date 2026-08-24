import pandas as pd

customers = pd.read_csv("data/raw/customers.csv")
orders = pd.read_csv("data/raw/orders.csv")
products = pd.read_csv("data/raw/products.csv")
order_items = pd.read_csv("data/raw/order_items.csv")

print("DATASET SUMMARY")
print("-" * 30)

print("Customers:", customers.shape)
print("Orders:", orders.shape)
print("Products:", products.shape)
print("Order Items:", order_items.shape)

print("\nTotal Sales:")
print(order_items["sales"].sum())

print("\nTop 5 Products by Sales:")
print(
    order_items.groupby("product_id")["sales"]
    .sum()
    .sort_values(ascending=False)
    .head()
)
