module.exports = {
    // node端 配置项
    port: 8081,
    project_path: __dirname,
    // 后台api地址 配置项
    apiHost: "http://127.0.0.1",
    apiPort: 8080,
    apiModuleName: "bookMarket-java",
    // 极速API 配置项
    jiSuApiBaseUrl: "https://api.jisuapi.com",
    jiSuApiIpPath: "/ip/location",
    jiSuApiBookNamePath: 'isbn/search',
    jiSuApiBookIsbnPath: '/isbn/query',
    jiSuApiAppKey: "148a5d000c527ed5",
    // 阿里云 OSS 配置项
    ossRegion: 'oss-cn-shanghai',
    ossAccessKeyId: 'LTAI4FtQ9cPJRn3E7r6R7swT',
    ossAccessKeySecret: 'ZYOq5vVHnQcAsszh4hXuTVmp9Bx1u7',
    ossBucket: 'book-market',

}
