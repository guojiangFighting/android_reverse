.class public Lcom/amap/api/mapcore/util/bn;
.super Ljava/lang/Object;
.source "AuthManager.java"


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;

.field private static c:Lcom/amap/api/mapcore/util/bv;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, -0x1

    sput v0, Lcom/amap/api/mapcore/util/bn;->a:I

    .line 23
    const-string v0, ""

    sput-object v0, Lcom/amap/api/mapcore/util/bn;->b:Ljava/lang/String;

    .line 27
    const-string v0, "http://apiinit.amap.com/v3/log/init"

    sput-object v0, Lcom/amap/api/mapcore/util/bn;->d:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/mapcore/util/bn;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/amap/api/mapcore/util/bn;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 195
    :try_start_0
    const-string v0, "resType"

    const-string v2, "json"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v0, "encode"

    const-string v2, "UTF-8"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-static {}, Lcom/amap/api/mapcore/util/bo;->a()Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string v2, "ts"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v2, "key"

    invoke-static {p0}, Lcom/amap/api/mapcore/util/bm;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resType=json&encode=UTF-8&key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/amap/api/mapcore/util/bm;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-static {v2}, Lcom/amap/api/mapcore/util/bw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    const-string v3, "scode"

    invoke-static {p0, v0, v2}, Lcom/amap/api/mapcore/util/bo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-object v1

    .line 212
    :catch_0
    move-exception v0

    .line 214
    const-string v2, "Auth"

    const-string v3, "gParams"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    invoke-static {p0}, Lcom/amap/api/mapcore/util/bm;->a(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/amap/api/mapcore/util/bv;)Z
    .locals 2

    .prologue
    .line 105
    const-class v0, Lcom/amap/api/mapcore/util/bn;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/amap/api/mapcore/util/bn;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/bv;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Landroid/content/Context;Lcom/amap/api/mapcore/util/bv;Z)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 33
    sput-object p1, Lcom/amap/api/mapcore/util/bn;->c:Lcom/amap/api/mapcore/util/bv;

    .line 39
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/bn;->a()Ljava/lang/String;

    move-result-object v1

    .line 40
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 41
    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v3, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v3, "User-Agent"

    sget-object v4, Lcom/amap/api/mapcore/util/bn;->c:Lcom/amap/api/mapcore/util/bv;

    iget-object v4, v4, Lcom/amap/api/mapcore/util/bv;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v3, "X-INFO"

    sget-object v4, Lcom/amap/api/mapcore/util/bn;->c:Lcom/amap/api/mapcore/util/bv;

    const/4 v5, 0x0

    invoke-static {p0, v4, v5, p2}, Lcom/amap/api/mapcore/util/bo;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/bv;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v3, "logversion"

    const-string v4, "2.1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v3, "platinfo"

    const-string v4, "platform=Android&sdkversion=%s&product=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/amap/api/mapcore/util/bn;->c:Lcom/amap/api/mapcore/util/bv;

    iget-object v7, v7, Lcom/amap/api/mapcore/util/bv;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/amap/api/mapcore/util/bn;->c:Lcom/amap/api/mapcore/util/bv;

    iget-object v7, v7, Lcom/amap/api/mapcore/util/bv;->c:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {}, Lcom/amap/api/mapcore/util/dk;->a()Lcom/amap/api/mapcore/util/dk;

    move-result-object v3

    .line 74
    new-instance v4, Lcom/amap/api/mapcore/util/bx;

    invoke-direct {v4}, Lcom/amap/api/mapcore/util/bx;-><init>()V

    .line 75
    invoke-static {p0}, Lcom/amap/api/mapcore/util/bt;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/mapcore/util/bx;->a(Ljava/net/Proxy;)V

    .line 76
    invoke-virtual {v4, v2}, Lcom/amap/api/mapcore/util/bx;->a(Ljava/util/Map;)V

    .line 77
    invoke-static {p0}, Lcom/amap/api/mapcore/util/bn;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 78
    invoke-virtual {v4, v2}, Lcom/amap/api/mapcore/util/bx;->b(Ljava/util/Map;)V

    .line 79
    invoke-virtual {v4, v1}, Lcom/amap/api/mapcore/util/bx;->a(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore/util/dk;->b(Lcom/amap/api/mapcore/util/dp;)[B

    move-result-object v1

    .line 97
    invoke-static {v1}, Lcom/amap/api/mapcore/util/bn;->a([B)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 102
    :goto_0
    return v0

    .line 98
    :catch_0
    move-exception v1

    .line 100
    const-string v2, "Auth"

    const-string v3, "getAuth"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a([B)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 139
    .line 141
    if-nez p0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 150
    :goto_1
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 151
    const-string v2, "status"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    const-string v2, "status"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 153
    if-ne v2, v0, :cond_5

    .line 154
    const/4 v2, 0x1

    sput v2, Lcom/amap/api/mapcore/util/bn;->a:I

    .line 159
    :cond_2
    :goto_2
    const-string v2, "info"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 160
    const-string v2, "info"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amap/api/mapcore/util/bn;->b:Ljava/lang/String;

    .line 162
    :cond_3
    sget v2, Lcom/amap/api/mapcore/util/bn;->a:I

    if-nez v2, :cond_4

    .line 163
    const-string v2, "AuthFailure"

    sget-object v3, Lcom/amap/api/mapcore/util/bn;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_4
    sget v2, Lcom/amap/api/mapcore/util/bn;->a:I

    if-eq v2, v0, :cond_0

    move v0, v1

    .line 168
    goto :goto_0

    .line 147
    :catch_0
    move-exception v2

    .line 148
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 170
    :catch_1
    move-exception v0

    .line 182
    const-string v2, "Auth"

    const-string v3, "lData"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move v0, v1

    .line 188
    goto :goto_0

    .line 155
    :cond_5
    if-nez v2, :cond_2

    .line 156
    const/4 v2, 0x0

    :try_start_2
    sput v2, Lcom/amap/api/mapcore/util/bn;->a:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 184
    :catch_2
    move-exception v0

    .line 186
    const-string v2, "Auth"

    const-string v3, "lData"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static declared-synchronized b(Landroid/content/Context;Lcom/amap/api/mapcore/util/bv;)Z
    .locals 2

    .prologue
    .line 118
    const-class v0, Lcom/amap/api/mapcore/util/bn;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/amap/api/mapcore/util/bn;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/bv;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
