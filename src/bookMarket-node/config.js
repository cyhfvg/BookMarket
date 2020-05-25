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
    jiSuApiAppKey: "xxxxxxxxxxxxxx",
    // 阿里云 OSS 配置项
    ossRegion: 'oss-cn-shanghai',
    ossAccessKeyId: 'xxxxxxxxxxxxxxxxxx',
    ossAccessKeySecret: 'xxxxxxxxxxxxxxxxxxxx',
    ossBucket: 'book-market',

}
