<?xml version="1.0" encoding="UTF-8"?>
<!--Внутри шаблона пишем наше преобразование-->
        <xsl:for-each select="objects/object">
          <table border="1" width="30%" >
            <tr>
              <td>
                <!--Извлекаем значение из XML-тега-->
                <xsl:value-of select="elem"></xsl:value-of>
              </td>
              <td>
                <xsl:value-of select="square"></xsl:value-of>
              </td>
            </tr>
          </table>
        </xsl:for-each>
