<?php 
	include "api/connect.php";
	session_start();
	
	$id = $conn->real_escape_string($_POST['id']);
	if($id == $_SESSION['userId']) {
		echo '<div class="alert alert-danger">Nije moguće obrisati svoj nalog!</div>';
	} else {
		$sql="DELETE u, a, t1, t2 FROM users as u LEFT JOIN accounts as a ON a.id = u.account_id LEFT JOIN transactions as t1 ON t1.sender_id = a.id LEFT JOIN transactions as t2 ON t2.recipient_id = u.id WHERE u.id='$id'";
		$conn->query($sql);
			
		if($q=$conn->query($sql)) {
			echo "<div class='alert alert-success' >Korisnik je izbrisan</div>";
		} else {
			
			echo '<div class="alert alert-danger">Došlo je do greške sa bazom!</div>';
		}
		}
		$sql1="SELECT *
		FROM users";
		$q1=$conn->query($sql1);
			?>
			<table class="table">
				<thead>
					<tr>
	                    <th>ID</th>
	                    <th>Ime</th>
	                    <th>Prezime</th>
	                    <th>Mail</th>
	                    <th>Kontakt</th>
	                    <th>Izbriši</th>
					</tr>
					</thead>
					<tbody>
						<?php while($line=$q1->fetch_object()){  ?>
						<tr>
	                    <td><?php echo $line->id; ?></td>
	                        <td><?php echo $line->name; ?></td>
	                        <td><?php echo $line->surname; ?></td>
	                        <td><?php echo $line->mail; ?></td>
	                        <td><?php echo $line->phone; ?></td>
	                        <td><button onclick="del(<?php echo $line->id; ?>)">izbriši</button></td>
						</tr>
						<?php } ?>
					</tbody>

				</table>

			<?php
		
	
	
	

 ?>