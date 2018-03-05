# Reproducible Research Is Really F#$%ing Hard


\vspace{25mm}
Patrick D. Schloss${^\dagger}$

\vspace{30mm}

$\dagger$ pschloss@umich.edu; Department of Microbiology and Immunology, University of Michigan, Ann Arbor, MI

\vspace{30mm}

\textbf{Format:} Perspective


\textbf{Counts:} \textasciitilde 4400 words plus 69 references, 2 tables, 0 figures, and a 144 word abstract

\newpage
\linenumbers

## Abstract

The "reproducibility crisis" in science affects microbiology as much as any other area of inquiry, and microbiologists have long struggled to make their research reproducible. We need to respect that science and microbiology, in particular, are difficult. There are many reasons why a result may not be reproducible or replicable. Even if a result is reproducible, it may not be correct. This Perspective lays out a framework for improving the reproducibility, replicability, robustness, and generalizability of a particular result. It then describes the factors that can threaten this framework and approaches microbiologists can take to overcome the threats. Finally, it provides several exercises for individuals and research groups who wish to gain a better appreciation of how own research practices facilitate reproducibility and replication by others. Failure to validate previous results have much to teach us about the scientific process and microbial life itself.

**Keywords:** Reproducibility, Microbiome, Scientific method, Research ethics, American Academy of Microbiology


\newpage

## Introduction

On first blush, one might argue that any scientist should be able to reproduce another scientist's research with no friction. Yet two anecdotes suffice to describe why this is not the case. The first goes to the roots of microbiology when Antonie van Leeuwenhoek submitted a letter to the Royal Society in 1677, "Concerning little animals" [@Lane2015]. This seminal work and several of his prior investigations described novel observations of microorganisms, but the scientific community rejected his observations for several reasons. First, because Leeuwenhoek had little interest in sharing his methods with others, they could not be replicated. Second, he wrote in "low Dutch" and his writing was translated to English and edited to half their original length. This likely removed a significant amount of information regarding his methods. After several failures, Robert Hooke refined his compound microscope and was able to reproduce Leeuwenhoek's observations. The precision of Hooke's observations was hindered by his use of a compound microscope, which had  inferior optics to that of Leeuwenhoek's single lens microscope. In the process, Hooke popularized the compound microscope. This succession of events is illustrative of many of the current problems microbiologists face in reproducing and replicating each other's work. Of course, Leeuwenhoek's work was rigorous, impactful, and robust. It was not sloppy and there was no fraud. But, it required multiple efforts by one of the greatest minds in science to replicate and even then it was a poor replication of the original.

The second anecdote took place more recently. In 2011 Philip Bourne challenged those attending the *Beyond the PDF* workshop (https://sites.google.com/site/beyondthepdf/) to reproduce the analysis performed in his group's 2010 study *The* Mycobacterium tuberculosis *Drugome and Its Polypharmacological Implications* [@Kinnings2010]. The response to that challenge resulted in a collaborative analysis involving the original authors and scientists from Spain, China, and the United States that challenged concepts critical to understanding reproducible research [@Garijo2013]. The reanalysis demonstrated that the value of reproducibility, the degree to which research should be reproducible, the amount of effort required to reproduce the research, and who should be able to reproduce the research are questions without simple answers. Few would suggest that Bourne's group was sloppy or that they failed to be transparent. Yet the investigators who sought to reproduce the findings found that someone with basic bioinformatics skills would require at least 160 hours to decipher the approaches used in the original analysis and an additional 120 hours to implement them to complete the reproduction.

Both of these anecdotes are at odds with the tone of a recent report by the American Academy for Microbiology's (AAM's) 2015 colloquium, "Promoting Responsible Scientific Research" and its accompanying editorial in *mBio* [@Casadevall2016; @Davies2016]. The report is a useful lens into how microbiologists view the reliability of research in their field. The colloquium identified "(i) sloppy science, (ii) selection and experimental bias, and (iii) misconduct" as the primary contributors to the ongoing problems with insuring the reliability of microbiology research. Although the participants were quick to point out that misconduct was a relatively minor contributor to the problem, the four case studies that accompanied the original report all concern misconduct. Missing from these reports was any of the nuance or humility enveloped in Leeuwenhoek's case or Bourne's challenge: insuring that one's research design and methods are sufficiently clear is enormously difficult. Researchers are frequently frustrated when they are contacted about a forgotten detail years after a paper is published. Put simply, most problems with reproducibility and replicability are not due to sloppy science, bias, or misconduct.

