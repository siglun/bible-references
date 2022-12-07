# Statistics on Grundtvig's use of bible references


Find references from texts using find and xslt

```
find build/text-retriever/gv/  \
	-name 'txt.xml' -exec xsltproc \
	--stringparam file {}  ../bible-references/explore-references.xsl {} \;  > \
	../bible-references/big-table.xml

```

