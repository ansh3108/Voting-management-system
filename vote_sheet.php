<?php include('db_connect.php');?>
<?php
	$voting = $conn->query("SELECT * FROM voting_list where  is_default = 1 ");
	foreach ($voting->fetch_array() as $key => $value) {
		$$key = $value;
	}

	$vchk = $conn->query("SELECT distinct(voting_id) from votes where user_id = ".$_SESSION['login_id']."")->num_rows;
	if($vchk > 0){
		header('Location:voting.php?page=view_vote');
	}

	$vote = $conn->query("SELECT * FROM voting_list where id=".$id);
	foreach ($vote->fetch_array() as $key => $value) {
		$$key= $value;
	}
	$opts = $conn->query("SELECT * FROM voting_opt where voting_id=".$id);
	$opt_arr = array();
	$set_arr = array();

	while($row=$opts->fetch_assoc()){
		$opt_arr[$row['category_id']][] = $row;
		$set_arr[$row['category_id']] = array('id'=>'','max_selection'=>1);

	}

	$settings = $conn->query("SELECT * FROM voting_cat_settings where voting_id=".$id);
	while($row=$settings->fetch_assoc()){
		$set_arr[$row['category_id']] = $row;
	}

?>
<style>
	.candidate {
	    margin: 0 0 1rem 0;
	    width: 100%;
	    padding: 1rem;
	    cursor: pointer;
	    border-radius: 14px;
	    border: 1px solid #d4deec;
	    background: #ffffff;
	    transition: all 0.25s ease;
	}
	.candidate:hover {
	    border-color: #7a9ec8;
	    transform: translateY(-2px);
	    box-shadow: 0 12px 24px rgba(23, 53, 89, 0.12);
	}
	.candidate img {
	    height: 108px;
	    width: 108px;
	    margin: auto;
	    border-radius: 12px;
	    object-fit: cover;
	}
	span.rem_btn {
	    position: absolute;
	    right: .75rem;
	    top: .75rem;
	    z-index: 10;
	    display: none
	}
	span.rem_btn.active{
		display: block
	}
	#manage-vote .row.mt-3 {
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
		gap: 1rem;
	}
	#manage-vote button.btn-block {
		max-width: 320px;
		margin: 1.25rem auto .5rem;
		display: block;
	}
	
	
</style>
<div class="container-fluid">
	<div class="col-lg-12">
		<div class="card">
			<div class="card-body">
				<form action="" id="manage-vote">
					<input type="hidden" name="voting_id" value="<?php echo $id ?>">
				<div class="col-lg-12">
					<div class="text-center">
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
									<small>Max Selection : <b><?php echo $set_arr[$row['id']]['max_selection']; ?></b></small>

									</div>
							</div>
						</div>
						<div class="row mt-3">
						<?php foreach ($opt_arr[$row['id']] as $candidate) {
						?>
							<div class="candidate" style="position: relative;" data-cid = '<?php echo $row['id'] ?>'  data-max="<?php echo $set_arr[$row['id']]['max_selection'] ?>" data-name="<?php echo $row['category'] ?>">
									<input type="checkbox" name="opt_id[<?php echo $row['id'] ?>][]" value="<?php echo $candidate['id'] ?>" style="display: none">
								<span class="rem_btn">
									<label for="" class="btn btn-primary"><span class="fa fa-check"></span></label>
								</span>
								<div class="item"  data-id="<?php echo $candidate['id'] ?>">
								<div style="display: flex">
									<img src="assets/img/<?php echo $candidate['image_path'] ?>" alt="">
								</div>
								<br>
								<div class="text-center">
									<large class="text-center"><b><?php echo ucwords($candidate['opt_txt']) ?></b></large>

								</div>
								</div>
							</div>
						<?php } ?>
						</div>
					<?php endwhile; ?>
				</div>
				<hr>
				<button class="btn-block btn-primary">Sumbit</button>
				</form>
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