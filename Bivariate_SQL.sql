-- use this in the QGIS field calculator to create a new field "bivariate" --
CASE
    WHEN ("bivariate_1" <= x AND "bivariate_2" <= y) THEN '1'
	WHEN ("bivariate_1" <= x AND "bivariate_2" > y) THEN '2'
    WHEN ("bivariate_1"  > x AND "bivariate_2" <= y) THEN '3'
	WHEN ("bivariate_1"  > x AND "bivariate_2" > y) THEN '4'
    ELSE 'N'
END
