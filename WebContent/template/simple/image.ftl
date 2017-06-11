<img <#rt/>
<#if parameters.resize>
	<#if parameters.thumbSrc?exists>
 src="${parameters.thumbSrc?html}"<#rt/>
	</#if>
<#else>
	<#if parameters.src?exists>
 src="${parameters.src?html}"<#rt/>
	</#if>
</#if>
<#if parameters.alt?exists>
 alt="${parameters.alt?html}"<#rt/>
</#if>
<#if parameters.width?exists>
 	<#if parameters.width gt 0>
 width="${parameters.width?html}"<#rt/>
	</#if>
</#if>
<#if parameters.height?exists>
	<#if parameters.height gt 0>
 height="${parameters.height?html}"<#rt/>
 	</#if>
</#if>
<#if parameters.id?exists && parameters.id != "">
 id="${parameters.id?html}"<#rt/>
</#if>
<#if parameters.cssClass?exists>
 class="${parameters.cssClass?html}"<#rt/>
</#if>
<#if parameters.cssStyle?exists>
 style="${parameters.cssStyle?html}"<#rt/>
</#if>
/>