# Global Temperature Change Analysis

This project analyzes global temperature change using NASA GISTEMP
temperature anomaly data. The analysis examines temporal, distributional,
hemispheric, seasonal, latitudinal, and spatial patterns in global
temperature anomalies from 1901 through the most recently available data.

The project is implemented in R as a reproducible Quarto book and is
organized into three stages: data acquisition, data transformation, and
data visualization.

## Analysis

The visualization chapter examines global temperature change from several
complementary perspectives:

1. Global monthly, annual, and decadal temperature anomalies
2. Temperature anomaly distributions by climate period
3. Northern and Southern Hemisphere comparisons
4. Temperature anomalies by latitude zone
5. Seasonal temperature anomalies by climate period
6. Global surface-area distribution across the continuous anomaly spectrum
7. Global gridded temperature anomaly maps by climate period

Together, these views show both how global temperature anomalies have
changed through time and how those changes vary geographically and
seasonally.

## Data Sources

Source and transformed data are not stored in the repository. Running the acquisition and transformation chapters creates the required data/ directories and downloads or generates the necessary files.

### NASA GISTEMP

Temperature anomaly data are obtained from the NASA Goddard Institute for
Space Studies (GISS) Surface Temperature Analysis (GISTEMP).

The project uses:

- Global monthly temperature anomalies
- Northern Hemisphere monthly temperature anomalies
- Southern Hemisphere monthly temperature anomalies
- Latitude-zone annual temperature anomalies
- Global gridded temperature anomaly data in NetCDF format

Temperature anomalies are expressed in degrees Celsius relative to the
NASA GISTEMP 1951–1980 baseline.

### Natural Earth

Natural Earth coastline data are used as geographic reference data for the
global maps.

## Climate Periods

The analysis groups observations into consecutive climate periods:

| Climate Period | Years |
|---|---|
| 1 | 1901–1930 |
| 2 | 1931–1960 |
| 3 | 1961–1990 |
| 4 | 1991–2020 |
| 5 | 2021–present |

The final climate period is incomplete and extends through the latest year
available in the source data.

The 30-year periods are based on the climatological reference-period
convention used by the World Meteorological Organization.

## Project Structure

├── _quarto.yml
├── index.qmd
├── 01-data-acquisition.qmd
├── 02-data-transformation.qmd
├── 03-data-visualization.qmd
├── R/
│   └── climate-periods.R
├── data/
│   ├── raw/
│   ├── archive/
│   └── transformed/
└── README.md

### 01-data-acquisition.qmd

Downloads the NASA GISTEMP source data, acquires the Natural Earth
coastline, documents the software environment, and produces a project data
catalog.

### 02-data-transformation.qmd

Cleans and transforms the source data, creates temporal and geographic
aggregations, converts the gridded NetCDF data to spatial polygons,
calculates grid-cell surface areas, and saves reusable transformed
datasets.

### 03-data-visualization.qmd

Creates the statistical summaries and visualizations used to examine
global, hemispheric, latitudinal, seasonal, surface-area, and spatial
patterns in the temperature anomaly data.

## Software

The analysis is written in R and rendered with Quarto.
Major R packages include:
 - tidyverse
 - sf
 - ncdf4
 - rnaturalearth
 - R.utils
 - gt
 - patchwork
 - pals
 - viridisLite
Exact software and package versions used to render the project are
documented in the Data Acquisition chapter.

## Reproducing the Analysis

1. Clone the repository and open it as a Quarto project.

2. Run or render the chapters in order:

    01-data-acquisition.qmd
    02-data-transformation.qmd
    03-data-visualization.qmd

The acquisition chapter downloads the required source data, and the
transformation chapter creates the derived datasets required by the
visualization chapter.

## Output

The project renders as an HTML Quarto book containing the complete
workflow, data catalogs, summary statistics, and visualizations.

## Notes

- The analysis begins in 1901 to maintain a consistent temporal basis
across visualizations.
- Climate Period 5 is incomplete and updates as newer source data become
available.
- Temperature anomaly values retain the NASA GISTEMP 1951–1980 reference
baseline throughout the analysis.
- Spatial area calculations use the polygon geometry of the gridded
temperature data rather than treating all latitude-longitude grid cells
as equal in area.

## Author

Rick Forest