<?php include('db_connect.php');?>
<?php
	$voting = $conn->query("SELECT * FROM voting_list where  is_default = 1 ");
	foreach ($voting->fetch_array() as $key => $value) {
		$$key = $value;
	}
	$mvotes = $conn->query("SELECT * FROM votes where voting_id = $id and user_id = ".$_SESSION['login_id']." ");
	$vote_arr = array();
	while($row=$mvotes->fetch_assoc()){
		$vote_arr[$row['category_id']][] = $row;
	}
	$opts = $conn->query("SELECT * FROM voting_opt where voting_id=".$id);
	$opt_arr = array();
	while($row=$opts->fetch_assoc()){
		$opt_arr[$row['id']] = $row;

	}

	

?>
<style>
	.candidate {
	    margin: 0 0 1rem 0;
	    width: 100%;
	    padding: 1rem;
	    border-radius: 14px;
	    border: 1px solid #d4deec;
	    background: #ffffff;
	    box-shadow: 0 8px 20px rgba(23, 53, 89, 0.08);
	}
	.candidate img {
	    height: 108px;
	    width: 108px;
	    margin: auto;
	    border-radius: 12px;
	    object-fit: cover;
	}
	.card-body .row.mt-3 {
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
		gap: 1rem;
	}
	
	
</style>
<div class="container-fluid">

	<div class="col-lg-12">
		<div class="row">
			<div class="col-md-12">
			</div>
		</div>
		<div class="card">
			<div class="card-body">
				<div class="col-lg-12">
						
					<div class="text-center">

						<small><b>Your Vote for</b></small>	
						<h3><b><?php echo $title ?></b></h3>
						<small><b><?php echo $description; ?></b></small>	
					</div>
					
					<?php 
					$cats = $conn->query("SELECT * FROM category_list where id in (SELECT category_id from voting_opt where voting_id = '".$id."' )");
					while($row = $cats->fetch_assoc()):
					?>
						<hr>
						<div class="row mb-4">
							<div class="col-md-12">
									<div class="text-center">
										<h3><b><?php echo $row['category'] ?></b></h3>
									</div>
							</div>
						</div>
						<div class="row mt-3">
						<?php 
						foreach ($vote_arr[$row['id']] as $voted) {
						?>
							<div class="candidate" style="position: relative;">
								<div class="item">
								<div style="display: flex">
									<img src="assets/img/<?php echo $opt_arr[$voted['voting_opt_id']]['image_path'] ?>" alt="">
								</div>
								<br>
								<div class="text-center">
									<large class="text-center"><b><?php echo ucwords($opt_arr[$voted['voting_opt_id']]['opt_txt']) ?></b></large>

								</div>
								</div>
							</div>
						<?php } ?>
						</div>
					<?php endwhile; ?>
				</div>
				<hr>
			</div>
		</div>
	</div>
</div>
<script>
	$('.candidate').click(function(){
		var chk = $(this).find('input[type="checkbox"]').prop("checked");
		
		if(chk == true){
			$(this).find('input[type="checkbox"]').prop("checked",false)
		}else{
			var arr_chk = $("input[name='opt_id["+$(this).attr('data-cid')+"][]']:checked").length
			if($(this).attr('data-max') == 1){
			$("input[name='opt_id["+$(this).attr('data-cid')+"][]']").prop("checked",false)
			$(this).find('input[type="checkbox"]').prop("checked",true)
			}else{
			if(arr_chk >= $(this).attr('data-max')){
					alert_toast("Choose only "+$(this).attr('data-max')+" for "+$(this).attr('data-name')+" category","warning")
					return false;
				}
			}
			$(this).find('input[type="checkbox"]').prop("checked",true)
		}
		$('.candidate').each(function(){
			if($(this).find('input[type="checkbox"]').prop("checked") == true){
				$(this).find('.rem_btn').addClass('active')
			}else{
				$(this).find('.rem_btn').removeClass('active')
			}
		})
		
	})
	$('#manage-vote').submit(function(e){
		e.preventDefault()
		start_load();
		$.ajax({
			url:'ajax.php?action=submit_vote',
			method:'POST',
			data:$(this).serialize(),
			success:function(resp){
				if(resp == 1){
					alert_toast("Vote success fully submitted");
					setTimeout(function(){
						location.reload()
					},1500)
				}
			}
		})
	})
</script>