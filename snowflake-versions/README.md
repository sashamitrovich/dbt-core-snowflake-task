# My DBT Project

This is a simple dbt project designed to work with Snowflake.

## Project Structure

```
my-dbt-project
├── models
│   └── example_model.sql
├── dbt_project.yml
├── profiles.yml
└── README.md
```

## Setup Instructions

1. **Install dbt**: Make sure you have dbt installed. You can install it using pip:
   ```
   pip install dbt-snowflake
   ```

2. **Configure your profiles.yml**: Update the `profiles.yml` file with your Snowflake connection details.

3. **Run dbt commands**:
   - To run the models, use:
     ```
     dbt run
     ```
   - To test the models, use:
     ```
     dbt test
     ```

4. **Documentation**: You can generate documentation for your project using:
   ```
   dbt docs generate
   dbt docs serve
   ```

## Additional Information

Refer to the dbt documentation for more details on how to use dbt with Snowflake and to explore advanced features.