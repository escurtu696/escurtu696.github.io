<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<style>
table {
 border: 1px solid black;
}
tr {
 background-color: #ADD8E6 ;
 text-align: left;
}
</style>
</head>
      <body>
      <h2> Predicción del tiempo</h2>
      <table>
          <tr>
              <th>Día</th>
              <th>Estado Cielo</th>
              <th>Temp min</th>
              <th>Temp max</th>
          </tr>
          <xsl:for-each select="/root/prediccion/dia">
              <tr>
                  <td>  <xsl:value-of select="@fecha"/>  </td>
                  <td>  <xsl:value-of select="estado_cielo/@descripcion"/>  </td>
                  <td>  <xsl:value-of select="temperatura/minima"/>  </td>
                  <td>  <xsl:value-of select="temperatura/maxima"/>  </td>
              </tr>
          </xsl:for-each>
      </table>
      </body>
  </html>
  </xsl:template>
</xsl:stylesheet>