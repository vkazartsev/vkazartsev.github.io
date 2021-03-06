---
---

@import "minima";
.markdown-body table {display: table; }
@media print, (overflow-block: paged)
{
  /* Move top-level headings to a new page on the right-hand side: */
  h1
  {
    page-break-before: right; /* CSS 2 */
    break-before: recto;      /* CSS 3+, 
      also works for languages written and paginated right-to-left */
  }
  /* Override the previous ruleset for the very first heading: */
  h1:first-of-type,
  section > h1:first-child
  {
    page-break-before: avoid; /* CSS 2 */
    break-before: avoid;      /* CSS 3+ */
    page-break-after: avoid;
    break-after: avoid;      /* CSS 3+ */
  }
  /* Force second-level headings to begin in a new column or
     possiblyon a new page if it was in the last of multiple columns otherwise: */
  h2
  {
    break-before: column;
  }
  /* Headings  & table headers should not be the last paragraph on a page: */
  h1, h2, h3, h4, h5, h6, th
  {
    page-break-after: avoid;
    break-after: avoid;      /* CSS 3+ */
  }
  /* Consecutive headings with deepening level should not be split across pages: */
  h1+h2, h2+h3, h3+h4, h4+h5, h5+h6, h1+table, h2+table, h3+table, h4+table, h5+table, h6+table
  {
    page-break-before: avoid;
    break-before: avoid;      /* CSS 3+ */
  }
  table, th, tr {break-inside:avoid;}
}
@import "https://gist.githubusercontent.com/ryangray/1882525/raw/2a6e53f645b960f0bed16d686ba3df36505f839f/buttondown.css";

