<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8"/>

    <xsl:template match="/">
        {
            "order": {
                "id": "<xsl:value-of select="/order/id"/>",
                "customer": "<xsl:value-of select="/order/customer"/>",
                "amount": "<xsl:value-of select="/order/amount"/>"
            }
        }
    </xsl:template>
</xsl:stylesheet>