Although the issues identified by the AAM colloquium participants are important, this Perspective argues that they are not the main reason for a reproducibility crisis in microbiology. It is scientifically valuable to consider what other factors threaten our ability to validate a result. Although these factors highlight the technical limitations we face, our inability to validate a result may also indicate that we still have much to learn about biology. Furthermore, we must remember that whether we can validate a result is not just a product of rigorous scientific practice, but also a product of stochastic forces [@Patil2016]. We must also be on guard against assuming that just because a result is reproducible that it is correct [@Leek2015]. With these general points in mind, the goals of this Perspective are three-fold. First, I present a framework for thinking about how science is conducted within the microbial sciences. Second, I provide an overview of various factors that threaten the field's ability to validate prior results and the tools that we can use to overcome these problems. Third, based on these issues, I provide five exercises that research groups can use to motivate important discussions of their practices and how they foster or impede efforts to validate their results. Although I will primarily focus on examples from microbiome research, the principles are generalizable to other areas of microbiology.


## Threats to reproducibility

**Developing a framework.** One of the struggles in discussing reproducibility, replicability, and the factors that can limit them, is agreeing upon how they should be defined. The AAM report used the term reproducibility where others would use replicability. This Perspective will use the most widely used definitions, which describe reproducibility as the ability to regenerate a result with the same dataset and data analysis workflow and replicability as the ability to produce a consistent result with an independent experiment asking the same scientific question [@Leek2015, @Patil2016, @Goodman2016]. I propose a similar framework that accounts for the practice of applying multiple methods to the same samples to improve the robustness and generalizability of a result (Table 1) [@Whitaker2017]. It is critical for scientists to give attention to the right hand column of the framework. Most research is exploratory and scientists, editors, and funding agencies generally lack the will or ability to confirm previous studies via independent replications or attempts to generalize results in other model systems or human populations [@Casadevall2016; @Davies2016; @Collins2014]. Results must be reproducible and robust, but they must also be replicable and generalizable.

**An example.** Several research groups, including mine [@Sze2016], have attempted to validate the result that obese individuals were more likely to have lower bacterial diversity and relative abundances of *Bacteroidetes* [@Walters2014; @Finucane2014]. The original observation was published in 2008 using 16S rRNA gene sequence data and continues to engender much enthusiasm for the role of the microbiome in human health [@Turnbaugh2008]. Although the original study was performed using poorly described data curation methods, we were able to independently obtain the same results as the original study when using the same dataset. The original result can thus be considered reproducible (Table 1). However, when we used the same methods with data from nine other cohorts, we failed to replicate the result [@Sze2016; @Walters2014; @Finucane2014]. These failures to replicate the original result may be due to methodological differences across the replicating studies, differences in study populations, or statistical variation. It is worth noting that those involved in the original study pursued multiple approaches to better understand the question of whether the microbiota is important in obesity. They initially sought microbiome-based signatures using mouse models [@Turnbaugh2006, @Ley2005]. They observed stark differences in the microbiota of genetically lean and obese mice and that the microbiota of obese mice could transmit the propensity to gain weight to germ free mice [@Turnbaugh2006]. In a human cohort, they generated multiple datasets that each reflected different regions of the 16S rRNA gene. In obese individuals, they observed lower diversity and relative abundance of *Bacteroidetes* [@Turnbaugh2008]. They also used shotgun metagenomic sequencing to postulate the enrichment of carbohydrate processing genes in obese individuals [@Turnbaugh2008]. In a smaller cohort study, although the subjects' diversity remained constant, as the authors predicted, the relative abundance of *Bacteroidetes* increased as the subjects lost weight [@Ley2006]. Although each part of their approach had significant weaknesses including methodological biases and underpowered experimental designs, their results supported the hypothesis that there are microbial signatures associated with obesity. This conclusion was robust within the cohort they studied, but it was not generalizable to other cohorts.


