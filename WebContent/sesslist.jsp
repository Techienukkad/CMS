<%@taglib uri="/struts-tags" prefix="ss" %>
<ss:if test="sesList != null">
    <ss:select list="#application.tbs" headerKey="-1" headerValue="-Select Session-" name="sesst" theme="simple" cssClass="a" ></ss:select>
</ss:if>
