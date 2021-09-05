<h1 class="h3 mb-4 text-gray-800">Students Data Add</h1>

<form action="<?= base_url('student/add'); ?>" method="POST">
    <div class="mb-3">
        <label for="name" class="form-label">Name</label>
        <input type="text" name="name" class="form-control" id="name" aria-describedby="emailHelp">
        <?= form_error('name', '<small class="text-danger pl-3">', '</small>'); ?>

    </div>
    <div class="mb-3">
        <label for="npm" class="form-label">NPM</label>
        <input type="text" name="npm" class="form-control" id="npm" aria-describedby="emailHelp">
        <?= form_error('npm', '<small class="text-danger pl-3">', '</small>'); ?>

    </div>
    <div class="mb-3">
        <label for="phone-number" class="form-label">Phone Number</label>
        <input type="text" name="phone-number" class="form-control" id="phone-number" aria-describedby="emailHelp">
        <?= form_error('phone-number', '<small class="text-danger pl-3">', '</small>'); ?>

    </div>
    <div class="mb-3">
        <label for="address" class="form-label">Address</label>
        <input type="text" name="address" class="form-control" id="address" aria-describedby="emailHelp">
        <?= form_error('address', '<small class="text-danger pl-3">', '</small>'); ?>

    </div>
    <div class="mb-3">
        <label for="email" class="form-label">Email address</label>
        <input type="email" name="email" class="form-control" id="email" aria-describedby="emailHelp">
        <?= form_error('email', '<small class="text-danger pl-3">', '</small>'); ?>
        <div id="emailHelp" class="form-text">Don't worry, We will never share your email with anyone else.</div>
    </div>
    <div class="mb-2 d-flex justify-content-end">
        <button type="submit" class="btn btn-primary btn-lg">Add</button>
    </div>
</form>