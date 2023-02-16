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
.vs -2
.ps -2
Nikolaj Frederik Severin Grundtvig (1783-1872) is one of the most influential persons in Danish 19th century history. A polymath and very prolific writer and \(lqa pastor, author, poet, philosopher, historian, teacher and politician\(rq, as
.pdfhref L -D nfsgrundtvig Wikipedia (2003)
\&describes him. In this paper I present some data analyses on his use of the bible in his writing.
.AE
.SH
Introduction
.LP
Nikolaj Frederik Severin Grundtvig's use of bible references in his writings varied a lot over time. I discovered this when testing the bible reference faceted search for the Center for Grundtvigforskning's and Det Kgl. Bibliotek's (2020)
.pdfhref L -D grundtvig-texter Grundtvigs Værker,
\&a part of the Royal Danish Library's Text Collections. It turned out that Grundtvig referred to \f(CR\s-11 Corinthians 13:12\s+1\fP \fI \(lqFor now we see in a mirror dimly, but then face to face. Now I know in part; then I shall know fully, even as I have been fully known.\(rq\fP\**
.FS
.pdfhref W -D https://biblehub.com/1_corinthians/13-12.htm https://biblehub.com/1_corinthians/13-12.htm
.FE
in more works than any other bible reference, but he did so mostly before 1820. Intrigued by this observation I checked other references and found that he quoted \f(CR\s-1Genesis 1:27\s+1\fP\**
.FS
.pdfhref W -D https://biblehub.com/genesis/1-27.htm https://biblehub.com/genesis/1-27.htm
.FE
That is, \fI \(lqSo God created man in his own image, in the image of God he created him; male and female he created them\(rq\fPwhich occurred mostly from 1855 to 1859.
.LP
A bible reference is typically a string such as \f(CR\s-11 Corinthians 13:13\s+1\fP. There is an ambiguity in the usage, since it denotes both the reference and the text in the scripture, where it refers to \fI \(lqAnd now these three remain: faith, hope and love. But the greatest of these is love.\(rq\fP\**
.FS
.pdfhref W -D https://biblehub.com/1_corinthians/13-13.htm https://biblehub.com/1_corinthians/13-13.htm
.FE
I will try to use \fIbible reference\fP  when discussing how Grundtvig uses it, whereas use \fIbible location\fP  when referring to the scripture.
.LP
The complexity of bible references and locations is that they are semantic units, hypertext links and inter-textual objects, all at the same time. As semantic units they are abstract indicator of what a text is about, an indicator of its aboutishness (in Digital Library jargon). They are almost certainly also a text adornment, a piece of text jewellery if you like.
.KF
.pdfhref M -N table1
.sp
.QP
.vs -2
\s-2Table 1. The six most frequent bible references for verse\s+2
.vs
.sp
.TS
allbox tab(;) ;
lb lb ;
lw(10c) lw(2c) .
T{
.ps -2
Bible location
.ps +2
T};T{
.ps -2
# usages
.ps +2
T}
T{
.na
.pdfhref M -N proverbs20_28
\s-2Proverbs 20:28
.br
Steadfast love and faithfulness preserve the king, and by steadfast love his throne is upheld.\s+2
T};16
T{
.na
.pdfhref M -N psalm23_4
\s-2Psalm 23:4
.br
Even though I walk through the valley of the shadow of death, I will fear no evil, for you are with me; your rod and your staff, they comfort me.\s+2
T};17
T{
.na
.pdfhref M -N proverbs4_23
\s-2Proverbs 4:23
.br
Keep your heart with all vigilance, for from it flow the springs of life.\s+2
T};18
T{
.na
.pdfhref M -N john6_63
\s-2John 6:63
.br
It is the Spirit who gives life; the flesh is no help at all. The words that I have spoken to you are spirit and life.\s+2
T};19
T{
.na
.pdfhref M -N matthew16_18
\s-2Matthew 16:18
.br
And I tell you, you are Peter, and on this rock I will build my church, and the gates of hell shall not prevail against it.\s+2
T};20
T{
.na
.pdfhref M -N genesis2_7
\s-2Genesis 2:7
.br
then the Lord God formed the man of dust from the ground and breathed into his nostrils the breath of life, and the man became a living creature.\s+2
T};34
.TE
.sp
.KE
.LP
Grundtvig referred to \f(CR\s-1
.pdfhref L -D firstcorinthians_13_13 1 Corinthians 13:13
\&\s+1\fP  41 times, but he liked the preceding verse even more, since he referred to \f(CR\s-11 Corinthians 13:12\s+1\fP  (as mentioned above) 54 times. The number of times a given bible location is referred to as presented in this paper depends on two factors, where the number of times he actually used is just one. The other one is the philologists effort to identify the references, and their ability to do so in a text where the references are just vague hints of a location. Hence there are some possible systematic errors hidden here: Not all works are equal and philologists might invest more in some important ones than in other. Also, I can imagine that bible references could be more difficult to identify in poetry and fiction where the intellectual practice does not force an author to make clear references.
.LP
I have noticed one further thing using the search engine for
.pdfhref L -D grundtvig-texter Grundtvigs Værker,
\&namely that the number of works a reference appears in is not necessarily related to the number of times a reference is used. What you find below is an outline of my analysis of his use of bible references.
.SH
Materials and Methods
.LP
The Grundtvig data for the portal comes from the Århus university's (2009)
.pdfhref L -D grundtvig-center Center for Grundtvigforskning,
\&the publisher of
.pdfhref L -D grundtvig-vaerker Grundtvigs Værker.
\&(I refer to the scientific edition of Grundtvig's works as GV in the following.)
.LP
The texts are encoded
.pdfhref L -D teiguidelines according to TEI P5 guidelines.
\&Bible references are entered into the text in <rs> ... </rs> elements like this.
.DS L
\f(CR\s-2 
        <rs key="1 Mos 2,7" type="bible">1 Mos 2,7</rs>
        \fP
.DE
.LP
Which is a reference to
.pdfhref L -D genesis2_7 Genesis 2:7
\&. Often Grundtvig made the references less obvious, like this reference to Mathews 13:43 in a line of verse:
.DS L
\f(CR\s-2
        <l>Til det opgaaer 
        <rs type="bible" 
            key="Matt 13,43" 
            rend="allusion">i Sole-Glands</rs>!</l>
        \fP
.DE
.LP
The references are categorized into categories which can be found in the @rend attribute. In this case it is an \fIallusion\fP. The more generic   \fIreference\fP  is more common, and there are some other variants like \fIquote\fP. I haven't used these categories yet.
.LP
Most of the analyses presented are inspired by Kenneth Ward Church and his brilliant
.pdfhref L -D kennethchurch Unix™ for Poets.
\&The
.pdfhref L -D rlanguage cluster analyses was made using the language R,
\&see
.pdfhref L -D similarity Altuna Akalin (2020)
\& \fIComputational Genomics with R.\fPThe sources of my scripts and extracted data used is available on Github
.pdfhref L -D sources-for-this-note (Lundberg, 2022)
\&
.KF
.pdfhref M -N table2
.sp
.QP
.vs -2
\s-2Table 2. The six most frequent bible references for prose.\s+2
.vs
.sp
.TS
allbox tab(;) ;
lb lb ;
lw(10c) lw(2c) .
T{
.ps -2
Bible location
.ps +2
T};T{
.ps -2
# usages
.ps +2
T}
T{
.na
.pdfhref M -N firstcorinthians_13_13
\s-21 Corinthians 13:13
.br
So now faith, hope, and love abide, these three; but the greatest of these is love.\s+2
T};31
T{
.na
.pdfhref M -N john_1_14
\s-2John 1:14
.br
And the Word became flesh and dwelt among us, and we have seen his glory, glory as of the only Son from the Father, full of grace and truth.\s+2
T};31
T{
.na
.pdfhref M -N matthew_16_18
\s-2Matthew 16:18
.br
And I tell you, you are Peter, and on this rock I will build my church, and the gates of hell shall not prevail against it.\s+2
T};39
T{
.na
.pdfhref M -N john_8_44
\s-2John 8:44
.br
You are of your father the devil, and your will is to do your father's desires. He was a murderer from the beginning, and does not stand in the truth, because there is no truth in him. When he lies, he speaks out of his own character, for he is a liar and the father of lies.\s+2
T};40
T{
.na
.pdfhref M -N matthew_26_and_28
\s-2Matthew 28:18-20 and Matthew 26:26-29
.br
And Jesus came and said to them, “All authority in heaven and on earth has been given to me. Go therefore and make disciples of all nations, baptizing them in[a] the name of the Father and of the Son and of the Holy Spirit, teaching them to observe all that I have commanded you. And behold, I am with you always, to the end of the age.” and
.br
Now as they were eating, Jesus took bread, and after blessing it broke it and gave it to the disciples, and said, “Take, eat; this is my body.” And he took a cup, and when he had given thanks he gave it to them, saying, “Drink of it, all of you, for this is my blood of the covenant, which is poured out for many for the forgiveness of sins. I tell you I will not drink again of this fruit of the vine until that day when I drink it new with you in my Father's kingdom.”\s+2
T};43
T{
.na
.pdfhref M -N genesis_1_27
\s-2Genesis 1:27
.br
So God created man in his own image, in the image of God he created him; male and female he created them\s+2
T};52
.TE
.sp
.KE
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
For the prose there are in total 2663 bible locations. The distribution is such that there are 1477 locations that are referenced once, 670 twice and 468 locations used 3 to 9 times. At the other end, one location \f(CR\s-1
.pdfhref L -D genesis_1_27 Genesis 1:27
\&\s+1\fP  is referenced 52 times. Of those 2663 locations, only a small fraction, 48 locations, are referenced 10 and more times. Note that the reference which occurs in the largest number of texts and the one occurring the largest number times differ. He repeats the references.
.LP
For verse there are 2094 locations. 431 are referenced once, 1321 twice, 313 3 to 9 times, and 21 are used 10 or more times. His absolute favourite for verse is \f(CR\s-1
.pdfhref L -D genesis2_7 Genesis 2:7.
\&\s+1\fP
.LP
The distributions of bible references for verse and prose can be seen in
.pdfhref L -D figure1 Figure 1.
\&It visualizes the observations mentioned. For references occurring in verse, the distribution starts lower and actually increases towards a peak, whereas for prose it decreases initially. Grundtvig seem to have more or less different favourite bible locations in verse and prose. See
.pdfhref L -D table1 Table 1
\&and
.pdfhref L -D table2 Table 2
\&, respectively. They contain the six most frequently used locations for each type of text.
.LP
It is interesting that it is two different locations in Genesis that holds the top positions. Grundtvig's choice for prose is from the Priestly narrative, and his preference for verse comes the Jahwist story (see
.pdfhref L -D creation-narratives Wikipedia 2004).
\&The two quotes are in  
.pdfhref L -D genesis_1_27 Table 2
\&and
.pdfhref L -D genesis2_7 Table 1,
\&respectivly. Obviously, we cannot know, but somehow the two could fill the same role in his writing of prose and verse, respectively. It could be that he basically find that the Jahwist narrative more poetic.
.KF  
.pdfhref M -N figure2
.PDFPIC refs_genesis_1_27.pdf 12.0c 7.2c
.sp
.QP
.vs -2
\s-2Figure 2. Grundtvig's use of Genesis 1:27 in verse (solid curve) and prose (dashed curve)\s+2
.vs
.sp
.KE
.sp
.KF  
.pdfhref M -N figure3
.PDFPIC refs_genesis_2_7.pdf 12.0c 7.2c
.sp
.QP
.vs -2
\s-2Figure 3. Grundtvig's use of Genesis 2:7 in verse (solid curve) and prose (dashed curve)\s+2
.vs
.sp
.KE
.sp
.LP
I have used the counts of some of the most frequently used individual bible references to compare all the years of Grundtvig's professional life. To continue with his references to Genesis, he not only refers to Genesis 1:27 mostly in prose, he does no fairly early and late in in his career
.pdfhref L -D figure2 (Figure 2),
\&whereas he refers to Genesis 2:7 more in poetry but he does so between 1830–1840 in the midst of his career.
.LP
There are ongoing discussions on what dates that are most significant in Grundtvig's career. \fI \(lqWithin the ever-growing bulk of Grundtvig studies, the years 1810, 1825, 1832, 1835, 1838, 1839, and 1848 are competing for scholarly attention.\(rq\fP, writes
.pdfhref L -D entropicdecay Nielbo et al. (2019)
\&. On the other hand, other authors points to entirely different dates. For instance, in a detailed schedule of events in his life,
.pdfhref L -D crisis1810 Engebretsen (2008)
\&points out the years 1810, 1844, 1853, 1867 as life crises.
.pdfhref L -D crisis1844 Thodberg (2005)
\&writes about the crisis 1844.
.LP
I find it premature to try to correlate my findings to important events in the life of N.F.S. Grundtvig, other than the publication dates of his writings. For instance, \fISang-Værk til den Danske Kirke\fP, with psalms and song appeared during that period, and so did are collections of psalms, songs and poetry
.pdfhref L -D grundtvig-kronologi (Center for Grundtvigforskning, 2010-).
\&
.LP
.pdfhref L -D john6_63 John 6:63, Table 1
\&does not reach the top 6 list for prose, only for verse. Numerically, this passage is roughly the same for both genres
.pdfhref L -D figure4 (Figure 4)
\&, but that is mainly due to the fact that Grundtvig actually writes much more prose than verse. It seems that
.pdfhref L -D matthew16_18 Matthew 16:18, Table 1
\&is important for Grundtvig, it reaches top 6 list for both verse and prose
.pdfhref L -D matthew_16_18 (Matthew 16:18, Table 2)
\&. Again you see how it appears in prose early and late in his career, and in verse during 1830-1840. This one is about the church. He is returning to this one over and over again, in (I believe) his role as pastor in the Church of Denmark.
.KF  
.pdfhref M -N figure4
.PDFPIC refs_john_6_23.pdf 12.0c 7.2c
.sp
.QP
.vs -2
\s-2Figure 4. Grundtvig's use of John 6:63.\s+2
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
.LP
I could have omitted
.pdfhref L -D proverbs4_23 Proverbs 4:23
\&. It appears on the top list for verse
.pdfhref L -D figure6 (Figure 6)
\&and does so only because Grundtvig refers to it in one song with 18 verses
.pdfhref L -D the-sun-is-hot (Grundtvig, 1839).
\&The references is in the chorus. I could have omitted that one, but it is good to include it to remind us of the fact that at this level of the study we have very small sample sizes. The
.pdfhref L -D psalm23_4 Psalm 23:4
\&is on the top list for verse only and Grundtvig quotes it on many occasions
.pdfhref L -D figure7 (Figure 7),
\&but much more in verse than prose.
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
.SH
Discussion
.KF  
.pdfhref M -N figure8
.ID
.vs -2
.ps -2
(a)
.ps +2
.vs +2
.DE
.PDFPIC cladogram-prose.pdf 12.0c 7.2c
.ID
.vs -2
.ps -2
(b)
.ps +2
.vs +2
.DE
.PDFPIC cladogram-poetry.pdf 12.0c 7.2c
.sp
.QP
.vs -2
\s-2Figure 8. Cladograms of a similarity matrix for years, calculated for prose (a) and verse (b).\s+2
.vs
.sp
.KE
.sp
.LP
.SH
References
.XP
.pdfhref M -N similarity
Akalin, Altuna\fIComputational Genomics with R\fP 
.br  
\s-2\f(CR
.pdfhref W -D https://compgenomr.github.io/book/clustering-grouping-samples-based-on-their-similarity.html https://compgenomr.github.io/book/clustering-grouping-samples-based-on-their-similarity.html
\fP\s+2
.XP
.pdfhref M -N grundtvig-texter
Center for Grundtvigforskning,  and Det Kgl. Bibliotek,
2021. Grundtvigs Værker.  In:
\fIDet Kgl. Biblioteks tekstportal\fP 
.br  
\s-2\f(CR
.pdfhref W -D https://tekster.kb.dk/gv https://tekster.kb.dk/gv
\fP\s+2
.XP
.pdfhref M -N grundtvig-kronologi
Center for Grundtvigforskning,
2010-. \fIKronologisk oversigt\fP 
.br  
\s-2\f(CR
.pdfhref W -D http://www.grundtvigsvaerker.dk/krono http://www.grundtvigsvaerker.dk/krono
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
.pdfhref M -N kennethchurch
Church, Kenneth Ward,
[date unknown]. \fIUnix™ for Poets\fP 
.br  
\s-2\f(CR
.pdfhref W -D https://web.stanford.edu/class/cs124/kwc-unix-for-poets.pdf https://web.stanford.edu/class/cs124/kwc-unix-for-poets.pdf
\fP\s+2
.XP
.pdfhref M -N rlanguage
Development Core Team,
2010. \fIR: A language and environment for statistical computing\fP [Computer software]. Vienna, Austria. Available from  
.pdfhref W -D http://www.R-project.org http://www.R-project.org
.XP
.pdfhref M -N crisis1810
Engebretsen, Else Bang,
2008. \fIGrundtvig Kriseåret 1810/1811 - Anfægtelser eller galskab?\fP 
.br  
\s-2\f(CR
.pdfhref W -D http://urn.nb.no/URN:NBN:no-21152 http://urn.nb.no/URN:NBN:no-21152
\fP\s+2
.XP
.pdfhref M -N the-sun-is-hot
Grundtvig, N.F.S.,
1839. No. 22. Solen er heed.  In:
\fISang-Værk til den Danske Kirke\fP 
.br  
\s-2\f(CR
.pdfhref W -D https://tekster.kb.dk/text/gv-1839_621-txt-root#idm5659 https://tekster.kb.dk/text/gv-1839_621-txt-root#idm5659
\fP\s+2
.XP
.pdfhref M -N sources-for-this-note
Lundberg, Sigfrid,
2022. \fIOn Grundtvig and his use of bible references\fP The scripts used to this analysis, together with the raw data extracted from the Grundtvig text corpus.
.br  
\s-2\f(CR
.pdfhref W -D https://github.com/siglun/bible-references https://github.com/siglun/bible-references
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
.pdfhref M -N teiguidelines
The TEI Consortium,
2022. \fITEI P5: Guidelines for Electronic Text Encoding and Interchange\fP 
.br  
\s-2\f(CR
.pdfhref W -D https://tei-c.org/release/doc/tei-p5-doc/en/html/index.html https://tei-c.org/release/doc/tei-p5-doc/en/html/index.html
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