**Reproducibility.** Threats to reproducibility are some of the most fundamental and easiest to lay fault on the original investigators. If a result cannot be reproduced, then it is difficult to have confidence that it can be replicated or generalized. Thus the ability to reproduce a result is critical.

Because many journals impose word limits on manuscripts, Materials and Methods sections become a chain of citations to previous work that each cite previous work [@Collins2014]. Improved documentation in supplementary materials or archives such as protocols.io (https://www.protocols.io) for lab-based methods or through GitHub (https://github.com) for data analysis workflows would make it easier for researchers to avoid these rabbit holes. For data analysis workflows, software such as GNU Make (https://www.gnu.org/software/make/) and the Common Workflow Language [@Amstutz2016] make it possible to track data dependencies and automate a workflow. For example, we used GNU Make to write a workflow in our meta-analysis of the obesity data, such that downloading a copy of the scripts from the project's GitHub repository and writing "make write.paper" in the command line will reproduce our analysis. Workflow tools make it possible to trace the provenance of a summary statistic from the manuscript back to the raw data.

Unfortunately, the raw data behind a result is often not accessible, which makes reproducing a prior analysis impossible [@Langille2018; @Ravel2014]. Well-established databases for storing a variety of "omics" data exist and other data should be archived in third-party databases such as FigShare (https://figshare.com) and Dryad (https://datadryad.org). However, researchers still fail to post their sequencing data to public databases or do not provide the necessary metadata with the sequencing data. As we developed the obesity meta-analysis we were dependent on the original authors to provide the information for two of the ten datasets. Furthermore, the data made available from the original study only provided the subjects' body mass index (BMI) as categories [@Turnbaugh2008]. We were unable to access the actual heights, weights, and BMIs. We did not include three large datasets from two studies because their data were inaccessible due to onerous data sharing agreements [@Zhernakova2016; @Goodrich2016]. Two other datasets required at least a month of effort to obtain [@HMP2012; @Zupancic2012].

Rapid advances in sequencing technology, data curation, databases, and statistical techniques present an additional threat to reproducibility. For example, the Human Microbiome Project used Roche's 454 platform to sequence the 16S rRNA gene [@HMP2012]. This sequencing platform is no longer commercially available. Data analysis software and databases are also rapidly changing. The mothur software package has had 40 major updates since it was originally released in 2009 [@Schloss2009]. The RDP [@Cole2013; http://rdp.cme.msu.edu] and SILVA [@Yilmaz2013; https://www.arb-silva.de] databases that many use as a reference for aligning and classifying 16S rRNA gene sequences are updated annually and the popular greengenes database files have not been updated since 2013 [@DeSantis2006; http://greengenes.lbl.gov and http://greengenes.secondgenome.com]. With each release, curators expand the number of sequences in the database and make modifications to their taxonomic outline. For software and databases, it is critical that authors report version numbers if there is to be any hope of replicating previous work. Unfortunately, the reliance on web-based workflows like GenBank (https://www.ncbi.nlm.nih.gov/genbank), greengenes, RDP, and SILVA preclude analyzing new data with older versions of the sites. The greengenes website removed their online tools in April 2017, exemplifying the problem with web-based workflows. Their database files are now available through the company, Second Genome, but their tools are not.

"Link rot" - the fact that web or email addresses become deprecated - is a significant problem for those attempting to access the data and methods needed to reproduce a result [@Klein2014]. Changes in institutional affiliation frequently render email addresses invalid.  ORCID (https://orcid.org) has emerged as a technology to solve the email rot problem and many journals use it to provide a persistent link to an individual's many scientific identities over their career. The fraction of manuscripts including web resources continues to grow and yet at least 70% of those manuscripts include URLs that are inaccessible [@Klein2014]. To prevent link rot, services like Zotero (https://www.zotero.org) can provide a digital object identifier (DOI) that persists even if the link that it points to changes. Unfortunately, the developer of the web resources must insure that the resource remains active. The inevitability of link rot further emphasizes the importance of using public and stable servers that are likely to persist for at least a decade.

Other problems with reproducibility reflect the fact that science is not a linear process resembling a pipeline. In reality, questions change and scientists fall into the traps of the "Garden of Many Forking Paths" where they go looking for a desired result [@Gelman2014] or "P-hacking" where large numbers of statistical hypothesis tests are attempted without adequately correcting for performing multiple tests [@Head2015]. Although it is possible to pre-register data analysis plans [@Errington2014; @Pain2015; @Nosek2017], these plans are often too stringent for most exploratory research. Alternatives include making research notebooks publicly available using commercial platforms or free tools such as RMarkdown documents [@Xie2015] and Jupyter notebooks [@Kluyver2016]. Combined with version control software such as git, these literate programming documents can allow researchers to document and share the evolution of their analyses.



**Replicability.** A number of threats similar to those for reproducibility could explain why a previous result cannot be replicated. In addition to those detailed previously, there are threats related to differences in systems or populations and the ability to control for those differences.

Problems with experimental design are often a threat to replicability because investigators fail to account for confounding variables in the original study. In sequence-based analyses, threats to replicability are encountered when samples are not randomized across sequencing runs. These so-called batch effects have been a problem with a large number of analytical techniques beyond sequencing [@Leek2010]. One notable example occurred within the Human Microbiome Project where 150 people were recruited in Houston, TX and 150 in St. Louis, MO [@HMP2012]. Researchers at the Baylor College of Medicine and Washington University performed the DNA extractions for the two sets of subjects, respectively. Researchers at the Baylor College of Medicine, the J. Craig Venter Institute, and the Broad Institute sequenced the DNA from the Houston subjects and researchers from Washington University sequenced the DNA from the St. Louis subject. The subject's city was the variable with the largest effect size, although all parties used the same standard operating procedures to sample the subjects and extract and sequence the DNA [@HMP2012; @Ding2014]. Because the city of origin and the center that did the extractions were perfectly confounded, it was impossible to quantify the impact of geographic differences on the microbiome. Instead of being a single study that intended to address associations between geographical and microbiome variation, this became two replicate studies that were unable address the influence that geography has on the microbiome.

In addition to variation between human cohorts, variation between bacterial and model organism strains can hinder efforts to replicate results. In microbiome research, it is widely appreciated that the microbiota of research animals from the same litter and breeding facility are largely clonal and distinct from other facilities [@Ley2005; @Kim2017]. Mice from two breeding facilities at the same institution may have completely different microbiota. The best example of this phenomenon is the presence of segmented filamentous bacteria in mice purchased from Taconic Farms, but not Jackson Laboratories [@Ivanov2008; @Ivanov2009]. Thus, the origin of the mice and not the experimental treatment may explain the roles ascribed to the microbiota. This is particularly a problem for genetic models when researchers obtain mutant animals and animals with the wild type background as their control. In such cases using the offspring of heterozygous matings is critical [@Laukens2015]. Similarly, comparing the microbiota of obese and lean individuals from a cohort of twins and their mothers in Missouri [e.g. @Turnbaugh2008] may have confounding factors that differ from members of Amish communities [e.g. @Zupancic2012]. In these cases, the problem with replicability is not due to the quality of the investigator's experimental practices, but to the differences that may be biological, demographic, or anthropological. Thus failure to replicate a study across different strains or cohorts could suggest that other interesting factors play a role in the phenomenon under study.

Uncertain provenance and purity of reagents, organisms, and samples also threaten replicability. Perhaps the best-known example is the discovery that HeLa cells contaminate many other cell lines, especially those in the same laboratory [@Horbach2017; @Huang2017]. Similarly, investigators frequently realize that they are working with bacterial strains that were incorrectly typed or that have evolved during serial passages from the freezer stock [@Han2013; @Lee2013]. Short of resequencing the cells, experimental controls, limiting the number of passages from freezer stocks, and periodic phenotyping of the strains can help to overcome these problems. In the microbiome literature, there is a growing awareness that DNA extraction kits can be contaminated with low levels of bacterial DNA [@Salter2014]. These contaminants have led to the identification of contaminants as being important members of the lung and placental microbiota when mock extractions are not sequenced in parallel [@PerezMuoz2017; @Lauder2016; @Morris2013].

Forgotten in discussions of replication failures is that a replication may fail because replication is statistical rather than deterministic [@Patil2016]. Every experiment has a margin of error and when the effect size is near that margin of error, it is likely that a statistically significant result in one replicate will not be significant in another. Most researchers use a frequentist null model hypothesis testing approach with which they are willing to accept a Type I error of 0.05. Stated more colloquially, they are willing to incorrectly reject a null hypothesis in 5% of the replicates. Further, they rarely quantify the risk of falsely accepting a null hypothesis (i.e. Type II errors) [@Guo2014]. In our analysis of the microbiota associated with human obesity, we observed that nearly all studies were underpowered to detect 5 or 10% differences in diversity [@Sze2016]. In some cases, an insufficient sample size in the replicate study may explain the failure to replicate a study. In other cases, the original study may have been underpowered, rendering it susceptible to an inflated risk of Type I errors [@Ioannidis2005]. Solutions to these problems include pre-registering data analysis plans [@Errington2014; @Pain2015; @Nosek2017], justifying sample sizes based on power calculations [@Guo2014; @Sze2016; @Collins2014], and using Bayesian frameworks that allow prior knowledge of the system to influence the interpretation of new results [@Etz2016; @Gelman2012].


**Robustness.** Every method has its own strengths and weaknesses. Therefore, it is important to address a research question from multiple and hopefully orthogonal directions. This strategy combines the strengths of different methods to overcome their individual weaknesses [@Munaf2018]. Evaluating the robustness of a result from a single cohort is becoming more common as researchers pursue multiple approaches including 16S rRNA gene sequencing, metagenomics, metatranscriptomics, and metabolomics [e.g. @Mallick2017; @Jenior2017; @Califf2017]. Of course, biases in the underlying cohort design, sample collection and storage, or the nucleic acid processing will propagate through the analyses. The way to remedy this is to select methods that are as independent from each other as possible. For example, data collected from multiple regions of the 16S rRNA gene would not be considered truly independent datasets since amplicon sequencing would have been applied to the same samples. The results would be marginally more independent if one were to layer shotgun metagenomic data onto the 16S rRNA gene sequence data because although the same DNA would be used for sequencing, metagenomics provides information about the genetic diversity and functional potential of a community rather than the taxonomic diversity of a community. Metabolomic data would be even more independent from the DNA-based methods since it requires completely different sample handling and processing steps. Quantitative PCR, cultivation, and microscopy could be similarly layered on these data. Ultimately, it is impossible for the results of each set of methods to be fully independent. Within a scientific culture that does not place value on publishing negative results  it is difficult to assess whether scientists' bias to support their prior results affects the ability to claim that a result is robust or generalizable.


**Generalizability.** The gold standard of science is to have a result that is generalizable across populations. Failing to attempt replication studies hinders the ability of researchers to test the generalizability of most results. Scientists often fear being "scooped" [@Pearson2003]. In reality, it is the second researcher who examines the same question that has the opportunity to increase the field's confidence that a result is valid [@PB2018]. Generalizability is an important and broad question. Model organisms (e.g. *E. coli*) and strains of those organisms (e.g. K-12) have taught us a great deal about the biology of those organisms. However, it is not always trivial to generalize that knowledge to related species and strains or from *in vitro* to *in vivo* conditions and on to human subjects [@Seok2013; @Nguyen2015]. Like a failure to reproduce, replicate, or demonstrate the robustness of a result, a failure to generalize a result is not a failure of science. Rather, it is an opportunity to better understand the complex biology of bacteria and how they interact with their environments.


## Fostering a culture of greater reproducibility and replicability

**Training.** A key observation from the work of Garijo and colleagues [@Garijo2013] was that the level of detail needed to reproduce an analysis varies depending on the researcher's level of training. An expert in the field understands the nuances and standards of the field whereas a novice may not know how to install the software. This highlights the need for training. Yet, many microbiology training programs focus on laboratory skills while ignoring data analysis skills. A number of excellent "best practices" documents have emerged in recent years [e.g. @Wilson2017; @Noble2009; @Taschuk2017; @Hart2016; @PerezRiverol2016; @Sandve2013]. I have created the Riffomonas project, which expounds on the threats to reproducibility and tools that microbiologists can use to maximize the computational reproducibility of their analyses (http://www.riffomonas.org). In addition, organizations including Software Carpentry and Data Carpentry offer workshops to introduce researchers to the best practices in reproducible research [@Wilson2016]. Massively open online courses have been developed that teach scientists best practices for performing reproducible analyses. The most popular of these is a training program from faculty at the Johns Hopkins Data Science Lab (http://jhudatascience.org). Just as important as learning the fundamentals of how to implement reproducible research methods is honing those skills in one's research. A novice could not reproduce Beethoven's "Für Elise" from sheet music without prior experience playing the piano. Similarly, novices cannot expect to reproduce a result without learning the methods of their discipline.

**Exercises.** The following exercises are meant to motivate conversations within a research group to foster a culture improving reproducibility and replicability and to underscore the threats outlined above.

1\. Working away from each other, have two or more people to write instructions on how to fold a paper airplane. Have the participants trade instructions, separate, and implement the instructions. How closely did the final airplanes resemble that of the person who developed the instructions? What would have helped to make the reproductions more faithful? How much did the author of the instructions assume about the other person's prior knowledge of paper airplanes, resources, and abilities were assumed? What challenges would length limitations place on this exercise? How does this exercise resemble the descriptions in the Materials and Methods section of papers for standard methods (e.g. PCR) and for novel methods (e.g. bioinformatic workflows)?

2\. Imagine a graduate student is really excited about an analysis that you performed in your most recent paper and would like to replicate the analysis with their own data. But first, they want to make sure that they reproduce your results. What steps are likely to cause the student problems? Find your favorite figure from your favorite paper from a different research group. Can you reproduce the figure? What is standing in your way?

3\. Take a figure from your recent paper and improve the likelihood that another researcher would be able to reproduce it. Where are the data and how would the researcher access them? What calculations were performed to summarize the data? What software was used to generate the figure? Is that software freely available? What steps would the researcher need to take to generate the figure? When you write your methods, what experience level are you writing for? Who should you be writing for? When you are confident that you have made the figure as reproducible as you can, give the instructions to several colleagues and ask for their feedback.

4\. Complete an audit of the reproducibility practices in your research group. Table 2 provides a rubric that someone working within the host-associated microbiome field might use to assess their research. Within your research group, modify this rubric to suit your needs. For your next paper, work to improve one element from the rubric and constantly be developing an ethic of fostering greater reproducibility.

5\. Many of the threats to reproducibility and replicability are a product of scientific culture: methods sections are terse or vague, original data are not available, analyses rely on expensive and proprietary software, analysis scripts are available "upon request from the authors", papers are published behind pay-walls. Some might give into despair thinking that one person or research group can only have a minor impact. Have a discussion within your group about why things are this way, whether your group's practices should change, and what would be the easiest and most impactful thing to change.



## Conclusion

A motivating concept to improve the reproducibility of one's research is that the most important collaborator is themselves six months ago, and old them does not have email access. Their second most important collaborator is the director of their research group. Anyone that has done research can attest to how difficult it can be to satisfying their two most important "collaborators". And yet, if can satisfy these collaborators, then we should be able to satisfy the third collaborator, the reader who hopes to build upon our work to generalize it or go in a new direction.

It is important to see that attempts to guard against threats to reproducibility, replicability, robustness, and generalizability are positive forces that will improve science. They have been considered a form of scientific "preventative medicine" [@Leek2015]. Although guarding against these threats is not a guarantee that the correct conclusion will be reached, the likelihood that the result is correct will be increased. Before attributing difficulties with reproducibility, replicability, robustness, and generalizability to a dim view of our fellow scientists as being sloppy, biased, or untrustworthy, it is worth seriously considering the many factors - biological, statistical, and sociological - that pose a threat. Although there is much room for improvement, we must acknowledge that science is a process of learning and that it is really f#$%ing hard.


## Acknowledgements

This work was supported in part by funding from the National Institutes of Health (5R25GM116149). I am grateful to Ada Hagan for providing comments on an early version of the manuscript and Kate Epstein for assisting me with language editing.


\newpage

***Table 1.*** Simple grid-based system for defining concepts that can be used to describe the validity of a result. This is a generalization of the approach used by Whitaker [@Whitaker2017] who used it to describe computational analyses.

\vspace{1cm}

\begin{center}
    \begin{tabular}{ | c | c | c |}
    \hline
		& \textbf{Same Experimental System} & \textbf{Different Experimental System} \\ \hline
		\textbf{Same Methods} & Reproducibility & Replicability \\ \hline
		\textbf{Different Methods} & Robustness & Generalizability \\
    \hline
    \end{tabular}
\end{center}

\newpage

***Table 2.*** An aspirational rubric for evaluating the practices host-associated microbiome researchers might use to increase the reproducibility and replicability of their work. Although many of the questions can be thought of as having a yes or no answer, a better approach would be to see the questions as being open ended with the real question being, "What can I do to improve the status of my project on this point?". With this in mind, a researcher is unlikely to have a project that satisfies the "Best" column for each line of the table. Researchers are encouraged to adapt the categories to modify the categories to suit their own needs.

\begin{center}
	\scriptsize\setstretch{0.9}
	\renewcommand{\arraystretch}{1.8}
  \begin{tabular}{ | P{3cm} | P{4cm} | P{4cm} | P{4cm} |}
  \hline
	\textbf{Practice} & \textbf{Good} & \textbf{Better} & \textbf{Best} \\ \hline
	Handling of confounding variables
	& Prior to generating data, did I identify a list of possible confounding variables - biological and technical - that may obscure the interpretation of my results?
	& Do I indicate the level of randomization and experimental blocking that I performed to minimize the effect of the confounding variables (i.e. batch effects)?
	& Does the interpretation of my results limit itself to only those variables that are not obviously confounded? \\ \hline

	Sex as confounding variables
	& Do I indicate the sex of research animals and participants?
	& Do I provide a justification for the lack of even representation?
	& Do I have even representation of male and females in my studies? Do I account for sex as a variable? \\ \hline

	Experimental design considerations
	& Do I have an active collaboration with a statistician who helps with experimental design and analysis?
	& Do I indicate the number of hypothesis tests I performed and have I corrected any P-values for multiple comparisons?
	& For my primary research questions, have I run a power analysis to determine the necessary sample size? \\ \hline

	Data analysis plan
	& Before starting an analysis, have I articulated a set of primary and secondary research questions
	& Has someone else reviewed my data analysis plan prior to analyzing the data?
	& Have I registered my data analysis plan with a third party before starting the project? \\ \hline

	Provenance of reagents
	& Do I include a table of the cell lines, strains, genotypes, and primer sequences that I used?
	& Where possible, have I obtained reagents from certified entities like the American Type Culture Collection (ATCC)?
	& Is there a statement indicating how I know the provenance and purity of each cell line and strain? \\ \hline

	Controlling for initial microbiota
	& Are mice obtained from a breeding facility that allows me to track their pedigree?
	& Where possible, are mice from different treatment groups co-housed to control for differences in initial microbiota?
	& Are comparisons between mice with different genotypes made using mice that are the result of matings between animals that are heterozygous for that genotype? \\ \hline

	Clarity of software descriptions
	& Are all methods, databases, and software tools cited? Do I follow the relevant licensing requirements of each tool?
	& Do I indicate dates and version numbers of websites that were used to obtain data, code, and other third party resources?
	& Are detailed methods registered on a website like protocols.io or GitHub? \\ \hline

	DNA contamination
	& Did I quantify the background DNA concentration in my reagents? Did I sequence an extraction control?
	& Am I taking steps to minimize reagent contamination?
	& What methods do I take to confirm a result that a sequencing result may be clouded by contaminating DNA? \\ \hline

	Availability of data products
	& Is all of the raw data publicly available?
	& Are intermediate and final data files publicly available?
	& Are tools like Amazon Machine Images (AMIs) used to make a snapshot of my working directory? \\ \hline

	Availability of metadata
	& Are all of the metadata necessary to repeat any analyses I performed publicly available?
	& Have I adhered to standards in releasing the minimal amount of metadata about my samples?
	& Did I go beyond the minimum to incorporate other pieces of metadata that will inform future studies? \\ \hline

	Data analysis organization
	& Are all data, code, results, and documentation housed within a monophyletic folder structure on my computer?
	& Is this project contained within a single directory on my computer and does it separate my raw and processed data, code, documentation, and results?
	& Is this folder structure under version control? Is the project's repository publicly available? Are there assurances that this repository will remain accessible? \\ \hline

	Availability of data analysis tools
	& Are free tools used in preference to proprietary commercial tools?
	& Is the computer code required to run analyses available through a service like GitHub?
	& Are Amazon Machine Images or Docker containers used to allow recreation of my work environment? \\ \hline

	Documentation of data analysis workflow
	& Is my code well documented? Do I use a self-commenting coding practice?
	& Do each of my scripts have a header indicating the inputs, outputs, and dependencies? Is it documented how files relate to each other?
	& Are automated workflow tools like GNU Make and CommonWL used to convert raw data into final tables, figures, and summary statistics? \\ \hline

	Use of random number generator
	& Do I know whether any of the steps in my data analysis workflow depend on the use of a random number generator?
	& For analyses that utilize a random number generator, have I noted the underlying random seed?
	& Have I repeated my analysis with multiple seeds to show that the results are insensitive to the choice of the seed? \\ \hline

	Defensive data analysis
	& Is my data analysis pipeline flexible enough to add new data?
	& Does my code include tests to confirm that it does what I think it does?
	& Do I make use of automated tests and continuous integration tools to insure internal reproducibility? \\ \hline

	Insuring short and longterm reproducibility
	& Did I release the underlying code and new data at the time of submitting a paper with their DOIs and accession numbers?
	& Did I include a reproducibility statement or declaration at the end of the manuscript? Are ORCID identifiers provided for all authors?
	& What mechanisms are in place to insure my analysis remains accessible and reproducible in 5 years? \\ \hline

	Open science to foster reproducibility
	& Have I released any embargoes on my code repository and raw data prior to submitting the manuscript?
	& Did I post a preprint version of my manuscript prior to submission?
	& Have I  published under a Creative Commons license? Is a permissive reuse license posted with my code \\ \hline

	Transparency of data analysis
	& Is it clear where one would go to find the data and processing steps behind any of my figures?
	& Are electronic notebooks publicly accessible and accompany the manuscript?
	& Were literate programming tools used to generate summary statistics, tables, and figures directly from the data?
	 \\ \hline
  \end{tabular}
\end{center}

\newpage

## References
