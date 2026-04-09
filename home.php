<div class="containe-fluid">
	<?php include('db_connect.php') ;
	$voting = $conn->query("SELECT * FROM voting_list where  is_default = 1 ");
	foreach ($voting->fetch_array() as $key => $value) {
		$$key = $value;
	}
	$votes  = $conn->query("SELECT * FROM votes where voting_id = $id ");
	$v_arr = array();
	while($row=$votes->fetch_assoc()){
		if(!isset($v_arr[$row['voting_opt_id']]))
			$v_arr[$row['voting_opt_id']] = 0;

		$v_arr[$row['voting_opt_id']] += 1;
	}
	$opts = $conn->query("SELECT * FROM voting_opt where voting_id=".$id);
	$opt_arr = array();
		while($row=$opts->fetch_assoc()){
		$opt_arr[$row['category_id']][] = $row;

	}
	$total_voters = $conn->query('SELECT * FROM users where type = 2 ')->num_rows;
	$total_voted = $conn->query('SELECT distinct(user_id) FROM votes where voting_id = '.$id)->num_rows;
	$turnout_percent = $total_voters > 0 ? round(($total_voted / $total_voters) * 100, 1) : 0;
	$pending_voters = max($total_voters - $total_voted, 0);

	?>
	<div class="row">
		<div class="col-lg-12">
			<div class="dashboard-stats">
				<div class="stat-card stat-card-a">
					<div class="stat-copy">
						<h5>Registered Voters</h5>
						<h3><?php echo $total_voters ?></h3>
						<p class="stat-trend trend-neutral"><i class="fa fa-users"></i> <?php echo $pending_voters ?> pending votes</p>
					</div>
					<div class="stat-icon"><i class="fa fa-users"></i></div>
				</div>
				<div class="stat-card stat-card-b">
					<div class="stat-copy">
						<h5>Total Votes Cast</h5>
						<h3><?php echo $total_voted ?></h3>
						<p class="stat-trend trend-up"><i class="fa fa-arrow-up"></i> <?php echo $turnout_percent ?>% turnout</p>
					</div>
					<div class="stat-icon"><i class="fa fa-vote-yea"></i></div>
				</div>
			</div>
		</div>
	</div>

	<div class="row mt-4 ml-1 mr-1">
			<div class="col-lg-12">
			<div class="card">
				<div class="card-body">
					<div class="text-center mb-4">
						<h3 class="mb-2"><b><?php echo $title ?></b></h3>
						<small class="text-muted"><b><?php echo $description; ?></b></small>	
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
						<div class="row mt-3 candidate-grid">
						<?php foreach ($opt_arr[$row['id']] as $candidate) {
						?>
							<div class="candidate" style="position: relative;">
								<div class="img-field">
									<img src="assets/img/<?php echo $candidate['image_path'] ?>" alt="">
								</div>
								<div class="candidate_name"><?php echo $candidate['opt_txt'] ?></div>
								<div class="vote-field">
									<span class="badge badge-success"><large><b><?php echo isset($v_arr[$candidate['id']]) ? number_format($v_arr[$candidate['id']]) : 0 ?></b></large></span>
								</div>
							</div>
						<?php } ?>
						</div>
					<?php endwhile; ?>					
				</div>
			</div>
			
		</div>
		</div>
	</div>

</div>
<script>
	
</script>