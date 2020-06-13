<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<style>
body{
background-color:lightgreen;
}
img{
height:250px;
widht:250px;
}
h1{
font-family:monospace;
}
table{
widht:100%;
border:3px solid green;
background-color:red;
}
th{
widht:100%;
border:1px solid lime;
background-color:yellow;
}
td{
widht:100%;
border:1px solid lime;
background-color:orange;
}
</style>
</head>
<body>
<h1>Expedicion por el Mundo</h1>
<table>
<tr>
<th>Etapa</th>
<th>Origen</th>
<th>Destino</th>
<th>Fecha Inicio</th>
<th>Fecha Fin</th>
<th>Medio de transporte</th>
<th>Foto Vlog</th>
<th>Descripcion Viaje</th>
</tr>
<xsl:for-each select="etapas/etapa">
<tr>
<td>
<xsl:value-of select="@id"/>
</td>
<td><xsl:value-of select="origen"/></td>
<td><xsl:value-of select="destino"/></td>
<td><xsl:value-of select="f-inicio"/></td>
<td><xsl:value-of select="f-fin"/></td>
<td><xsl:value-of select="m-transporte"/></td>
<td><img><xsl:attribute name="src"><xsl:value-of select="foto"/>
</xsl:attribute></img></td>
<td><xsl:value-of select="descripcion"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>