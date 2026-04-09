<nav class="navbar fixed-top app-topbar">
	<div class="container-fluid app-topbar-inner">
		<div class="topbar-left">
			<button type="button" class="btn topbar-toggle" id="sidebar-toggle" aria-label="Toggle menu">
				<i class="fa fa-bars"></i>
			</button>
			<a href="index.php?page=home" class="brand-wrap text-decoration-none">
				<span class="brand-mark"><i class="fa fa-poll-h"></i></span>
				<span class="brand-copy">
					<strong>Jiva Elections</strong>
				</span>
			</a>
		</div>
		<div class="topbar-right">
			<span class="user-chip">
				<i class="fa fa-user-circle mr-1"></i>
				<?php echo $_SESSION['login_name'] ?>
			</span>
			<a href="ajax.php?action=logout" class="btn btn-sm app-logout-btn">
				<i class="fa fa-power-off mr-1"></i> Logout
			</a>
		</div>
	</div>
</nav>