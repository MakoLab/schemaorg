<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Home - {{ sitename }}</title>
    <meta name="description" content="Schema.org is a set of extensible schemas that enables webmasters to embed
    structured data on their web pages for use by search engines and other applications." />
    <link rel="stylesheet" type="text/css" href="/docs/schemaorg.css">

</head>
<body>

{% include 'basicPageHeader.tpl' with context %}

  <div id="mainContent">


{% import 'ext.tpl' as ext with context %}

{% if mybasehost in [ "sdo-deimos.appspot.com", "sdo-phobos.appspot.com", "sdo-ganymede.appspot.com", "sdo-gozer.appspot.com", "sdo-tully.appspot.com", "sdo-lenny.appspot.com", "webschemas.org", "sdo-scripts.appspot.com", "localhost" ] %}

<p id="lli" class="layerinfo">
Note: This is {{ mybasehost }}. you are viewing an unstable work-in-progress preview of <a href="http://schema.org/">schema.org</a>.
See the draft <b><a href="{{staticPath}}/docs/releases.html">releases</a></b> page to learn more about this version.
</p>

{% endif %}

{% if mybasehost in [ "sdo-fibo.appspot.com", "localhost" ] %}
<br/>
<h2>Important Note:</h2> You are viewing a test version of Schema.org that includes draft proposals for financially related additions to the core Schema.org vocabulary.<br/><br/>

These efforts are based on the work of the Financial Industry Business Ontology (FIBO) project (see <a href="http://www.edmcouncil.org/financialbusiness/fiboschemaorg">http://www.edmcouncil.org/financialbusiness/fiboschemaorg</a> for details), with support of the W3C FIBO Community Group ( <a href="https://www.w3.org/community/fibo">https://www.w3.org/community/fibo</a>). 

<br/>
These proposals include the following Types:
<ul>
	<li><a href="/MonetaryAmount">MonetaryAmount</a></li>
	<li><a href="/RelativePriceSpecification">RelativePriceSpecification</a></li>
	<li><a href="/FinancialProduct">FinancialProduct</a></li>
	<li><a href="/BankAccount">BankAccount</a></li>	
	<li><a href="/DepositAccount">DepositAccount</a></li>
	<li><a href="/LoanOrCredit">LoanOrCredit</a></li>
	<li><a href="/PaymentCard">PaymentCard</a></li>
	<li><a href="/InvestmentOrDeposit">InvestmentOrDeposit</a></li>
	<li><a href="/PaymentService">PaymentService</a></li>
	<li><a href="/CurrencyConversionService">CurrencyConversionService</a></li>
</ul>
These proposals include the following Properties:
<ul>
	<li><a href="/annualPercentageRate">annualPercentageRate</a></li>
	<li><a href="/feesAndCommissionsSpecification">feesAndCommissionsSpecification</a></li>
	<li><a href="/interestRate">interestRate</a></li>
	<li><a href="/leiCode">leiCode</a></li>
	<li><a href="/loanTerm">loanTerm</a></li>
	<li><a href="/requiredCollateral">requiredCollateral</a></li>
</ul>	
These proposals include updates to the following current schema.org terms:
<ul>
	<li><a href="/CreditCard">CreditCard</a></li>
	<li><a href="/amount">amount</a></li>
	<li><a href="/acceptedPaymentMethod">acceptedPaymentMethod</a></li>
	<li><a href="/aggregateRating">aggregateRating</a></li>
	<li><a href="/audience">audience</a></li>
	<li><a href="/brand">brand</a></li>
	<li><a href="/currency">currency</a></li>
	<li><a href="/isRelatedTo">isRelatedTo</a></li>
	<li><a href="/isSimilarTo">isSimilarTo</a></li>
	<li><a href="/logo">logo</a></li>
	<li><a href="/maxValue">maxValue</a></li>
	<li><a href="/minValue">minValue</a></li>
	<li><a href="/review">review</a></li>
	<li><a href="/value">value</a></li>
</ul>
<hr/>
{% endif %}


{% if ENABLE_HOSTED_EXTENSIONS and host_ext == "bib" %}
  {{ ext.overview(name="Bibliographic Extension", abbrev="bib") }}
  <p>
  You are viewing the Bibliographic Extension within <a href="http://schema.org/">schema.org</a>.
  It defines terms such as <a href="/Audiobook">Audiobook</a>, <a href="/Thesis">Thesis</a>, <a href="/ComicStory">ComicStory</a>, and  <a href="/workTranslation">workTranslation</a>.
   For more details see the W3C BibExtend Community Group's <a href="http://www.w3.org/community/schemabibex/wiki/Bib.schema.org-1.0">wiki</a>.
  <br/>This should be considered a pre-final preview release; final changes may be made after wider <a href="https://github.com/schemaorg/schemaorg/issues/699">community review</a>.
  </p>

{% elif ENABLE_HOSTED_EXTENSIONS and host_ext == "auto" %}
  {{ ext.overview(name="Auto Extension", abbrev="auto") }}

  <p>  You are viewing the Auto Extension within <a href="http://schema.org/">schema.org</a>.
  It defines terms such as <a href="/MotorizedBicycle">MotorizedBicycle</a> and adds terms to <a href="/Car">Car</a>. For more details
  see the W3C <a href="https://www.w3.org/community/gao/">Automotive Ontology Working Group</a>.
  <br/>This should be considered a pre-final preview release; final changes may be made after wider <a href="https://github.com/schemaorg/schemaorg/issues/704">community review</a>.
</p>

  <p><br/></p>

{% elif ENABLE_HOSTED_EXTENSIONS and host_ext == "test001" %}
  {{ ext.overview(name="Test Extension", abbrev="test1") }}

  <p>This is purely here for testing, please ignore.</p>

  <p><br/></p>

{% else %}


  <h1>Welcome to Schema.org</h1>


<p>
    Schema.org is a collaborative, community activity with a mission to create,
    maintain, and promote schemas for structured data on the
    Internet, on web pages, in email messages, and beyond.
</p>

<p>
    Schema.org vocabulary can be used with many different encodings,
    including RDFa, Microdata and JSON-LD. These vocabularies cover
    entities, relationships between entities and actions, and can
    easily be extended through a well-documented extension model. Over 10 million sites use
    Schema.org to markup their web pages and email messages.
    Many applications from Google, Microsoft, Pinterest, Yandex and others
    already use these vocabularies to power rich, extensible experiences.
</p>
<p>
    Schema.org is sponsored by Google, Microsoft, Yahoo and Yandex.
    The vocabularies are developed by an open <a href="https://www.w3.org/community/schemaorg">community</a> process,
    using the <a
    href="http://lists.w3.org/Archives/Public/public-schemaorg">public-schemaorg@w3.org</a>
     mailing list and through <a href="http://github.com/schemaorg/schemaorg">GitHub</a>.
</p>

<p>
   A shared vocabulary makes it easier for webmasters and developers to decide
   on a schema and get the maximum benefit for their efforts.
   It is in this spirit that the sponsors, together with the
   larger community have come together, to provide a shared collection of schemas.
 </p>

<p>
    We invite you to <a href="docs/gs.html">get started</a>!
</p>
<p>
    View our blog at <a href="http://blog.schema.org">blog.schema.org</a> or see <a href="/docs/releases.html">release history</a>.
</p>

<br/>
</div>


{% endif %}

{{ ext_contents | safe }}

<div id="footer"><p>
  <a href="docs/terms.html">Terms and conditions</a></p>
</div>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-52672119-1', 'auto');
  ga('send', 'pageview');

</script>



<p><br/></p>

{{ ext.debugInfo() }}

</body>
</html>
