.class public Lcom/alipay/apmobilesecuritysdk/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Z


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/apmobilesecuritysdk/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/a/a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/apmobilesecuritysdk/a/a;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/alipay/apmobilesecuritysdk/a/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/a/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/a/d;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/a/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/a/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/a/e;->c()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/apmobilesecuritysdk/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    sget-object v1, Lcom/alipay/apmobilesecuritysdk/b/a;->b:Lcom/alipay/security/mobile/module/http/UploadFactory$Mode;

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/module/http/UploadFactory;->create(Landroid/content/Context;Lcom/alipay/security/mobile/module/http/UploadFactory$Mode;)Lcom/alipay/security/mobile/module/http/IUpload;

    move-result-object v0

    const-string v1, "android"

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/alipay/security/mobile/module/http/IUpload;->getAppList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult;

    move-result-object v0

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/a/f;

    invoke-direct {v1, v0}, Lcom/alipay/apmobilesecuritysdk/a/f;-><init>(Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult;)V

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/a/f;->a()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Z)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/a/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/apmobilesecuritysdk/a/h;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/a/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/apmobilesecuritysdk/a/h;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/c;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Z)V

    throw v0
.end method

.method private static declared-synchronized a(Z)V
    .locals 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/a/a;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/alipay/apmobilesecuritysdk/a/a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized a()Z
    .locals 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/a/a;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/alipay/apmobilesecuritysdk/a/a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b(Ljava/util/Map;)Lcom/alipay/apmobilesecuritysdk/a/g;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/apmobilesecuritysdk/a/g;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    new-instance v6, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;

    invoke-direct {v6}, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;-><init>()V

    const-string v7, "3"

    const-string v4, ""

    const-string v3, ""

    const-string v0, ""

    const-string v2, ""

    const-string v8, "umid"

    const-string v9, ""

    invoke-static {p1, v8, v9}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Lcom/alipay/apmobilesecuritysdk/a/d;->b(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/a/e;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lcom/alipay/apmobilesecuritysdk/a/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/alipay/apmobilesecuritysdk/a/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/alipay/apmobilesecuritysdk/a/e;->d()Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    move-object v2, v3

    move-object v3, v10

    :goto_0
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/a/d;->a()Lcom/alipay/apmobilesecuritysdk/a/e;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/alipay/apmobilesecuritysdk/a/e;->a()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v2}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v5}, Lcom/alipay/apmobilesecuritysdk/a/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v9, "android"

    iput-object v9, v6, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->os:Ljava/lang/String;

    iput-object v2, v6, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->priApdid:Ljava/lang/String;

    iput-object v0, v6, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->pubApdid:Ljava/lang/String;

    iput-object v4, v6, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->token:Ljava/lang/String;

    iput-object v8, v6, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->umidToken:Ljava/lang/String;

    iput-object v3, v6, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->lastTime:Ljava/lang/String;

    iput-object v7, v6, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->version:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v5, p1}, Lcom/alipay/apmobilesecuritysdk/d/d;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iput-object v0, v6, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->dataMap:Ljava/util/Map;

    iget-object v0, v6, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->dataMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->dataMap:Ljava/util/Map;

    const-string v2, "AL3"

    invoke-static {}, Lcom/alipay/security/mobile/module/b/a;->a()Lcom/alipay/security/mobile/module/b/a;

    invoke-static {v5}, Lcom/alipay/security/mobile/module/b/a;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v6, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->dataMap:Ljava/util/Map;

    const-string v3, "AA5"

    invoke-static {v5}, Lcom/alipay/apmobilesecuritysdk/a/h;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Lcom/alipay/apmobilesecuritysdk/a/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v4}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    const-string v0, ""

    :goto_1
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    sget-object v2, Lcom/alipay/apmobilesecuritysdk/b/a;->b:Lcom/alipay/security/mobile/module/http/UploadFactory$Mode;

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/module/http/UploadFactory;->create(Landroid/content/Context;Lcom/alipay/security/mobile/module/http/UploadFactory$Mode;)Lcom/alipay/security/mobile/module/http/IUpload;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/alipay/security/mobile/module/http/IUpload;->updateStaticData(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    move-result-object v2

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/a/g;

    invoke-direct {v0, v2}, Lcom/alipay/apmobilesecuritysdk/a/g;-><init>(Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;)V

    :goto_2
    return-object v0

    :cond_4
    invoke-static {}, Lcom/alipay/security/mobile/module/b/a;->a()Lcom/alipay/security/mobile/module/b/a;

    invoke-static {v5}, Lcom/alipay/security/mobile/module/b/a;->m(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v5, v4, v0}, Lcom/alipay/apmobilesecuritysdk/e/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/c;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2

    :cond_5
    move-object v10, v2

    move-object v2, v3

    move-object v3, v10

    goto/16 :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/a/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/a/d;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/a/e;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/a/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/a/e;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/a/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, ""

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/log/ap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "security-sdk-token"

    const-string v4, "3.0.2.20150525"

    const-string v0, "tid"

    const-string v5, ""

    invoke-static {p1, v0, v5}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "utdid"

    const-string v6, ""

    invoke-static {p1, v0, v6}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/a/d;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/a/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/a/e;->a()Ljava/lang/String;

    move-result-object v7

    :cond_1
    new-instance v0, Lcom/alipay/apmobilesecuritysdk/c/a;

    invoke-direct/range {v0 .. v7}, Lcom/alipay/apmobilesecuritysdk/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/c/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v1, v0}, Lcom/alipay/security/mobile/module/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/a/b;

    invoke-direct {v1, p0}, Lcom/alipay/apmobilesecuritysdk/a/b;-><init>(Lcom/alipay/apmobilesecuritysdk/a/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "userId"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/d/d;->a()V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alipay/apmobilesecuritysdk/d/d;->b(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/a/d;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/a/e;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/alipay/apmobilesecuritysdk/a/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v8

    :goto_1
    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/a/i;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v0, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/alipay/apmobilesecuritysdk/a/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2}, Lcom/alipay/apmobilesecuritysdk/a/e;->c()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    sget-object v2, Lcom/alipay/apmobilesecuritysdk/b/a;->b:Lcom/alipay/security/mobile/module/http/UploadFactory$Mode;

    invoke-static {v1, v2}, Lcom/alipay/security/mobile/module/http/UploadFactory;->create(Landroid/content/Context;Lcom/alipay/security/mobile/module/http/UploadFactory$Mode;)Lcom/alipay/security/mobile/module/http/IUpload;

    move-result-object v1

    new-instance v2, Lcom/alipay/apmobilesecuritysdk/c/b;

    invoke-direct {v2, v11, v1}, Lcom/alipay/apmobilesecuritysdk/c/b;-><init>(Ljava/lang/String;Lcom/alipay/security/mobile/module/http/IUpload;)V

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/alipay/apmobilesecuritysdk/c/b;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :goto_3
    invoke-static {v1}, Lcom/alipay/security/mobile/module/a/c;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_2
    move v0, v9

    goto :goto_1

    :cond_3
    move v0, v8

    goto :goto_1

    :cond_4
    :try_start_2
    invoke-direct {p0, p1}, Lcom/alipay/apmobilesecuritysdk/a/a;->b(Ljava/util/Map;)Lcom/alipay/apmobilesecuritysdk/a/g;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/alipay/apmobilesecuritysdk/a/g;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/a/a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/alipay/apmobilesecuritysdk/a/g;->f()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    :try_start_3
    const-string v4, "vkeyid_settings"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v5, "log_switch"

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/alipay/security/mobile/module/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/module/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    :cond_5
    :goto_5
    :try_start_4
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/a/h;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/alipay/apmobilesecuritysdk/a/g;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v3}, Lcom/alipay/apmobilesecuritysdk/a/g;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v3}, Lcom/alipay/apmobilesecuritysdk/a/g;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/a/a;->a()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    new-instance v4, Lcom/alipay/apmobilesecuritysdk/a/c;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/alipay/apmobilesecuritysdk/a/c;-><init>(Lcom/alipay/apmobilesecuritysdk/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v0, 0x0

    :try_start_6
    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Z)V

    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alipay/apmobilesecuritysdk/d/d;->b(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_7

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/a/e;

    invoke-direct {v1, v3, v0}, Lcom/alipay/apmobilesecuritysdk/a/e;-><init>(Lcom/alipay/apmobilesecuritysdk/a/g;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/alipay/apmobilesecuritysdk/a/d;->a(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/a/e;)V

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/a/i;->a(Lcom/alipay/apmobilesecuritysdk/a/e;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/a/a/a;->a(Lcom/alipay/apmobilesecuritysdk/a/e;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    move-result-wide v4

    :try_start_7
    const-string v1, "vkeyid_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/security/mobile/module/a/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/security/mobile/module/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vkey_valid"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :cond_7
    :goto_7
    :try_start_8
    invoke-virtual {v3}, Lcom/alipay/apmobilesecuritysdk/a/g;->c()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    move-result-object v0

    goto/16 :goto_2

    :cond_8
    :try_start_9
    invoke-static {}, Lcom/alipay/security/mobile/module/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/module/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    move-result-object v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    :try_start_a
    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Z)V

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Z)V

    throw v0

    :cond_9
    if-eqz v3, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Server error, result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/apmobilesecuritysdk/a/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/c;->a(Ljava/lang/String;)V

    :goto_8
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/alipay/apmobilesecuritysdk/a/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v2}, Lcom/alipay/apmobilesecuritysdk/a/e;->c()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_a
    const-string v0, "Server error, response is null"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/c;->a(Ljava/lang/String;)V

    goto :goto_8

    :cond_b
    const-string v0, ""
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_2

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto/16 :goto_5
.end method
