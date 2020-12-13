test_fixture() {
	assert [ $# -eq 1 ]
	assert [ -d "${1}" ]
	pushd "${1}" > /dev/null
	run find . -type f
	run "${LINT_STAGED_EDITORCONFIG}" "${lines[@]}"
	popd > /dev/null
}
