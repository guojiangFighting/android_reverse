.class abstract Lcom/amap/api/mapcore/util/cj;
.super Ljava/lang/Object;
.source "LogUpDateProcessor.java"


# instance fields
.field private a:Lcom/amap/api/mapcore/util/de;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cj;->a()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/cj;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/amap/api/mapcore/util/de;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cj;->a:Lcom/amap/api/mapcore/util/de;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 56
    const-string v1, "LogProcessor"

    const-string v2, "LogUpDateProcessor"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Lcom/amap/api/mapcore/util/cj;
    .locals 1

    .prologue
    .line 33
    .line 34
    packed-switch p1, :pswitch_data_0

    .line 45
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    .line 36
    :pswitch_0
    new-instance v0, Lcom/amap/api/mapcore/util/ce;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/ce;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 39
    :pswitch_1
    new-instance v0, Lcom/amap/api/mapcore/util/cg;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/cg;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 42
    :pswitch_2
    new-instance v0, Lcom/amap/api/mapcore/util/cb;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/cb;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Lcom/amap/api/mapcore/util/de;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 340
    .line 342
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    sget-object v2, Lcom/amap/api/mapcore/util/ci;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 348
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 350
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    :goto_0
    return-object v0

    .line 354
    :cond_0
    const/4 v1, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x5000

    invoke-static {v2, v1, v3, v4, v5}, Lcom/amap/api/mapcore/util/de;->a(Ljava/io/File;IIJ)Lcom/amap/api/mapcore/util/de;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v1

    .line 356
    const-string v2, "LogProcessor"

    const-string v3, "initDiskLru"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 358
    :catch_1
    move-exception v1

    .line 359
    const-string v2, "LogProcessor"

    const-string v3, "initDiskLru"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/cx;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    const-string v0, "{\"pinfo\":\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/cj;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"els\":["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const/4 v0, 0x1

    .line 246
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cx;

    .line 247
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cx;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/amap/api/mapcore/util/cj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 248
    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    :goto_1
    move v1, v0

    .line 259
    goto :goto_0

    .line 251
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "||"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cx;->d()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    if-eqz v1, :cond_2

    .line 253
    const/4 v1, 0x0

    .line 257
    :goto_2
    const-string v4, "{\"log\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\"}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    move v0, v1

    goto :goto_1

    .line 255
    :cond_2
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 260
    :cond_3
    if-eqz v1, :cond_4

    .line 261
    const/4 v0, 0x0

    .line 264
    :goto_3
    return-object v0

    .line 263
    :cond_4
    const-string v0, "]}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private a(Lcom/amap/api/mapcore/util/cv;I)V
    .locals 3

    .prologue
    .line 125
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p1, v0, p2}, Lcom/amap/api/mapcore/util/cv;->a(II)Ljava/util/List;

    move-result-object v0

    .line 127
    invoke-direct {p0, v0, p1, p2}, Lcom/amap/api/mapcore/util/cj;->a(Ljava/util/List;Lcom/amap/api/mapcore/util/cv;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 130
    const-string v1, "LogProcessor"

    const-string v2, "processDeleteFail"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Lcom/amap/api/mapcore/util/cv;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/cx;",
            ">;",
            "Lcom/amap/api/mapcore/util/cv;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 196
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 197
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cx;

    .line 198
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cx;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/cj;->a(Ljava/lang/String;)Z

    move-result v2

    .line 199
    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cx;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/amap/api/mapcore/util/cv;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 203
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/cx;->a(I)V

    .line 204
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cx;->a()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Lcom/amap/api/mapcore/util/cv;->a(Lcom/amap/api/mapcore/util/cx;I)V

    goto :goto_0

    .line 211
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 103
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cj;->a:Lcom/amap/api/mapcore/util/de;

    if-nez v1, :cond_0

    .line 112
    :goto_0
    return v0

    .line 108
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cj;->a:Lcom/amap/api/mapcore/util/de;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore/util/de;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 139
    .line 142
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bw;->b([B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 149
    :goto_0
    new-instance v2, Lcom/amap/api/mapcore/util/ck;

    invoke-direct {v2, v0}, Lcom/amap/api/mapcore/util/ck;-><init>([B)V

    .line 151
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/amap/api/mapcore/util/do;->a(Z)Lcom/amap/api/mapcore/util/do;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/do;->b(Lcom/amap/api/mapcore/util/dp;)[B
    :try_end_1
    .catch Lcom/amap/api/mapcore/util/bl; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 153
    if-nez v2, :cond_0

    .line 191
    :goto_1
    return v1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bw;->b([B)[B

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_0
    :try_start_2
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/amap/api/mapcore/util/bl; {:try_start_2 .. :try_end_2} :catch_2

    .line 173
    :goto_2
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 174
    const-string v0, "code"

    .line 175
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/amap/api/mapcore/util/bl; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    :goto_3
    move v1, v0

    .line 191
    goto :goto_1

    .line 160
    :catch_1
    move-exception v0

    .line 162
    :try_start_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_4
    .catch Lcom/amap/api/mapcore/util/bl; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 186
    :catch_2
    move-exception v0

    .line 188
    const-string v2, "LogProcessor"

    const-string v3, "processUpdate"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bl;->printStackTrace()V

    :cond_1
    :goto_4
    move v0, v1

    goto :goto_3

    .line 179
    :catch_3
    move-exception v0

    .line 181
    :try_start_5
    const-string v2, "LogProcessor"

    const-string v3, "processUpdate"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_5
    .catch Lcom/amap/api/mapcore/util/bl; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 218
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/mapcore/util/by;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 219
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    :goto_0
    return-object v0

    .line 222
    :cond_0
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 223
    invoke-static {p1, v1}, Lcom/amap/api/mapcore/util/bo;->b(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    .line 227
    const-string v2, "LogProcessor"

    const-string v3, "getPublicInfo"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 229
    :catch_1
    move-exception v1

    .line 231
    const-string v2, "LogProcessor"

    const-string v3, "getPublicInfo"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 268
    const/4 v1, 0x0

    .line 270
    const/4 v2, 0x0

    .line 273
    :try_start_0
    iget-object v3, p0, Lcom/amap/api/mapcore/util/cj;->a:Lcom/amap/api/mapcore/util/de;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    .line 297
    if-eqz v0, :cond_0

    .line 299
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 306
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 308
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 316
    :cond_1
    :goto_1
    return-object v0

    .line 300
    :catch_0
    move-exception v2

    .line 301
    const-string v3, "LogProcessor"

    const-string v4, "readLog1"

    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 309
    :catch_1
    move-exception v1

    .line 310
    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 276
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/amap/api/mapcore/util/cj;->a:Lcom/amap/api/mapcore/util/de;

    invoke-virtual {v3, p1}, Lcom/amap/api/mapcore/util/de;->a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/de$b;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 277
    if-nez v3, :cond_4

    .line 297
    if-eqz v0, :cond_3

    .line 299
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 306
    :cond_3
    :goto_2
    if-eqz v0, :cond_1

    .line 308
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 309
    :catch_2
    move-exception v1

    .line 310
    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 300
    :catch_3
    move-exception v2

    .line 301
    const-string v3, "LogProcessor"

    const-string v4, "readLog1"

    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 280
    :cond_4
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v3, v1}, Lcom/amap/api/mapcore/util/de$b;->a(I)Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v3

    .line 282
    :try_start_7
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 283
    const/16 v1, 0x400

    :try_start_8
    new-array v1, v1, [B

    .line 284
    :goto_3
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 285
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_f
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    .line 289
    :catch_4
    move-exception v1

    .line 290
    :goto_4
    :try_start_9
    const-string v4, "LogProcessor"

    const-string v5, "readLog"

    invoke-static {v1, v4, v5}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 297
    if-eqz v2, :cond_5

    .line 299
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 306
    :cond_5
    :goto_5
    if-eqz v3, :cond_1

    .line 308
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_1

    .line 309
    :catch_5
    move-exception v1

    .line 310
    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 287
    :cond_6
    :try_start_c
    const-string v1, "utf-8"

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_f
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v0

    .line 297
    if-eqz v2, :cond_7

    .line 299
    :try_start_d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 306
    :cond_7
    :goto_6
    if-eqz v3, :cond_1

    .line 308
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_1

    .line 309
    :catch_6
    move-exception v1

    .line 310
    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 300
    :catch_7
    move-exception v1

    .line 301
    const-string v2, "LogProcessor"

    const-string v4, "readLog1"

    invoke-static {v1, v2, v4}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 300
    :catch_8
    move-exception v1

    .line 301
    const-string v2, "LogProcessor"

    const-string v4, "readLog1"

    invoke-static {v1, v2, v4}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 292
    :catch_9
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 293
    :goto_7
    :try_start_f
    const-string v4, "LogProcessor"

    const-string v5, "readLog"

    invoke-static {v1, v4, v5}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 297
    if-eqz v2, :cond_8

    .line 299
    :try_start_10
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 306
    :cond_8
    :goto_8
    if-eqz v3, :cond_1

    .line 308
    :try_start_11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    goto/16 :goto_1

    .line 309
    :catch_a
    move-exception v1

    .line 310
    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 300
    :catch_b
    move-exception v1

    .line 301
    const-string v2, "LogProcessor"

    const-string v4, "readLog1"

    invoke-static {v1, v2, v4}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 297
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_9
    if-eqz v2, :cond_9

    .line 299
    :try_start_12
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    .line 306
    :cond_9
    :goto_a
    if-eqz v3, :cond_a

    .line 308
    :try_start_13
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d

    .line 313
    :cond_a
    :goto_b
    throw v0

    .line 300
    :catch_c
    move-exception v1

    .line 301
    const-string v2, "LogProcessor"

    const-string v4, "readLog1"

    invoke-static {v1, v2, v4}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 309
    :catch_d
    move-exception v1

    .line 310
    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 297
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_9

    .line 292
    :catch_e
    move-exception v1

    move-object v2, v0

    goto :goto_7

    :catch_f
    move-exception v1

    goto :goto_7

    .line 289
    :catch_10
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_4

    :catch_11
    move-exception v1

    move-object v2, v0

    goto/16 :goto_4
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract a(Landroid/content/Context;)Z
.end method

.method protected abstract b()I
.end method

.method b(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 65
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/cj;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :try_start_1
    new-instance v0, Lcom/amap/api/mapcore/util/cv;

    invoke-direct {v0, p1}, Lcom/amap/api/mapcore/util/cv;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cj;->b()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/amap/api/mapcore/util/cj;->a(Lcom/amap/api/mapcore/util/cv;I)V

    .line 76
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cj;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/mapcore/util/cv;->a(II)Ljava/util/List;

    move-result-object v2

    .line 79
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 80
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 94
    :catch_0
    move-exception v0

    .line 96
    const-string v1, "LogProcessor"

    const-string v2, "processUpdateLog"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 83
    :cond_2
    :try_start_3
    invoke-direct {p0, v2, p1}, Lcom/amap/api/mapcore/util/cj;->a(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 84
    if-nez v3, :cond_3

    .line 85
    monitor-exit v1

    goto :goto_0

    .line 87
    :cond_3
    invoke-direct {p0, v3}, Lcom/amap/api/mapcore/util/cj;->b(Ljava/lang/String;)I

    move-result v3

    .line 88
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 89
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cj;->b()I

    move-result v3

    invoke-direct {p0, v2, v0, v3}, Lcom/amap/api/mapcore/util/cj;->a(Ljava/util/List;Lcom/amap/api/mapcore/util/cv;I)V

    .line 92
    :cond_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method c()V
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->a:Lcom/amap/api/mapcore/util/de;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->a:Lcom/amap/api/mapcore/util/de;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/de;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->a:Lcom/amap/api/mapcore/util/de;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/de;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    const-string v1, "LogProcessor"

    const-string v2, "closeDiskLru"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 328
    :catch_1
    move-exception v0

    .line 329
    const-string v1, "LogProcessor"

    const-string v2, "closeDiskLru"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
