# CASE Statement
- The CASE statement is SQL's way of handling if/then logic. The CASE statement is followed by at least one pair of WHEN and THEN statements—SQL's equivalent of IF/THEN in Excel.
- Every CASE statement must end with the END statement. The ELSE statement is optional, and provides a way to capture values not specified in the WHEN/THEN statements.
- Syntax: SELECT column_1, column_2, <br/>
  CASE <br/>
    WHEN condition_1 THEN result_1 <br/>
    WHEN condition_2 THEN result_2 <br/>
    WHEN ... THEN ... <br/>
    ELSE result_3 -- _If condition_1 and condition_2 are not met, return result_3 in ELSE clause_ <br/>
  END AS column_3_name -- _Give your new column an alias_ <br/>
FROM table_1;  

The CASE statement evaluates the specified conditions sequentially and returns a value when it encounters the first true condition. If none of the conditions are met, the ELSE clause provides a default value.
