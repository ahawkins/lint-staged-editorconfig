load ../vendor/bats-support/load
load ../vendor/bats-assert/load
load support/helper

setup() {
	assert [ -n "${LINT_STAGED_EDITORCONFIG}" ]
}

@test "passes when .editorconfig covers all files" {
	test_fixture test/fixtures/pass	
	assert_success
}

@test "fails when .editorconfig does not cover a file" {
	test_fixture test/fixtures/fail
	assert_failure
	assert_output --regexp 'not ok.+uncovered\.txt'
}

@test "reads a .editorconfigignore" {
	test_fixture test/fixtures/ignore
	assert_success
}
