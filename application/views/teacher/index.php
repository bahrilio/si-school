<!-- Page Heading -->
<h1 class="h3 mb-4 text-gray-800">Teacher Data</h1>

<div class="mb-2 d-flex justify-content-end">
    <a href="<?= base_url('teacher/add'); ?>" class="btn btn-primary">Add Data</a>
</div>

<?= $this->session->flashdata('message'); ?>

<table class="table table-hover dataTable" id="teacherTable">
    <thead>
        <tr>
            <th>No</th>
            <th>Name</th>
            <th>NIP</th>
            <th>Phone Number</th>
            <th>Address</th>
            <th>Email</th>
            <th>Gender</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($teachers as $index => $teacher) : ?>
            <tr>
                <td><?= ++$index; ?></td>
                <td><?= $teacher['name']; ?></td>
                <td><?= $teacher['nip']; ?></td>
                <td><?= $teacher['phone_number']; ?></td>
                <td><?= $teacher['address']; ?></td>
                <td><?= $teacher['email']; ?></td>
                <td><?= $teacher['gender']; ?></td>
                <td>
                    <div class="btn-group btn-group-sm" role="group" aria-label="Basic mixed styles example">
                        <a href="<?= base_url('teacher/edit/' . $teacher['id']); ?>" type="button" class="btn btn-warning btn-sm">Edit</a>
                        <form action="<?= base_url('teacher/delete'); ?>" class="d-inline" method="post">
                            <button onclick="return confirm('do you want to delete this data ?')" type="submit" class="btn btn-danger btn-sm">Hapus</button>
                            <input type="hidden" name="id" value="<?= $teacher['id']; ?>">
                        </form>
                    </div>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>