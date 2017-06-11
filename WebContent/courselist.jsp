<%@taglib uri="/struts-tags" prefix="s" %>
<s:if test="sesList != null">
    <s:select list="sesList" headerKey="" headerValue="-Select Session " name="SSession" theme="simple" cssClass="a"></s:select>
</s:if>
