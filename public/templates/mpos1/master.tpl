<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>{$GLOBAL.website.title} - {$smarty.request.page|escape|default:"home"|capitalize}</title>
  
  <!--[if lt IE 9]>
  <link rel="stylesheet" href="{$PATH}/css/ie.css" type="text/css" media="screen" />
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->

  <!--[if IE]><script type="text/javascript" src="{$PATH}/js/excanvas.js"></script><![endif]-->
  {if $GLOBAL.statistics.analytics.enabled}
  {$GLOBAL.statistics.analytics.code nofilter}
  {/if}
  <link href="{$PATH}/css/bootstrap.min.css" rel="stylesheet">
  <link href="{$PATH}/css/bootstrap-switch.css" rel="stylesheet">
  <link href="{$PATH}/font-awesome/css/font-awesome.css" rel="stylesheet">
  <link href="{$PATH}/css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
  <link href="{$PATH}/css/plugins/timeline/timeline.css" rel="stylesheet">
  <link href="{$PATH}/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">
  <link href="{$PATH}/css/mpos.css" rel="stylesheet">
  <link href="{$PATH}/css/sparklines.css" rel="stylesheet">

  <script src="{$PATH}/js/jquery-2.0.3.min.js"></script>
  <script src="{$PATH}/js/bootstrap.min.js"></script>
  <script src="{$PATH}/js/bootstrap-switch.min.js"></script>
  <script src="{$PATH}/js/plugins/dataTables/jquery.dataTables.js"></script>
  <script src="{$PATH}/js/plugins/dataTables/dataTables.bootstrap.js"></script>
  <script src="{$PATH}/js/plugins/metisMenu/jquery.metisMenu.js"></script>
  <script src="{$PATH}/js/plugins/morris/raphael-2.1.0.min.js"></script>
  <script src="{$PATH}/js/plugins/morris/morris.js"></script>
  <script src="{$PATH}/js/plugins/sparkline/jquery.sparkline.min.js"></script>
  <script src="{$PATH}/js/mpos.js"></script>
</head>
<body>
  <div id="wrapper">
    {include file="global/header.tpl"}
    {include file="global/navigation.tpl"}

    <div id="page-wrapper"><br />
    {nocache}
    {if is_array($smarty.session.POPUP|default)}
      {section popup $smarty.session.POPUP}
      <div class="{$smarty.session.POPUP[popup].TYPE|default:"alert alert-info alert-dismissable"}">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        {$smarty.session.POPUP[popup].CONTENT nofilter}
      </div>
      {/section}
    {/if}
    {/nocache}
    {if $CONTENT != "empty" && $CONTENT != ""}
      {if file_exists($smarty.current_dir|cat:"/$PAGE/$ACTION/$CONTENT")}
        {include file="$PAGE/$ACTION/$CONTENT"}
      {else}
        Missing template for this page
      {/if}
    {/if}
    </div>
    {include file="global/footer.tpl"}
  </body>
</html>
