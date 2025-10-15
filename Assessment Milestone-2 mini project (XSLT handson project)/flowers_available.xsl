<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Available Flowers</title>
        <style>
          table { border-collapse: collapse; width: 50%; }
          th, td { border: 1px solid black; padding: 6px; text-align: center; }
          th { background-color: #f2b8b8; }
        </style>
      </head>
      <body>
        <h2>Available Flowers Only</h2>
        <table>
          <tr>
            <th>Name</th>
            <th>Color</th>
            <th>Price</th>
          </tr>
          <xsl:for-each select="FlowerDepot/flower[availability='Yes']">
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="color"/></td>
              <td><xsl:value-of select="price"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>

