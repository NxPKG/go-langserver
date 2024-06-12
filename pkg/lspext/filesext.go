package lspext

import "github.com/nxpkg/go-lsp/lspext"

// See https://github.com/nxpkg/language-server-protocol/pull/4.

// ContentParams is the input for 'textDocument/content'. The response is a
// 'TextDocumentItem'.
type ContentParams = lspext.ContentParams

// FilesParams is the input for 'workspace/xfiles'. The response is '[]TextDocumentIdentifier'
type FilesParams = lspext.FilesParams
