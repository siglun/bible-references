.TL
On Grundtvig and his use of bible references
.br  
Musings of a software developer
.AU
Sigfrid Lundberg
.AI
sigfrid at sigfrid-lundberg.se
.AB
.AE
.SH
Introduction
.LP
Nikolaj Frederik Severin Grundtvig (1783-1872) is one of the most influential persons in Danish 19th-century history. A polymath and very prolific writer and \(lqa pastor, author, poet, philosopher, historian, teacher and politician\(rq, as
.pdfhref L -D nfsgrundtvig Wikipedia (2003)
\&describes him. In this paper I present some data analyses on his use of the bible in his writing.
.LP
His use of different bible references in the scripture varied a lot over time. I found that, Grundtvig referred to \f(CR1 Kor 13,12\fP: \fI \(lqFor now we see in a mirror dimly, but then face to face. Now I know in part; then I shall know fully, even as I have been fully known.\(rq\fP\**
.FS
.pdfhref W -D https://biblehub.com/1_corinthians/13-12.htm https://biblehub.com/1_corinthians/13-12.htm
(English)
.br
.pdfhref W -D https://www.bibelselskabet.dk/brugbibelen/bibelenonline/1_Kor/13 https://www.bibelselskabet.dk/brugbibelen/bibelenonline/1_Kor/13
(Danish)
.FE
in more works than any other bible reference, but he did so mostly before 1820. Intrigued by this observation I checked other references and found that he quoted \f(CR1 Mos 1,27\fP  (or \f(CR1 genesis 1:27\fP)\**
.FS
.pdfhref W -D https://biblehub.com/genesis/1-27.htm https://biblehub.com/genesis/1-27.htm
(English)
.br
.pdfhref W -D https://www.bibelselskabet.dk/brugbibelen/bibelenonline/1_Mos/1 https://www.bibelselskabet.dk/brugbibelen/bibelenonline/1_Mos/1
.FE
That is, \fI \(lqSo God created man in his own image, in the image of God he created him; male and female he created them\(rq\fPwhich occured mostly from 1855 to 1859. I discovered this when developing and testing the bible reference faceted search for the Center for Grundtvigforskning's and Det Kgl. Bibliotek's (2020)
.pdfhref L -D grundtvig-texter Grundtvigs Værker
\&, a part of the Royal Danish Library's Text Collections.
.LP
The are some debaten on important dates in Grundvigs career. \fI \(lqWithin the ever-growing bulk of Grundtvig studies, the years 1810, 1825, 1832, 1835, 1838, 1839, and 1848 are competing for scholarly attention.\(rq\fP, writes
.pdfhref L -D entropicdecay Nielbo et al. (2019)
\&. In a detailed schedule of events in his life,
.pdfhref L -D crisis1810 Engebretsen (2008)
\&points out the years 1810, 1844, 1853, 1867 as life crises.
.pdfhref L -D crisis1844 Thodberg (2005)
\&writes about the crisis 1844.
.LP
A bible reference is typically a string such as \f(CR1 Kor 13,13\fP  (or \f(CR1 chorinthians 13:13\fP). There is an ambiguity in the usage, since it denotes both the reference and the text in the scripture, where it refers to \fI \(lqAnd now these three remain: faith, hope and love. But the greatest of these is love.\(rq\fP\**
.FS
.pdfhref W -D https://biblehub.com/1_corinthians/13-13.htm https://biblehub.com/1_corinthians/13-13.htm
(English)
.br
.pdfhref W -D https://www.bibelselskabet.dk/brugbibelen/bibelenonline/1_Kor/13 https://www.bibelselskabet.dk/brugbibelen/bibelenonline/1_Kor/13
(Danish)
.FE
I will try to use the term \fIbible reference\fP  when discussing how Grundtvig is using it, whereas use \fIbible location\fP  when talking on the scripture. This is somewhat like a word in the text and the same word in a dictionary.
.LP
The complexity of bible references and locations is that they are semantic units, hypertext links and intertextual objects, all at the same time.
.LP
Grundtvig referred to \f(CR1 Kor 13,12\fP  41 times, but he liked the preceeding verse even more, since he referred to \f(CR1 Kor 13,12\fP  (as mentioned above) 54 times. The number of times a given bible location is referred to as presented in this paper depends on two factors, where the number of times he actually used is just one. The other one is the philologists effort to identify the references, and their ability to identify them in a text where there might be references that just vague hints of a location. Hence there are some possible systematic errors hidden here: Not all works are equal and philologists might invest more in some important ones than others. Also, I can imagine that bible references could be more difficult to identify in poetry and fiction where the intellectual practice does not force an author to make clear references. Finally, the goal of an edition project is not to provide data for text mining and quantitative analyses.
.LP
The Grundtvig data for the portal comes from the Århus university's (2009)
.pdfhref L -D grundtvig-center Center for Grundtvigforskning,
\&the publisher of
.pdfhref L -D grundtvig-vaerker Grundtvigs Værker.
\&(I refer to the scientific edition of Grundtvig's works as GV in the following.) What you find below is an outline of my analysis of of his bible references.
.SH
.SH
Table 1. The five most frequest bible references for verse
.LP
.TS
tab(;);
lb lb ;
l l .
T{
\s-2Frequencey\s+2
T};T{
\s-2Bible location\s+2
T}
_
.TE
.SH
.SH
Table 2. The five most frequest bible references for prose
.LP
.TS
tab(;);
lb lb ;
l l .
T{
\s-2Frequencey\s+2
T};T{
\s-2Bible location\s+2
T}
_
.TE
.SH
Analyses
.LP
The philologists at the Grundtig centre has identified 11499 bible references in the GV. They refer to 4637 locations, i.e., Grundtvig referred to each location 2.5 times on the average. In reality there are large number of bible locations that just appear once in a reference, whereas he had a number of favourites which is cited 60 to 70 times in the corpus. The distribution of bible references for text in verse and the entire corpus can be seen in
.pdfhref L -D figure1 Figure 1
\&. For the latter distribution, there are some 3605 locations that are referenced once or twice and 805 more locations used 3 to 6 times. At the other end, only one location \f(CRMatt 16,18\fP  is referenced 66 times. Of those 4637 locations, only a small fraction, 227 bible locations, are referenced 7 and more times.
.LP
Note that the dashed curve, related to references occurring in verse, starts lower and actually increases towards a peak. The main difference between the two distributions is that Grundtvig is more inclined to use his favourite bible locations in verse, and he is not
.KF  
.pdfhref M -N figure1
.PDFPIC distribution.pdf 12.0c 7.2c
.sp
.QP
.vs -2
\s-2Figure 1. The distributions showing the bible location counts for different numbers of references, for all references (solid curve) and references occurring i verse (dashed curves). Note the logarithmic scale on the y-axis.\s+2
.vs
.KE
.sp
.LP
I use the counts of individual bible references to compare all the years of Grundtvig's professional life.
.KF
.PDFPIC refs_per_year.pdf 12.0c 7.2c
.sp
.QP
.vs -2
\s-2Figure 2.\s+2
.vs
.KE
.sp
.KF
.PDFPIC selected_refs_per_year.pdf 12.0c 7.2c
.sp
.QP
.vs -2
\s-2Figure 3.\s+2
.vs
.KE
.sp
.KF
.PDFPIC refs_in_poetry_per_year.pdf 12.0c 7.2c
.sp
.QP
.vs -2
\s-2Figure 4.\s+2
.vs
.KE
.sp
.KF
.PDFPIC selected_poetry_refs_per_year.pdf 12.0c 7.2c
.sp
.QP
.vs -2
\s-2Figure 5.\s+2
.vs
.KE
.sp
.KF
.PDFPIC cladogram.pdf 12.0c 7.2c
.sp
.QP
.vs -2
\s-2Figure 6.\s+2
.vs
.KE
.sp
.SH
Discussion
.LP
.SH
References
.XP
.pdfhref M -N grundtvig-texter
Center for Grundtvigforskning,  and Det Kgl. Bibliotek,
2020. Grundtvigs Værker.  In:
\fIDet Kgl. Biblioteks tekstportal\fP 
.br  
\s-2\f(CR
.pdfhref W -D https://tekster.kb.dk/gv https://tekster.kb.dk/gv
\fP\s+2
.XP
.pdfhref M -N grundtvig-vaerker
Center for Grundtvigforskning,
2010. \fIGrundtvigs Værker\fP 
.br  
\s-2\f(CR
.pdfhref W -D http://grundtvigsvaerker.dk/ http://grundtvigsvaerker.dk/
\fP\s+2
.XP
.pdfhref M -N crisis1810
Engebretsen, Else Bang,
2008. \fIGrundtvig Kriseåret 1810/1811 - Anfægtelser eller galskab?\fP 
.br  
\s-2\f(CR
.pdfhref W -D http://urn.nb.no/URN:NBN:no-21152 http://urn.nb.no/URN:NBN:no-21152
\fP\s+2
.XP
.pdfhref M -N entropicdecay
Nielbo, Kristoffer L., Katrine F. Baunvig, Bin Liu,  and Jianbo Gao,
2019. A curious case of entropic decay: Persistent complexity in textual cultural heritage.  In:
\fIDigital Scholarship in the Humanities\fP Vol. 34(3), pp. 542-557. 
.br  
\s-2\f(CR
.pdfhref W -D https://doi.org/10.1093/llc/fqy054 https://doi.org/10.1093/llc/fqy054
\fP\s+2
.XP
.pdfhref M -N crisis1844
Thodberg, ChristianGrundtvigs krise i foråret 1844. Forholdet mellem prædiken og salme med henblik på “Sov sødt, Barnlille”.  In:
\fIGrundtvig-Studier\fP Vol. 56(1), pp. 38-67. 
.br  
\s-2\f(CR
.pdfhref W -D https://doi.org/10.7146/grs.v56i1.16469 https://doi.org/10.7146/grs.v56i1.16469
\fP\s+2
.XP
.pdfhref M -N nfsgrundtvig
Wikipedia,
2003. N. F. S. Grundtvig.  In:
\fIWikipedia, the free encyclopedia\fP 
.br  
\s-2\f(CR
.pdfhref W -D https://en.wikipedia.org/wiki/N._F._S._Grundtvig https://en.wikipedia.org/wiki/N._F._S._Grundtvig
\fP\s+2
.XP
.pdfhref M -N grundtvig-center
Århus university,
2010. \fICenter for Grundtvigforskning\fP 
.br  
\s-2\f(CR
.pdfhref W -D https://grundtvigcenteret.au.dk/ https://grundtvigcenteret.au.dk/
\fP\s+2
