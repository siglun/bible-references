.TL
On Grundtvig and his use of bible references
.br  
Musings of a software developer
.AU
Sigfrid Lundberg
.AI
https://sigfrid-lundberg.se
.AB
.LP
Nikolaj Frederik Severin Grundtvig (1783-1872) is one of the most influential persons in Danish 19th century history. A polymath and very prolific writer and \(lqa pastor, author, poet, philosopher, historian, teacher and politician\(rq, as
.pdfhref L -D nfsgrundtvig Wikipedia (2003)
\&describes him. In this paper I present some data analyses on his use of the bible in his writing.
.AE
.SH
Introduction
.LP
Nikolaj Frederik Severin Grundtvig's use of different references to the bible varied a lot over time. I found that, Grundtvig referred to \f(CR\s-11 Kor 13,12\s+1\fP( \f(CR\s-11 Corinthians 13:12\s+1\fP): \fI \(lqFor now we see in a mirror dimly, but then face to face. Now I know in part; then I shall know fully, even as I have been fully known.\(rq\fP\**
.FS
.pdfhref W -D https://biblehub.com/1_corinthians/13-12.htm https://biblehub.com/1_corinthians/13-12.htm
(English)
.br
.pdfhref W -D https://www.bibelselskabet.dk/brugbibelen/bibelenonline/1_Kor/13 https://www.bibelselskabet.dk/brugbibelen/bibelenonline/1_Kor/13
(Danish)
.FE
in more works than any other bible reference, but he did so mostly before 1820. Intrigued by this observation I checked other references and found that he quoted \f(CR\s-11 Mos 1,27\s+1\fP  ( \f(CR\s-11 Genesis 1:27\s+1\fP)\**
.FS
.pdfhref W -D https://biblehub.com/genesis/1-27.htm https://biblehub.com/genesis/1-27.htm
(English)
.br
.pdfhref W -D https://www.bibelselskabet.dk/brugbibelen/bibelenonline/1_Mos/1 https://www.bibelselskabet.dk/brugbibelen/bibelenonline/1_Mos/1
.FE
That is, \fI \(lqSo God created man in his own image, in the image of God he created him; male and female he created them\(rq\fPwhich occurred mostly from 1855 to 1859. I discovered this when developing and testing the bible reference faceted search for the Center for Grundtvigforskning's and Det Kgl. Bibliotek's (2020)
.pdfhref L -D grundtvig-texter Grundtvigs Værker
\&, a part of the Royal Danish Library's Text Collections.
.LP
A bible reference is typically a string such as \f(CR\s-11 Kor 13,13\s+1\fP  (or \f(CR\s-11 Corinthians 13:13\s+1\fP). There is an ambiguity in the usage, since it denotes both the reference and the text in the scripture, where it refers to \fI \(lqAnd now these three remain: faith, hope and love. But the greatest of these is love.\(rq\fP\**
.FS
.pdfhref W -D https://biblehub.com/1_corinthians/13-13.htm https://biblehub.com/1_corinthians/13-13.htm
(English)
.br
.pdfhref W -D https://www.bibelselskabet.dk/brugbibelen/bibelenonline/1_Kor/13 https://www.bibelselskabet.dk/brugbibelen/bibelenonline/1_Kor/13
(Danish)
.FE
I will try to use the term \fIbible reference\fP  when discussing Grundtvig's usage it, whereas use \fIbible location\fP  when referring to the scripture. This is somewhat like a word in the text and the same word in a dictionary. The naming of bible locations differs between Danish and English. I will try to give both references when it is needed for following the text.
.LP
The complexity of bible references and locations is that they are semantic units, hypertext links and inter-textual objects, all at the same time. As semantic units they are abstract indicator of what a text is about, an indicator of its aboutishness (in Digital Library jargon). They are almost certainly also a text adornment, a piece of jewellery if you like.
.LP
Grundtvig referred to \f(CR\s-11 Kor 13,12\s+1\fP  41 times, but he liked the preceding verse even more, since he referred to \f(CR\s-11 Kor 13,12\s+1\fP  (as mentioned above) 54 times. The number of times a given bible location is referred to as presented in this paper depends on two factors, where the number of times he actually used is just one. The other one is the philologists effort to identify the references, and their ability to do so in a text where the references are just vague hints of a location. Hence there are some possible systematic errors hidden here: Not all works are equal and philologists might invest more in some important ones than in other. Also, I can imagine that bible references could be more difficult to identify in poetry and fiction where the intellectual practice does not force an author to make clear references. Finally, the goal of an edition project is not to provide data for text mining and quantitative analyses.
.LP
The Grundtvig data for the portal comes from the Århus university's (2009)
.pdfhref L -D grundtvig-center Center for Grundtvigforskning,
\&the publisher of
.pdfhref L -D grundtvig-vaerker Grundtvigs Værker.
\&(I refer to the scientific edition of Grundtvig's works as GV in the following.) What you find below is an outline of my analysis of of his bible references.
.SH
Analyses
.LP
The philologists at the Grundtvig centre has identified 11499 bible references in the GV. They refer to 4637 locations, i.e., Grundtvig referred to each location 2.5 times on the average. In reality there are large number of bible locations that just appear once in a reference, whereas he had a number of favourites which is cited 60 to 70 times in the corpus.
.KF  
.pdfhref M -N figure1
.PDFPIC distribution.pdf 12.0c 7.2c
.sp
.QP
.vs -2
\s-2Figure 1. The distributions showing the frequency for different numbers of references, for in verse references (solid curve, bullets) and references occurring i prose (dashed curves, open triangels). Note the logarithmic scale on the y-axis.\s+2
.vs
.sp
.KE
.sp
.LP
For the prose there are in total 2663 bible locations. The distribution is such that there are 1477 locations that are referenced once, 670 twice and 468 locations used 3 to 9 times. At the other end, one location \f(CR\s-11 Mos 1,27\s+1\fP  (i.e., \f(CR\s-11 Genesis 1:27\s+1\fP) is referenced 52 times. Of those 2663 locations, only a small fraction, 48 locations, are referenced 10 and more times.
.LP
For verse there are 2094 locations. 431 are referenced once, 1321 twice, 313 3 to 9 times, and 21 are used 10 or more times. His absolute favorite for verse is \f(CR\s-11 Mos 2,7\s+1\fP  (i.e., \f(CR\s-11 Genesis 2:7\s+1\fP).
.LP
The distributions of bible references for verse and prose can be seen in
.pdfhref L -D figure1 Figure 1
\&. It visualizes the observations mentioned. For references occurring in verse, the distribution starts lower and actually increases towards a peak, whereas for prose it decreases initially. Grundtvig seem to have more or less different favourite bible locations in verse and prose. See
.pdfhref L -D table1 Table 1
\&and
.pdfhref L -D table2 Table 2
\&, respectively.
.LP
It is interesting that it is these two locations in Genesis that holds the top positions. Grundtvig's choice for prose is from the Priestly narrative, and his preference for verse comes the Jahwist story (see
.pdfhref L -D creation-narratives Wikipedia 2004
\&). The two quotes reads, \fI \(lqSo God created man in his own image, in the image of God he created him; male and female he created them\(rq\fP  ( \f(CR\s-11 Mos 1,27\s+1\fP) and \fI \(lqthen the Lord God formed the man of dust from the ground and breathed into his nostrils the breath of life, and the man became a living creature\(rq\fP  ( \f(CR\s-11 Mos 2,7\s+1\fP) respectivly.
.LP
Obviously, we cannot know, but somehow the two fill the same role in his writing of prose and verse, and that he basically find that the Jahwist narrative more poetic.
.LP
I use the counts of individual bible references to compare all the years of Grundtvig's professional life.
.LP
The are some debate on important dates in Grundtvig's career. \fI \(lqWithin the ever-growing bulk of Grundtvig studies, the years 1810, 1825, 1832, 1835, 1838, 1839, and 1848 are competing for scholarly attention.\(rq\fP, writes
.pdfhref L -D entropicdecay Nielbo et al. (2019)
\&. In a detailed schedule of events in his life,
.pdfhref L -D crisis1810 Engebretsen (2008)
\&points out the years 1810, 1844, 1853, 1867 as life crises.
.pdfhref L -D crisis1844 Thodberg (2005)
\&writes about the crisis 1844.
.KF  
.pdfhref M -N figure2
.PDFPIC refs_1_Genesis_1_27.pdf 12.0c 7.2c
.sp
.QP
.vs -2
\s-2Figure 2. Grundtvig's use of 1 Genesis 1:27 in verse (solid curve) and prose (dashed curve)\s+2
.vs
.sp
.KE
.sp
.KF  
.pdfhref M -N figure3
.PDFPIC refs_1_Genesis_2_7.pdf 12.0c 7.2c
.sp
.QP
.vs -2
\s-2Figure 3. Grundtvig's use of 1 Genesis 2:7 in verse (solid curve) and prose (dashed curve)\s+2
.vs
.sp
.KE
.sp
.KF  
.pdfhref M -N figure4
.PDFPIC refs_john_6_23.pdf 12.0c 7.2c
.sp
.QP
.vs -2
\s-2Figure 4. Grundtvig's use of John 6:23.\s+2
.vs
.sp
.KE
.sp
.KF  
.pdfhref M -N figure5
.PDFPIC refs_matt_16_18.pdf 12.0c 7.2c
.sp
.QP
.vs -2
\s-2Figure 5. Grundtvig's use of Matthew 16:18.\s+2
.vs
.sp
.KE
.sp
.KF  
.pdfhref M -N figure6
.PDFPIC refs_proverbs_4_23.pdf 12.0c 7.2c
.sp
.QP
.vs -2
\s-2Figure 6. Grundtvig's use of Proverbs 4:23.\s+2
.vs
.sp
.KE
.sp
.KF  
.pdfhref M -N figure7
.PDFPIC refs_psalm_23_4.pdf 12.0c 7.2c
.sp
.QP
.vs -2
\s-2Figure 7. Grundtvig's use of Psalm 23:4.\s+2
.vs
.sp
.KE
.sp
.KF  
.pdfhref M -N figure8
.PDFPIC cladogram-prose.pdf 12.0c 7.2c
.PDFPIC cladogram-poetry.pdf 12.0c 7.2c
.sp
.QP
.vs -2
\s-2Figure 8.\s+2
.vs
.sp
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
.pdfhref M -N creation-narratives
Wikipedia,
2004. Genesis creation narrative.  In:
\fIWikipedia, the free encyclopedia\fP 
.br  
\s-2\f(CR
.pdfhref W -D https://en.wikipedia.org/wiki/Genesis_creation_narrative https://en.wikipedia.org/wiki/Genesis_creation_narrative
\fP\s+2
.XP
.pdfhref M -N grundtvig-center
Århus university,
2010. \fICenter for Grundtvigforskning\fP 
.br  
\s-2\f(CR
.pdfhref W -D https://grundtvigcenteret.au.dk/ https://grundtvigcenteret.au.dk/
\fP\s+2
.KF
.pdfhref M -N table1
.sp
.QP
.vs -2
\s-2Table 1. The five most frequent bible references for verse\s+2
.vs
.sp
.TS
tab(;);
lb lb lb ;
l l l .
T{
\s-2Number of usages\s+2
T};T{
\s-2Bible location\s+2
T};T{
\s-2Text\s+2
T}
_
T{
.na
\s-216\s+2
T};T{
.na
\s-2Ordsp 20,28 (Proverbs 20:28)\s+2
T};T{
.na
\s-2Steadfast love and faithfulness preserve the king, and by steadfast love his throne is upheld.\s+2
T}
T{
.na
\s-217\s+2
T};T{
.na
\s-2Sl 23,4 (Psalm 23:4)\s+2
T};T{
.na
\s-2Even though I walk through the valley of the shadow of death, I will fear no evil, for you are with me; your rod and your staff, they comfort me.\s+2
T}
T{
.na
\s-218\s+2
T};T{
.na
\s-2Ordsp 4,23 (Proverbs 4:23)\s+2
T};T{
.na
\s-2Keep your heart with all vigilance, for from it flow the springs of life.\s+2
T}
T{
.na
\s-219\s+2
T};T{
.na
\s-2Joh 6,63 (John 6:63)\s+2
T};T{
.na
\s-2It is the Spirit who gives life; the flesh is no help at all. The words that I have spoken to you are spirit and life.\s+2
T}
T{
.na
\s-220\s+2
T};T{
.na
\s-2Matt 16,18 (Matthew 16:18)\s+2
T};T{
.na
\s-2And I tell you, you are Peter, and on this rock I will build my church, and the gates of hell shall not prevail against it.\s+2
T}
T{
.na
\s-234\s+2
T};T{
.na
\s-21 Mos 2,7 (1 Genesis 2:7)\s+2
T};T{
.na
\s-2then the Lord God formed the man of dust from the ground and breathed into his nostrils the breath of life, and the man became a living creature.\s+2
T}
.TE
.KE
.KF
.pdfhref M -N table2
.sp
.QP
.vs -2
\s-2Table 2. The two most frequent bible references for prose is in Table 2 (ctd), these are the remaining three.\s+2
.vs
.sp
.TS
tab(;);
lb lb lb ;
l l l .
T{
\s-2Number of usages\s+2
T};T{
\s-2Bible location\s+2
T};T{
\s-2Text\s+2
T}
_
T{
.na
\s-231\s+2
T};T{
.na
\s-21 Kor 13,13 (1 Corinthians 13:13)\s+2
T};T{
.na
\s-2So now faith, hope, and love abide, these three; but the greatest of these is love.\s+2
T}
T{
.na
\s-231\s+2
T};T{
.na
\s-2Joh 1,14 (John 1:14)\s+2
T};T{
.na
\s-2And the Word became flesh and dwelt among us, and we have seen his glory, glory as of the only Son from the Father, full of grace and truth.\s+2
T}
T{
.na
\s-239\s+2
T};T{
.na
\s-2Matt 16,18 (Matthew 16:18)\s+2
T};T{
.na
\s-2And I tell you, you are Peter, and on this rock I will build my church, and the gates of hell shall not prevail against it.\s+2
T}
T{
.na
\s-240\s+2
T};T{
.na
\s-2Joh 8,44 (John 8:44)\s+2
T};T{
.na
\s-2You are of your father the devil, and your will is to do your father's desires. He was a murderer from the beginning, and does not stand in the truth, because there is no truth in him. When he lies, he speaks out of his own character, for he is a liar and the father of lies.\s+2
T}
.TE
.KE
.KF
.pdfhref M -N table2ctd
.sp
.QP
.vs -2
\s-2Table 2 (ctd). The two most frequent bible references for prose. The second used one contains references to two locations. See Table 2 for the rest.\s+2
.vs
.sp
.TS
tab(;);
lb lb lb ;
l l l .
T{
\s-2Number of usages\s+2
T};T{
\s-2Bible location\s+2
T};T{
\s-2Text\s+2
T}
_
T{
.na
\s-243\s+2
T};T{
.na
\s-2Matt 28,18-20 og Matt 26,26-29 (Matthew 28:18-20 and Matthew 26:26-29)\s+2
T};T{
.na
\s-2And Jesus came and said to them, “All authority in heaven and on earth has been given to me. Go therefore and make disciples of all nations, baptizing them in[a] the name of the Father and of the Son and of the Holy Spirit, teaching them to observe all that I have commanded you. And behold, I am with you always, to the end of the age.”\s+2
T}
T{
.na
\s-2\s+2
T};T{
.na
\s-2\s+2
T};T{
.na
\s-2Now as they were eating, Jesus took bread, and after blessing it broke it and gave it to the disciples, and said, “Take, eat; this is my body.” And he took a cup, and when he had given thanks he gave it to them, saying, “Drink of it, all of you, for this is my blood of the covenant, which is poured out for many for the forgiveness of sins. I tell you I will not drink again of this fruit of the vine until that day when I drink it new with you in my Father's kingdom.”\s+2
T}
T{
.na
\s-252\s+2
T};T{
.na
\s-21 Mos 1,27 (1 Genesis 1:27)\s+2
T};T{
.na
\s-2So God created man in his own image, in the image of God he created him; male and female he created them\s+2
T}
.TE
.KE
