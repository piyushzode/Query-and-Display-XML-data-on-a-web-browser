<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <body>
	<h2>All Articles List</h2>
	<table border="1">
	  <tr bgcolor="green">
	  		<th>Volume</th>
            <th>Number</th>
            <th>Title</th>
            <th>initPage</th>
            <th>endPage</th>
            <th>Authors</th>
            <!-- <th>URL</th>-->
	  </tr>
	  <xsl:for-each select="//article">
	    <tr>
	      <td>
			<xsl:value-of select="../../volume"/>
	      </td>
	      <td>
			<xsl:value-of select="../../number"/>
	      </td>
	      <td>
			<xsl:value-of select="title"/>
	      </td>
	      <td>
	      	<xsl:value-of select="initPage"/>
	      </td>
	      <td>
			<xsl:value-of select="endPage"/>
	      </td>
	      <td>
	      <table border="1">
			<tr bgcolor="green">
			   <th>Position</th>
			   <th>Name</th>
			</tr>
	        <xsl:for-each select="authors/author">
	        <tr>
		   	  <td><xsl:value-of select="self::author/@position"/></td>
	      	  <td><xsl:value-of select="self::author"/></td>
	        </tr>
      	    </xsl:for-each>
      	  </table>
	      </td>
	    </tr>
	  </xsl:for-each>
	</table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>