.class public Lcom/amap/api/mapcore/util/bo;
.super Ljava/lang/Object;
.source "ClientInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 7

    .prologue
    .line 688
    const/4 v1, 0x0

    .line 690
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 691
    :try_start_1
    const-string v0, "1"

    .line 692
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 694
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    add-int/lit8 v5, v2, -0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 699
    :goto_0
    return-object v0

    .line 695
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 697
    :goto_1
    const-string v2, "CInfo"

    const-string v3, "getTS"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 695
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/mapcore/util/bv;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore/util/bq;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 521
    const-string v2, "\"sim\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"sdkversion\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/amap/api/mapcore/util/bv;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"product\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/amap/api/mapcore/util/bv;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"ed\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/bv;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"nt\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/bq;->c(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"np\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/bq;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"mnc\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/bq;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"ant\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/bq;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 541
    :catch_0
    move-exception v0

    .line 542
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/mapcore/util/bv;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amap/api/mapcore/util/bv;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x75

    .line 240
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 241
    invoke-static {p0}, Lcom/amap/api/mapcore/util/bq;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 249
    invoke-static {p0}, Lcom/amap/api/mapcore/util/bq;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 253
    invoke-static {p0}, Lcom/amap/api/mapcore/util/bq;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 254
    if-nez v0, :cond_0

    .line 255
    const-string v0, ""

    .line 260
    :cond_0
    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 264
    invoke-static {p0}, Lcom/amap/api/mapcore/util/bm;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 272
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 274
    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 278
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 280
    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 284
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 286
    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 291
    invoke-static {p0}, Lcom/amap/api/mapcore/util/bm;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 298
    invoke-static {p0}, Lcom/amap/api/mapcore/util/bm;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 305
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 309
    invoke-static {p0}, Lcom/amap/api/mapcore/util/bq;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 317
    invoke-static {p0}, Lcom/amap/api/mapcore/util/bq;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/amap/api/mapcore/util/bq;->m(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/amap/api/mapcore/util/bq;->l(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 335
    invoke-static {p0}, Lcom/amap/api/mapcore/util/bq;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 342
    invoke-static {p0}, Lcom/amap/api/mapcore/util/bq;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 347
    if-eqz p3, :cond_1

    .line 348
    const-string v0, ""

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 355
    :goto_0
    if-eqz p3, :cond_2

    .line 356
    const-string v0, ""

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 366
    :goto_1
    if-eqz p3, :cond_3

    .line 368
    const-string v0, ""

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 370
    const-string v0, ""

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 380
    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 382
    invoke-static {v0}, Lcom/amap/api/mapcore/util/bw;->a([B)[B

    move-result-object v1

    .line 385
    invoke-static {p0}, Lcom/amap/api/mapcore/util/bw;->a(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object v0

    .line 387
    array-length v2, v1

    if-le v2, v3, :cond_4

    .line 388
    const/16 v2, 0x75

    new-array v2, v2, [B

    .line 390
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x75

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    invoke-static {v2, v0}, Lcom/amap/api/mapcore/util/br;->a([BLjava/security/Key;)[B

    move-result-object v2

    .line 395
    array-length v0, v1

    add-int/lit16 v0, v0, 0x80

    add-int/lit8 v0, v0, -0x75

    new-array v0, v0, [B

    .line 397
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x80

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    const/16 v2, 0x75

    const/16 v3, 0x80

    array-length v4, v1

    add-int/lit8 v4, v4, -0x75

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    :goto_3
    invoke-static {v0}, Lcom/amap/api/mapcore/util/br;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 415
    :goto_4
    return-object v0

    .line 351
    :cond_1
    invoke-static {p0}, Lcom/amap/api/mapcore/util/bq;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    const-string v1, "CInfo"

    const-string v2, "InitXInfo"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const/4 v0, 0x0

    goto :goto_4

    .line 359
    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/amap/api/mapcore/util/bq;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    goto :goto_1

    .line 374
    :cond_3
    invoke-static {p0}, Lcom/amap/api/mapcore/util/bq;->j(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 376
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 378
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    goto :goto_2

    .line 404
    :cond_4
    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/br;->a([BLjava/security/Key;)[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 703
    const/4 v0, 0x0

    .line 705
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore/util/bm;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/bs;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 715
    :goto_0
    return-object v0

    .line 711
    :catch_0
    move-exception v1

    .line 713
    const-string v2, "CInfo"

    const-string v3, "Scode"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/io/IOException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 423
    .line 424
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 425
    if-nez v1, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-object v0

    .line 432
    :cond_1
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 433
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 434
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 442
    invoke-static {p0}, Lcom/amap/api/mapcore/util/bw;->a(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object v2

    .line 444
    if-eqz v2, :cond_0

    .line 451
    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/br;->a([BLjava/security/Key;)[B

    move-result-object v0

    .line 453
    invoke-static {v1, p1}, Lcom/amap/api/mapcore/util/br;->a([B[B)[B

    move-result-object v1

    .line 455
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 457
    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    invoke-static {v2}, Lcom/amap/api/mapcore/util/bw;->a([B)[B

    move-result-object v0

    .line 464
    if-eqz v0, :cond_2

    .line 466
    invoke-static {v0}, Lcom/amap/api/mapcore/util/br;->b([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 469
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;B[B)V
    .locals 5

    .prologue
    const/16 v4, 0xff

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 673
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 674
    if-lez p1, :cond_1

    move v2, v0

    :goto_0
    and-int/lit16 v3, p1, 0xff

    if-ge v3, v4, :cond_2

    :goto_1
    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 675
    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 684
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v1

    .line 674
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 676
    :cond_3
    and-int/lit16 v0, p1, 0xff

    if-ne v0, v4, :cond_0

    .line 677
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-virtual {p0, p2, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 679
    :catch_0
    move-exception v0

    .line 680
    const-string v1, "CInfo"

    const-string v2, "writeField"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 648
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 649
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 652
    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 653
    const/4 v0, -0x1

    .line 659
    :goto_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;B[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :goto_1
    return-void

    .line 655
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-byte v0, v0

    goto :goto_0

    .line 660
    :catch_0
    move-exception v1

    .line 661
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;B[B)V

    goto :goto_1

    .line 665
    :cond_1
    new-array v0, v1, [B

    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/ByteArrayOutputStream;B[B)V

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 485
    :try_start_0
    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/bo;->a(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v0

    .line 514
    :goto_0
    return-object v0

    .line 486
    :catch_0
    move-exception v0

    .line 488
    const-string v1, "CInfo"

    const-string v2, "AESData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 489
    :catch_1
    move-exception v0

    .line 491
    const-string v1, "CInfo"

    const-string v2, "AESData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 492
    :catch_2
    move-exception v0

    .line 494
    const-string v1, "CInfo"

    const-string v2, "AESData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 495
    :catch_3
    move-exception v0

    .line 497
    const-string v1, "CInfo"

    const-string v2, "AESData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 498
    :catch_4
    move-exception v0

    .line 500
    const-string v1, "CInfo"

    const-string v2, "AESData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 501
    :catch_5
    move-exception v0

    .line 503
    const-string v1, "CInfo"

    const-string v2, "AESData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 504
    :catch_6
    move-exception v0

    .line 506
    const-string v1, "CInfo"

    const-string v2, "AESData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 507
    :catch_7
    move-exception v0

    .line 509
    const-string v1, "CInfo"

    const-string v2, "AESData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 510
    :catch_8
    move-exception v0

    .line 512
    const-string v1, "CInfo"

    const-string v2, "AESData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
