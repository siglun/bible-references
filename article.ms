.TL
On Grundtvig and his use of bible references
.br  
Musings of a software developer
.AU
Sigfrid Lundberg
.AI
slu@kb.dk
Digital Transformation
Royal Danish Library
Post box 2149
1016 Copenhagen K
Denmark
.AB
.AE
.SH
Introduction
.LP
Nikolaj Frederik Severin Grundtvig is one of the most influential persons in Danish history. He was a polymath and very prolific writer, \(lqa pastor, author, poet, philosopher, historian, teacher and politician\(rq, as
.pdfhref L -D nfsgrundtvig Wikipedia (2003)
\&describes him. In this paper I present some data analyses on his use of the bible in his writing.
.LP
His use of different locations in the scripture varied a lot over time. I found that, Grundtvig referred to
\f(CR1 Kor 13,12\fP
\**
.FS
.pdfhref W -D https://biblehub.com/1_corinthians/13-12.htm https://biblehub.com/1_corinthians/13-12.htm
(English)
.br
.pdfhref W -D https://www.bibelselskabet.dk/brugbibelen/bibelenonline/1_Kor/13 https://www.bibelselskabet.dk/brugbibelen/bibelenonline/1_Kor/13
(Danish)
.FE
in more works than any other bible reference, but he did so mostly before 1820. Intrigued by this observation I checked other references and found that he quoted
\f(CR1 Mos 1,27\fP
(or
\f(CR1 genesis 1:27\fP
)\**
.FS
.pdfhref W -D https://biblehub.com/genesis/1-27.htm https://biblehub.com/genesis/1-27.htm
(English)
.br
.pdfhref W -D https://www.bibelselskabet.dk/brugbibelen/bibelenonline/1_Mos/1 https://www.bibelselskabet.dk/brugbibelen/bibelenonline/1_Mos/1
.FE
(i.e.,
\fISo God created man in his own image, in the image of God he created him; male and female he created them\fP
) mostly from 1855 to 1859. I discovered this when developing and testing the
\fIfind bible references\fP
feature for the Center for Grundtvigforskning's and Det Kgl. Bibliotek's (2020)
.pdfhref L -D grundtvig-texter Grundtvigs Værker
\&, which is a part of the Royal Danish Library's Text Collections.
.LP
A bible reference is typically a string such as
\f(CR1 Kor 13,13\fP
(or
\f(CR1 chorinthians 13:13\fP
). There is an ambiguity in the usage, since we use it both to denote the reference to the scripture, and the actual text it refers to. Namely:
\fIAnd now these three remain: faith, hope and love. But the greatest of these is love.\fP
\**
.FS
.pdfhref W -D https://biblehub.com/1_corinthians/13-13.htm https://biblehub.com/1_corinthians/13-13.htm
(English)
.br
.pdfhref W -D https://www.bibelselskabet.dk/brugbibelen/bibelenonline/1_Kor/13 https://www.bibelselskabet.dk/brugbibelen/bibelenonline/1_Kor/13
(Danish)
.FE
I will try to use the term
\fIbible reference\fP
when discussing how Grundtvig is using it, whereas use
\fIbible location\fP
when talking on the scripture.
.LP
Grundtvig referred to
\f(CR1 Kor 13,12\fP
41 times, but he liked verse before that one even more, since he referred to
\f(CR1 Kor 13,12\fP
(as mentioned above) 54 times. The number of times a given bible location is referred to as presented in this paper depends on two factors, where the number of times he actually used is just one. The other one is the philologists effort to identify the references, and their ability to identify a reference in a text which is only vaguely hinting to the location.
.LP
The Grundtvig data for the portal comes from the Århus university's (2009)
.pdfhref L -D grundtvig-center Center for Grundtvigforskning,
\&the publisher of
.pdfhref L -D grundtvig-vaerker Grundtvigs Værker.
\&(I refer to the scientific edition of Grundtvig's works as GV in the following.) What you find below is an outline of my analysis of of his bible references.
.SH
Analyses
.LP
The philologists at the Grundtig centre has identified 11499 references to the bible in the GV. They refer to 4637 different locations in the bible, i.e., he uses each location 2.5 times on the average. In reality there are large number of bible locations that just appear once in a reference, whereas there are a number of favourates which is cited 60 to 70 times in the corpus. (
.pdfhref L -D figure1 Figure 1
\&)
.KF
.PDFPIC distribution.pdf 12.0c 7.2c
.sp
.QP
\s-2Figure 1. The distributions showing the bible location counts for different numbers of references, for all references (solid curve) and references occuring i verse (dashed curves). Note the logarithmic scale on the y-axis. For the former distribution, there are some 3605 locations that are referenced once or twice and 805 more locations used 3 to 6 times. At the other end, only one location
\f(CRMatt 16,18\fP
is referenced 66 times. There are 227 bible locations that are referenced 7 and more times. The main difference between the two distributions is that the one related to verse has much lower proportion of bible locations that are referenced at the low end. Note that the dashed curve starts lower and actually increases towards a peak.\s+2
.KE
.sp
.LP
I use the counts of individual bible references to compare all the years of Grundtvig's professional life.
.KF
.PDFPIC refs_per_year.pdf 12.0c 7.2c
.sp
.QP
\s-2Figure 2.\s+2
.KE
.sp
.KF
.PDFPIC selected_refs_per_year.pdf 12.0c 7.2c
.sp
.QP
\s-2Figure 3.\s+2
.KE
.sp
.KF
.PDFPIC refs_in_poetry_per_year.pdf 12.0c 7.2c
.sp
.QP
\s-2Figure 4.\s+2
.KE
.sp
.KF
.PDFPIC selected_poetry_refs_per_year.pdf 12.0c 7.2c
.sp
.QP
\s-2Figure 5.\s+2
.KE
.sp
.KF
.PDFPIC cladogram.pdf 12.0c 7.2c
.sp
.QP
\s-2Figure 6.\s+2
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
