---@brief
---
--- https://doc.qt.io/qt-6/qtqml-tooling-qmlls.html
---
--- > QML Language Server is a tool shipped with Qt that helps you write code in your favorite (LSP-supporting) editor.
---
--- Source in the [QtDeclarative repository](https://code.qt.io/cgit/qt/qtdeclarative.git/)

---@type vim.lsp.Config
return {
    cmd = { 'qmlls6' },		-- qmlls6 instead of qmlls cuz it isnt registered in path
    filetypes = { 'qml' },
    root_markers = { '.git', '.qmlls.ini', 'qmlconfig.json' },
    single_file_support = true,

    settings = {
        qml = {
                importPaths = {
                "/usr/lib/qt6/qml",
                "/usr/lib64/qt6/qml"
            }
        }
    }
}
