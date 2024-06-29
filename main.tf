resource "null_resource" "pip_install" {

  provisioner "local-exec" {
     command = "bash ${path.module}/scripts/create_pkg.sh"

   environment = {
      source_code_path = "lambda_function"
      function_name = "aws_lambda_test"
      path_module = path.module
      runtime = "python3.9"
      path_cwd = path.cwd
      dir_name = "test"
    }
}
}
