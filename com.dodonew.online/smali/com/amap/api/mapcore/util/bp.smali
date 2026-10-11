.class public Lcom/amap/api/mapcore/util/bp;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/bp$b;,
        Lcom/amap/api/mapcore/util/bp$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/mapcore/util/bv;Ljava/lang/String;)Lcom/amap/api/mapcore/util/bp$a;
    .locals 3

    .prologue
    .line 205
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/dk;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/dk;-><init>()V

    .line 206
    new-instance v1, Lcom/amap/api/mapcore/util/bp$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/amap/api/mapcore/util/bp$b;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/bv;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/dk;->a(Lcom/amap/api/mapcore/util/dp;)[B

    move-result-object v0

    .line 213
    invoke-static {v0}, Lcom/amap/api/mapcore/util/bp;->a([B)Lcom/amap/api/mapcore/util/bp$a;
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/bl; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 222
    :goto_0
    return-object v0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    const-string v1, "ConfigManager"

    const-string v2, "loadConfig"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :goto_1
    new-instance v0, Lcom/amap/api/mapcore/util/bp$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/bp$a;-><init>()V

    goto :goto_0

    .line 218
    :catch_1
    move-exception v0

    .line 219
    const-string v1, "ConfigManager"

    const-string v2, "loadConfig"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a([B)Lcom/amap/api/mapcore/util/bp$a;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 93
    new-instance v0, Lcom/amap/api/mapcore/util/bp$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/bp$a;-><init>()V

    .line 95
    if-eqz p0, :cond_0

    :try_start_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-object v0

    .line 98
    :cond_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 104
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    const-string v2, "status"

    invoke-static {v3, v2}, Lcom/amap/api/mapcore/util/bp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    const-string v2, "result"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    const-string v2, "result"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 112
    if-eqz v3, :cond_0

    .line 115
    const-string v2, "exception"

    invoke-static {v3, v2}, Lcom/amap/api/mapcore/util/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 116
    const-string v2, "exception"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 118
    invoke-static {v2}, Lcom/amap/api/mapcore/util/bp;->b(Lorg/json/JSONObject;)Z

    move-result v2

    .line 123
    :goto_1
    const-string v4, "common"

    invoke-static {v3, v4}, Lcom/amap/api/mapcore/util/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    const-string v1, "common"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 126
    invoke-static {v1}, Lcom/amap/api/mapcore/util/bp;->a(Lorg/json/JSONObject;)Z

    move-result v1

    .line 128
    :cond_2
    new-instance v4, Lcom/amap/api/mapcore/util/bp$a$a;

    invoke-direct {v4}, Lcom/amap/api/mapcore/util/bp$a$a;-><init>()V

    .line 129
    iput-boolean v2, v4, Lcom/amap/api/mapcore/util/bp$a$a;->a:Z

    .line 130
    iput-boolean v1, v4, Lcom/amap/api/mapcore/util/bp$a$a;->b:Z

    .line 131
    iput-object v4, v0, Lcom/amap/api/mapcore/util/bp$a;->d:Lcom/amap/api/mapcore/util/bp$a$a;

    .line 133
    const-string v1, "sdkupdate"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    const-string v1, "sdkupdate"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 136
    new-instance v2, Lcom/amap/api/mapcore/util/bp$a$c;

    invoke-direct {v2}, Lcom/amap/api/mapcore/util/bp$a$c;-><init>()V

    .line 137
    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/bp;->a(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/bp$a$c;)V

    .line 138
    iput-object v2, v0, Lcom/amap/api/mapcore/util/bp$a;->e:Lcom/amap/api/mapcore/util/bp$a$c;

    .line 142
    :cond_3
    const-string v1, "sdkcoordinate"

    invoke-static {v3, v1}, Lcom/amap/api/mapcore/util/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 143
    const-string v1, "sdkcoordinate"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 145
    new-instance v2, Lcom/amap/api/mapcore/util/bp$a$b;

    invoke-direct {v2}, Lcom/amap/api/mapcore/util/bp$a$b;-><init>()V

    .line 146
    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/bp;->a(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/bp$a$b;)V

    .line 148
    iput-object v2, v0, Lcom/amap/api/mapcore/util/bp$a;->f:Lcom/amap/api/mapcore/util/bp$a$b;

    .line 152
    :cond_4
    const-string v1, "callamap"

    invoke-static {v3, v1}, Lcom/amap/api/mapcore/util/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 153
    const-string v1, "callamap"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 155
    iput-object v1, v0, Lcom/amap/api/mapcore/util/bp$a;->b:Lorg/json/JSONObject;

    .line 158
    :cond_5
    const-string v1, "ca"

    invoke-static {v3, v1}, Lcom/amap/api/mapcore/util/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 159
    const-string v1, "ca"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 160
    iput-object v1, v0, Lcom/amap/api/mapcore/util/bp$a;->c:Lorg/json/JSONObject;

    .line 163
    :cond_6
    const-string v1, "locate"

    invoke-static {v3, v1}, Lcom/amap/api/mapcore/util/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const-string v1, "locate"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 165
    iput-object v1, v0, Lcom/amap/api/mapcore/util/bp$a;->a:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    const-string v2, "ConfigManager"

    const-string v3, "loadConfig"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :catch_1
    move-exception v1

    .line 184
    const-string v2, "ConfigManager"

    const-string v3, "loadConfig"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    :catch_2
    move-exception v1

    .line 186
    const-string v2, "ConfigManager"

    const-string v3, "loadConfig"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v2, v1

    goto/16 :goto_1
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 309
    if-nez p0, :cond_1

    .line 310
    const-string v0, ""

    .line 316
    :cond_0
    :goto_0
    return-object v0

    .line 312
    :cond_1
    const-string v0, ""

    .line 313
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/bp$a$b;)V
    .locals 3

    .prologue
    .line 322
    if-eqz p0, :cond_0

    .line 324
    :try_start_0
    const-string v0, "md5"

    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/bp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    const-string v1, "url"

    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/bp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    iput-object v0, p1, Lcom/amap/api/mapcore/util/bp$a$b;->b:Ljava/lang/String;

    .line 328
    iput-object v1, p1, Lcom/amap/api/mapcore/util/bp$a$b;->a:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    const-string v1, "ConfigManager"

    const-string v2, "parseSDKCoordinate"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :catch_1
    move-exception v0

    .line 334
    const-string v1, "ConfigManager"

    const-string v2, "parseSDKCoordinate"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/bp$a$c;)V
    .locals 4

    .prologue
    .line 342
    if-eqz p0, :cond_0

    .line 345
    :try_start_0
    const-string v0, "md5"

    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/bp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    const-string v1, "url"

    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/bp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 347
    const-string v2, "sdkversion"

    invoke-static {p0, v2}, Lcom/amap/api/mapcore/util/bp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iput-object v1, p1, Lcom/amap/api/mapcore/util/bp$a$c;->a:Ljava/lang/String;

    .line 354
    iput-object v0, p1, Lcom/amap/api/mapcore/util/bp$a$c;->b:Ljava/lang/String;

    .line 355
    iput-object v2, p1, Lcom/amap/api/mapcore/util/bp$a$c;->c:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    const-string v1, "ConfigManager"

    const-string v2, "parseSDKUpdate"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :catch_1
    move-exception v0

    .line 365
    const-string v1, "ConfigManager"

    const-string v2, "parseSDKUpdate"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 297
    if-nez p0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v0

    .line 300
    :cond_1
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 372
    if-nez p0, :cond_0

    .line 386
    :goto_0
    return v0

    .line 375
    :cond_0
    :try_start_0
    const-string v1, "commoninfo"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 377
    const-string v2, "com_isupload"

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/bp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-static {v1}, Lcom/amap/api/mapcore/util/bp;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v1

    .line 382
    const-string v2, "ConfigManager"

    const-string v3, "parseCommon"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :catch_1
    move-exception v1

    .line 384
    const-string v2, "ConfigManager"

    const-string v3, "parseCommon"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONObject;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 392
    if-nez p0, :cond_0

    .line 409
    :goto_0
    return v0

    .line 395
    :cond_0
    :try_start_0
    const-string v1, "exceptinfo"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 398
    const-string v2, "ex_isupload"

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/bp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-static {v1}, Lcom/amap/api/mapcore/util/bp;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v1

    .line 403
    const-string v2, "ConfigManager"

    const-string v3, "parseException"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :catch_1
    move-exception v1

    .line 406
    const-string v2, "ConfigManager"

    const-string v3, "parseException"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
