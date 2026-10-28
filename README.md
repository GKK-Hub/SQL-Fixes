# SQL Fix Lab

Practice contributing to an open-source project, the way real projects work: **claim an issue, fork, fix, open a pull request, pass the automated check, get reviewed, get merged.**

This repo holds 13 MySQL exercise files for a small online shop, plus one demo file. Every file has 2 mistakes, and none of them run. Your job is to fix one.

## What's inside

```
sql-fix-lab/
├── queries/          00_demo.sql + 13 broken exercise files (one per contributor)
├── data/
│   ├── schema.sql    the shop tables (don't edit)
│   └── seed.sql      the sample data (don't edit)
├── scripts/
│   └── check_sql.sh  the script the automated check runs
└── .github/          pull request template, issue template, automated check
```

## The shop database

| Table | What it holds |
|---|---|
| `customers` | customer_id, first_name, last_name, email, city, signup_date |
| `employees` | employee_id, full_name, role, manager_id, hire_date, salary |
| `products` | product_id, product_name, category, unit_price, stock_qty |
| `orders` | order_id, customer_id, employee_id, order_date, status |
| `order_items` | order_item_id, order_id, product_id, quantity, unit_price |

`status` is one of `pending`, `shipped`, `delivered`, `cancelled`.

## The exercises

| File | Topic |
|---|---|
| `00_demo.sql` | Reserved for the maintainer's demo |
| `01_customer_list.sql` | Selecting columns |
| `02_product_list.sql` | Selecting columns |
| `03_order_list.sql` | Selecting columns |
| `04_where_equals.sql` | WHERE with = |
| `05_where_numbers.sql` | WHERE with >, <, >= |
| `06_where_and_or.sql` | AND and OR |
| `07_where_in_between.sql` | IN and BETWEEN |
| `08_sorting.sql` | ORDER BY |
| `09_limit_top_n.sql` | LIMIT |
| `10_counting.sql` | COUNT |
| `11_sum_avg.sql` | SUM, AVG, MIN, MAX |
| `12_group_by.sql` | GROUP BY |
| `13_like_distinct.sql` | LIKE and DISTINCT |

## Want to contribute?

Read **[CONTRIBUTING.md](CONTRIBUTING.md)**. It walks you through every step.

## The automated check

Every pull request starts a fresh MySQL 8 database, loads the shop data, and runs the files your pull request changed. You'll see the result at the bottom of your pull request:

- ✅ **All checks have passed**: your files ran without errors.
- ❌ **Some checks were not successful**: click **Details** to see the MySQL error, fix it, and push again. The check reruns on its own.
