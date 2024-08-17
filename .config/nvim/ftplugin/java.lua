local config = {
    cmd = { 
        vim.fn.expand('~/.local/share/nvim/mason/bin/jdtls')
    },
    init_options = {
        bundles = {
            vim.fn.glob("~/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar", 1)
        }
    },
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)
