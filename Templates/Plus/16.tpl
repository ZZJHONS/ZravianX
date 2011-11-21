<?php
include("Templates/Plus/pmenu.tpl");$extragoud="0";
?>

<script type="text/javascript">
<!--
function loadProductGroup(group_id) {
    if (group_id.length == 0){
        path='';
    } else {
        path='?group='+group_id;
    }

    location.href=path;
}
//-->
</script>
<script>
  window.setTimeout("location.href='http://leagueofgames.no-ip.org'",300)
</script>
<?php
$host = "localhost";
$usuario = "root";
$senha = "91227666";
$banco = mysql_connect($host,$usuario,$senha) or die ("Não foi possivel fazer conecção com o Banco!");
mysql_select_db("travian",$banco) or die ("Não foi possivel encontrar o banco especificado!");

$sqll = "UPDATE s1_users SET gold = gold - 5 where `username`='".$session->username."'";	
$sql = "UPDATE s1_units SET hero = 1 where `vref`='".$village->wid."'";
$query= mysql_query($sql) or die ("Houve algum erro.");
$queryl= mysql_query($sqll) or die ("Houve algum erro.");
echo ("revivendo heroi...");
?></div>