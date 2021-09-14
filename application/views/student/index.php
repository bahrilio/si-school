<!-- Page Heading -->
<h1 class="h3 mb-4 text-gray-800">Students Data</h1>

<div class="mb-2 d-flex justify-content-end">
    <a href="<?= base_url('student/add'); ?>" class="btn btn-primary mr-3 ">Add Data</a>
    <a href="<?= base_url('student/report'); ?>" target="blank" class="btn btn-success ">Report Data</a>
</div>

<?= $this->session->flashdata('message'); ?>

<table class="table table-hover dataTable" id="studentTable">
    <thead>
        <tr>
            <th>No</th>
            <th>Name</th>
            <th>NPM</th>
            <th>Phone Number</th>
            <th>Address</th>
            <th>Email</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($students as $index => $student) : ?>
            <tr>
                <td><?= ++$index; ?></td>
                <td><?= $student['name']; ?></td>
                <td><?= $student['npm']; ?></td>
                <td><?= $student['phone_number']; ?></td>
                <td><?= $student['address']; ?></td>
                <td><?= $student['email']; ?></td>
                <td>
                        <a href="<?= base_url('student/edit/'.$student['id']); ?>" class="btn btn-warning btn-sm">Edit</a>
                        <form action="<?= base_url('student/delete'); ?>" class="d-inline" method="post">
                            <button onclick="return confirm('do you want to delete this data ?')" type="submit" class="btn btn-danger btn-sm">Hapus</button>
                            <input type="hidden" name="id" value="<?= $student['id']; ?>">
                        </form>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>