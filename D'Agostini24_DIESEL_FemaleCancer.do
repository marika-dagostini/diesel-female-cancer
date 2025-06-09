** D'Agostini M, Collatuzzo G, Teglia F, Boffetta P. 
** Risk of Gynecological and Breast Cancers in Workers Exposed to Diesel Exhaust: A Systematic Review and Meta-Analysis Of Cohort Studies. 
** Med Lav [Internet]. 2024 Jun. 21 [cited 2025 Jun. 9];115(3):e2024011. 
** Available from: https://mail.mattioli1885journals.com/index.php/lamedicinadellavoro/article/view/15568

use "DIESEL DB EC+GC EDITED_singleAttfield(use)_FEMALE_CANCER.dta", replace

* =====================================
*   Typeofcancer==22 (Breast Cancer)
* =====================================

** Random Effect Model
meta set lnrr selnrr if repeat_0==0 & Typeofcancer==22 & main_analysis==1, random(sjonkman) studylabel(authors)
meta summarize, transform(`"ES"': exp)
meta forestplot, transform(`"RR"': exp) nullrefline xscale(range(.5 4)) xlabel(#4)
meta forestplot,  leaveoneout transform(`"RR"': exp) nullrefline xscale(range(.5 4)) xlabel(0.25 0.5 2 4, format(%9.2gc)) crop(0.25 4)
graph export "22_breast_cancer_forestplot.tif", as(tif) name("Graph")
meta bias, egger
meta funnelplot
graph export "22_breast_cancer_funnelplot.tif", as(tif) name("Graph")
meta galbraithplot

* Stratification by outcome ---> all same outcome (incidence)

* Stratification by sex
meta summarize, subgroup(geo_area) transform(`"ES"': exp)

* Stratification by geographic area
meta summarize, subgroup(geo_area) transform(`"ES"': exp)

* Stratification by industry code
meta summarize, subgroup(industry_code) transform(`"ES"': exp)

* Stratification by casp
meta summarize, subgroup(casp_dic) transform(`"ES"': exp)



* =====================================
*   Typeofcancer==23 (Cervical Cancer)
* =====================================

** Random Effect Model
meta set lnrr selnrr if repeat_0==0 & Typeofcancer==23 & main_analysis==1, random(sjonkman) studylabel(authors)
meta summarize, transform(`"ES"': exp)
meta forestplot, transform(`"RR"': exp) nullrefline xscale(range(.5 4)) xlabel(#4)
meta forestplot,  leaveoneout transform(`"RR"': exp) nullrefline xscale(range(.5 4)) xlabel(0.25 0.5 2 4, format(%9.2gc)) crop(0.25 4)
graph export "23_cervical_cancer_forestplot.tif", as(tif) name("Graph")
meta bias, egger
meta funnelplot
graph export "23_cervical_cancer_funnelplot.tif", as(tif) name("Graph")
meta galbraithplot

* Stratification by outcome ---> all same outcome (incidence)
* Stratification by sex ---> all same sex (female)

* Stratification by geographic area
meta summarize, subgroup(geo_area) transform(`"ES"': exp)

* Stratification by industry code
meta summarize, subgroup(industry_code) transform(`"ES"': exp)

* Stratification by casp
meta summarize, subgroup(casp_dic) transform(`"ES"': exp)


* =========================================
*   Typeofcancer==24 (Endometrial Cancer)
* =========================================

** Random Effect Model
meta set lnrr selnrr if repeat_0==0 & Typeofcancer==24 & main_analysis==1, random(sjonkman) studylabel(authors)
meta summarize, transform(`"ES"': exp)
meta forestplot, transform(`"RR"': exp) nullrefline xscale(range(.5 4)) xlabel(#4)
meta forestplot,  leaveoneout transform(`"RR"': exp) nullrefline xscale(range(.5 4)) xlabel(0.25 0.5 2 4, format(%9.2gc)) crop(0.25 4)
graph export "24_endometrial_cancer_forestplot.tif", as(tif) name("Graph")
meta bias, egger
meta funnelplot
graph export "24_endometrial_cancer_funnelplot.tif", as(tif) name("Graph")
meta galbraithplot

* Stratification by outcome ---> all same outcome (incidence)
* Stratification by sex ---> all same sex (female)

* Stratification by geographic area
meta summarize, subgroup(geo_area) transform(`"ES"': exp)

* Stratification by industry code
meta summarize, subgroup(industry_code) transform(`"ES"': exp)

* Stratification by casp
meta summarize, subgroup(casp_dic) transform(`"ES"': exp)



* =====================================
*   Typeofcancer==26 (Ovarian Cancer)
* =====================================

** Random Effect Model
meta set lnrr selnrr if repeat_0==0 & Typeofcancer==26 & main_analysis==1, random(sjonkman) studylabel(authors)
meta summarize, transform(`"ES"': exp)
meta forestplot, transform(`"RR"': exp) nullrefline xscale(range(.5 4)) xlabel(#4)
meta forestplot,  leaveoneout transform(`"RR"': exp) nullrefline xscale(range(.5 4)) xlabel(0.25 0.5 2 4, format(%9.2gc)) crop(0.25 4)
graph export "26_ovarian_cancer_forestplot.tif", as(tif) name("Graph")
meta bias, egger
meta funnelplot
graph export "26_ovarian_cancer_funnelplot.tif", as(tif) name("Graph")
meta galbraithplot

* Stratification by outcome ---> all same outcome (incidence)
* Stratification by sex ---> all same sex (female)

* Stratification by geographic area
meta summarize, subgroup(geo_area) transform(`"ES"': exp)

* Stratification by industry code
meta summarize, subgroup(industry_code) transform(`"ES"': exp)

* Stratification by casp
meta summarize, subgroup(casp_dic) transform(`"ES"': exp)


* =====================================
*   JOINT ANALYSIS
* =====================================

meta set lnrr selnrr if repeat_0==0 & (Typeofcancer==22| Typeofcancer==23|Typeofcancer==24|Typeofcancer==26) & main_analysis==1, random(sjonkman) studylabel(authors)
