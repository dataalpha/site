<script type="text/javascript">
jQuery(document).ready(function(){
   $(document).mousemove(function(e){
      $('#status').html(e.pageX +', '+ e.pageY);
   }); 
})
</script>
<h2 id="status">
0, 0
</h2>
