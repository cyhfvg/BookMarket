let log4js = require('log4js');
log4js.configure({
    appenders:{
        console: {
            type: 'console',
            layout: {
                type: 'pattern',
                pattern: '%d %p %c %f:%l %m%n'
            }
        },
        file: {
            type: 'dateFile',
            filename: './logs/log',
            pattern: '_yyyy-MM-dd.log',
            // 文件名是否始终包含占位符
            alwaysIncludePattern: true,
            // 文件名是否绝对路径
            absolute: false,
        }
    },
    categories: {
        // 设置记录器的默认显示级别,低于这个级别的日志,不会输出
        // trace,debug,info,warn,error,fatal
        cheese: {
            appenders: ['file', 'console'],
            level: 'debug',
            enableCallStack: true
        },
        default: {
            appenders:['console'],
            level: 'info',
            enableCallStack: true
        }
    }
});

let logger = log4js.getLogger('cheese');
exports.logger = logger;

exports.use = function(app) {
    // app.use(log4js.connectLogger(dateFileLog, {level:'auto', format: ':method :url'}));
    app.use(log4js.connectLogger(logger,{level: 'auto',format: (req, res, format) => format(`:remote-addr "HTTP/:http-version :method :url :status ${JSON.stringify(req.body)}" ":user-agent"`)
        // format: (req, res, format) => format(`:remote-addr - ${req.id} - ":method :url HTTP/:http-version" :status :content-length ":referrer" ":user-agent"`)
    }));
}
