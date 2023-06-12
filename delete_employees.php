<?php
            include 'conn.php';
            if(isset($_POST['delete']))
            {
                $query="DELETE FROM 'employee' WHERE e_id=501";
                mysqli_query($con,$query);
                header('Location:Employees.html');
            }
                ?>