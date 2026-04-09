<?php include('db_connect.php');?>

<div class="container-fluid">
	
	<div class="col-lg-12">
		<div class="card category-shell">
			<div class="card-body">
				<div class="category-layout">
					<div class="category-form-pane">
						<h5 class="mb-3">Category Form</h5>
						<form action="" id="manage-category">
							<input type="hidden" name="id">
							<div class="form-group mb-3">
								<label class="control-label">Category Name</label>
								<input type="text" class="form-control" name="category" placeholder="Enter category title" required>
							</div>
							<div class="d-flex align-items-center" style="gap:.5rem;">
								<button class="btn btn-primary btn-sm" type="submit">Save</button>
								<button class="btn btn-ghost btn-sm" type="button" onclick="$('#manage-category').get(0).reset()">Reset</button>
							</div>
						</form>
					</div>
					<div class="category-table-pane">
						<div class="d-flex justify-content-between align-items-center mb-2">
							<h5 class="mb-0">Category Directory</h5>
							<small class="text-muted">Manage voting categories</small>
						</div>
						<div class="table-responsive">
							<table class="table table-bordered table-hover align-middle category-table">
								<thead>
									<tr>
										<th class="text-center">#</th>
										<th>Category</th>
										<th class="text-center">Action</th>
									</tr>
								</thead>
								<tbody>
									<?php 
									$i = 1;
									$cats = $conn->query("SELECT * FROM category_list order by id asc");
									while($row=$cats->fetch_assoc()):
									?>
									<tr>
										<td class="text-center"><?php echo $i++ ?></td>
										<td class="font-weight-600"><?php echo $row['category'] ?></td>
										<td class="text-center">
											<div class="d-inline-flex" style="gap:.3rem;">
												<button class="btn btn-ghost-icon edit_cat" type="button" title="Edit" data-id="<?php echo $row['id'] ?>" data-name="<?php echo $row['category'] ?>"><i class="fa fa-pen"></i></button>
												<button class="btn btn-ghost-icon danger delete_cat" type="button" title="Delete" data-id="<?php echo $row['id'] ?>"><i class="fa fa-trash"></i></button>
											</div>
										</td>
									</tr>
									<?php endwhile; ?>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>	

</div>
<script>
	$('#manage-category').submit(function(e){
		e.preventDefault()
		start_load()
		$.ajax({
			url:'ajax.php?action=save_category',
			method:'POST',
			data:$(this).serialize(),
			success:function(resp){
				if(resp==1){
					alert_toast("Data successfully added",'success')
					setTimeout(function(){
						location.reload()
					},1500)

				}
				else if(resp==2){
					alert_toast("Data successfully updated",'success')
					setTimeout(function(){
						location.reload()
					},1500)

				}
			}
		})
	})
	$('.edit_cat').click(function(){
		start_load()
		var cat = $('#manage-category')
		cat.get(0).reset()
		cat.find("[name='id']").val($(this).attr('data-id'))
		cat.find("[name='category']").val($(this).attr('data-name'))
		end_load()
	})
	$('.delete_cat').click(function(){
		_conf("Are you sure to delete this category?","delete_cat",[$(this).attr('data-id')])
	})
	function delete_cat($id){
		start_load()
		$.ajax({
			url:'ajax.php?action=delete_category',
			method:'POST',
			data:{id:$id},
			success:function(resp){
				if(resp==1){
					alert_toast("Data successfully deleted",'success')
					setTimeout(function(){
						location.reload()
					},1500)

				}
			}
		})
	}
</script>