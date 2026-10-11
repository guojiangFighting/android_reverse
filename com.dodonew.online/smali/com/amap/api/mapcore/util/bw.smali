.class public Lcom/amap/api/mapcore/util/bw;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 200
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const-string v0, ""

    .line 218
    :goto_0
    return-object v0

    .line 203
    :cond_0
    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 205
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 206
    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 207
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 212
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    const-string v1, "Utils"

    const-string v2, "sortParams"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, p0

    .line 218
    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 118
    .line 121
    :try_start_0
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :try_start_1
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    :try_start_2
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 124
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 125
    :goto_0
    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 127
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 134
    if-eqz v3, :cond_1

    .line 136
    :try_start_3
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    .line 142
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 144
    :try_start_4
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    .line 151
    :cond_2
    :goto_2
    return-object v0

    .line 131
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 132
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 134
    if-eqz v3, :cond_3

    .line 136
    :try_start_6
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 142
    :cond_3
    :goto_4
    if-eqz v2, :cond_2

    .line 144
    :try_start_7
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 145
    :catch_1
    move-exception v1

    .line 147
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 134
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_6
    if-eqz v3, :cond_4

    .line 136
    :try_start_8
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 142
    :cond_4
    :goto_7
    if-eqz v2, :cond_5

    .line 144
    :try_start_9
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 134
    :cond_5
    :goto_8
    throw v0

    .line 137
    :catch_2
    move-exception v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 145
    :catch_3
    move-exception v1

    .line 147
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 137
    :catch_4
    move-exception v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 137
    :catch_5
    move-exception v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 145
    :catch_6
    move-exception v1

    goto :goto_5

    .line 134
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 131
    :catch_7
    move-exception v1

    move-object v2, v0

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_3
.end method

.method static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
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

    .prologue
    .line 92
    if-eqz p0, :cond_2

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 96
    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static a(Landroid/content/Context;)Ljava/security/PublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 296
    const/16 v1, 0x2a2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 349
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    :try_start_1
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 351
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 352
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 353
    if-eqz v1, :cond_0

    if-nez v3, :cond_2

    .line 362
    :cond_0
    if-eqz v2, :cond_1

    .line 363
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 366
    :cond_1
    return-object v0

    .line 356
    :cond_2
    :try_start_2
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 358
    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 362
    if-eqz v2, :cond_1

    goto :goto_0

    .line 359
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 360
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 362
    if-eqz v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_3

    .line 363
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 362
    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 359
    :catch_1
    move-exception v1

    goto :goto_1

    .line 296
    :array_0
    .array-data 1
        0x30t
        -0x7et
        0x2t
        -0x62t
        0x30t
        -0x7et
        0x2t
        0x7t
        -0x60t
        0x3t
        0x2t
        0x1t
        0x2t
        0x2t
        0x9t
        0x0t
        -0x63t
        0xft
        0x77t
        0x3at
        0x2ct
        -0x13t
        -0x69t
        -0x28t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x5t
        0x5t
        0x0t
        0x30t
        0x68t
        0x31t
        0xbt
        0x30t
        0x9t
        0x6t
        0x3t
        0x55t
        0x4t
        0x6t
        0x13t
        0x2t
        0x43t
        0x4et
        0x31t
        0x13t
        0x30t
        0x11t
        0x6t
        0x3t
        0x55t
        0x4t
        0x8t
        0xct
        0xat
        0x53t
        0x6ft
        0x6dt
        0x65t
        0x2dt
        0x53t
        0x74t
        0x61t
        0x74t
        0x65t
        0x31t
        0x10t
        0x30t
        0xet
        0x6t
        0x3t
        0x55t
        0x4t
        0x7t
        0xct
        0x7t
        0x42t
        0x65t
        0x69t
        0x6at
        0x69t
        0x6et
        0x67t
        0x31t
        0x11t
        0x30t
        0xft
        0x6t
        0x3t
        0x55t
        0x4t
        0xat
        0xct
        0x8t
        0x41t
        0x75t
        0x74t
        0x6ft
        0x6et
        0x61t
        0x76t
        0x69t
        0x31t
        0x1ft
        0x30t
        0x1dt
        0x6t
        0x3t
        0x55t
        0x4t
        0x3t
        0xct
        0x16t
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x61t
        0x75t
        0x74t
        0x6ft
        0x6et
        0x61t
        0x76t
        0x69t
        0x2et
        0x61t
        0x70t
        0x69t
        0x73t
        0x65t
        0x72t
        0x76t
        0x65t
        0x72t
        0x30t
        0x1et
        0x17t
        0xdt
        0x31t
        0x33t
        0x30t
        0x38t
        0x31t
        0x35t
        0x30t
        0x37t
        0x35t
        0x36t
        0x35t
        0x35t
        0x5at
        0x17t
        0xdt
        0x32t
        0x33t
        0x30t
        0x38t
        0x31t
        0x33t
        0x30t
        0x37t
        0x35t
        0x36t
        0x35t
        0x35t
        0x5at
        0x30t
        0x68t
        0x31t
        0xbt
        0x30t
        0x9t
        0x6t
        0x3t
        0x55t
        0x4t
        0x6t
        0x13t
        0x2t
        0x43t
        0x4et
        0x31t
        0x13t
        0x30t
        0x11t
        0x6t
        0x3t
        0x55t
        0x4t
        0x8t
        0xct
        0xat
        0x53t
        0x6ft
        0x6dt
        0x65t
        0x2dt
        0x53t
        0x74t
        0x61t
        0x74t
        0x65t
        0x31t
        0x10t
        0x30t
        0xet
        0x6t
        0x3t
        0x55t
        0x4t
        0x7t
        0xct
        0x7t
        0x42t
        0x65t
        0x69t
        0x6at
        0x69t
        0x6et
        0x67t
        0x31t
        0x11t
        0x30t
        0xft
        0x6t
        0x3t
        0x55t
        0x4t
        0xat
        0xct
        0x8t
        0x41t
        0x75t
        0x74t
        0x6ft
        0x6et
        0x61t
        0x76t
        0x69t
        0x31t
        0x1ft
        0x30t
        0x1dt
        0x6t
        0x3t
        0x55t
        0x4t
        0x3t
        0xct
        0x16t
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x61t
        0x75t
        0x74t
        0x6ft
        0x6et
        0x61t
        0x76t
        0x69t
        0x2et
        0x61t
        0x70t
        0x69t
        0x73t
        0x65t
        0x72t
        0x76t
        0x65t
        0x72t
        0x30t
        -0x7ft
        -0x61t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        -0x7ft
        -0x73t
        0x0t
        0x30t
        -0x7ft
        -0x77t
        0x2t
        -0x7ft
        -0x7ft
        0x0t
        -0xft
        -0x1bt
        -0x80t
        -0x38t
        0x76t
        -0x3bt
        0x3et
        -0x7ft
        0x4ft
        0x7dt
        -0x24t
        0x79t
        0x0t
        0x3ft
        -0x7dt
        -0x1et
        0x76t
        0x5t
        -0x55t
        -0x79t
        0x5bt
        0x27t
        0x5at
        0x7bt
        0x48t
        -0x7et
        -0x53t
        -0x29t
        -0x2dt
        -0x4dt
        -0x2at
        -0x78t
        -0x51t
        0x17t
        -0x2t
        -0x79t
        -0x1dt
        0x7bt
        -0x7t
        0x16t
        -0x72t
        -0x14t
        -0x19t
        0x4at
        0x43t
        -0x2bt
        0x41t
        0x7ct
        -0x7t
        0xbt
        -0x48t
        0x26t
        -0x7bt
        0x10t
        -0x3at
        0x50t
        0x20t
        0x3at
        -0x21t
        0xet
        0xbt
        0x24t
        0x3ct
        0xdt
        -0x79t
        0x64t
        0x69t
        -0x20t
        0x7bt
        -0x1ft
        0x72t
        -0x65t
        -0x29t
        0xct
        0x64t
        0x21t
        -0x78t
        0x3ft
        0x7et
        -0x7bt
        0x30t
        0x37t
        0x50t
        -0x74t
        0x1ct
        -0xat
        0x7dt
        0x3bt
        -0x29t
        -0x5ft
        -0x7et
        0x76t
        -0x46t
        0x2bt
        -0x7ft
        0x9t
        0x5dt
        -0x64t
        0x51t
        -0x13t
        -0x72t
        -0x29t
        0x55t
        -0x67t
        -0x25t
        -0x74t
        0x76t
        0x48t
        0x56t
        0x7dt
        -0x2bt
        -0x5ct
        -0xbt
        0x3ft
        0x45t
        -0x26t
        -0xat
        -0x41t
        0x7et
        -0x35t
        -0x73t
        0x3ct
        0x3et
        -0x56t
        -0x50t
        0x1t
        0x27t
        0x13t
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
        -0x5dt
        0x50t
        0x30t
        0x4et
        0x30t
        0x1dt
        0x6t
        0x3t
        0x55t
        0x1dt
        0xet
        0x4t
        0x16t
        0x4t
        0x14t
        -0x1dt
        0x3ft
        0x30t
        -0x4ft
        -0x71t
        -0xdt
        0x1at
        0x55t
        0x16t
        -0x1bt
        0x5dt
        -0x5t
        0x7at
        -0x67t
        -0x6dt
        0xet
        -0x12t
        0x6t
        -0xdt
        -0x6dt
        0x30t
        0x1ft
        0x6t
        0x3t
        0x55t
        0x1dt
        0x23t
        0x4t
        0x18t
        0x30t
        0x16t
        -0x80t
        0x14t
        -0x1dt
        0x3ft
        0x30t
        -0x4ft
        -0x71t
        -0xdt
        0x1at
        0x55t
        0x16t
        -0x1bt
        0x5dt
        -0x5t
        0x7at
        -0x67t
        -0x6dt
        0xet
        -0x12t
        0x6t
        -0xdt
        -0x6dt
        0x30t
        0xct
        0x6t
        0x3t
        0x55t
        0x1dt
        0x13t
        0x4t
        0x5t
        0x30t
        0x3t
        0x1t
        0x1t
        -0x1t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x5t
        0x5t
        0x0t
        0x3t
        -0x7ft
        -0x7ft
        0x0t
        -0x20t
        -0x4at
        0x37t
        -0x7dt
        -0x3at
        -0x80t
        0xft
        -0x3et
        0x64t
        -0x3ct
        0x3t
        -0x56t
        0x51t
        0x70t
        -0x3dt
        -0x38t
        -0x45t
        -0x7et
        0x8t
        0x63t
        -0x64t
        -0x26t
        -0x6ct
        -0x38t
        -0x7at
        0x7dt
        0x13t
        -0x40t
        -0x3dt
        0x5at
        0x55t
        -0x2ft
        -0x8t
        -0x7bt
        -0x67t
        0x69t
        0x4dt
        -0x20t
        -0x41t
        -0x3et
        -0x1ct
        0x43t
        -0x1ct
        -0x4et
        0x74t
        -0x31t
        0x78t
        -0x2t
        0x21t
        0xdt
        0x2ft
        0x2et
        -0x5t
        -0x70t
        0x3t
        -0x65t
        -0x7dt
        -0x73t
        0x5ct
        -0x7ct
        0x3at
        0x50t
        0x6bt
        -0x43t
        0x52t
        0x6t
        -0x3ft
        0x27t
        -0x5at
        -0x1t
        0x55t
        -0x3at
        0x52t
        -0x73t
        0x77t
        0xdt
        -0x4t
        -0x20t
        0x0t
        -0x62t
        0x64t
        -0x29t
        0x5et
        -0x4bt
        0x4bt
        -0x67t
        0x7et
        -0x50t
        0x55t
        0x28t
        -0x1bt
        0x3ct
        0x69t
        0x1ct
        -0x1bt
        -0x15t
        -0xft
        -0x62t
        0x67t
        -0x58t
        -0x6dt
        0x23t
        -0x77t
        -0x1bt
        -0x1at
        -0x7at
        0x71t
        0x3ft
        0x23t
        -0x21t
        0x46t
        0x17t
        0x21t
        -0x17t
        0x42t
        0x6ct
        0x38t
        0x70t
        0x2et
        -0x55t
        -0x7bt
        -0x7bt
        0x21t
        0x76t
        0x1bt
        0x60t
        -0x7t
        -0x67t
    .end array-data
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 43
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()[B
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 57
    :try_start_0
    const-string v0, "16,16,18,77,15,911,121,77,121,911,38,77,911,99,86,67,611,96,48,77,84,911,38,67,021,301,86,67,611,98,48,77,511,77,48,97,511,58,48,97,511,84,501,87,511,96,48,77,221,911,38,77,121,37,86,67,25,301,86,67,021,96,86,67,021,701,86,67,35,56,86,67,611,37,221,87"

    .line 59
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 62
    array-length v0, v2

    new-array v3, v0, [B

    move v0, v1

    .line 63
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 64
    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    aput-byte v4, v3, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/amap/api/mapcore/util/br;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 69
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 74
    array-length v0, v2

    new-array v0, v0, [B

    .line 75
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 76
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    aput-byte v3, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string v1, "Utils"

    const-string v2, "getIV"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/16 v0, 0x10

    new-array v0, v0, [B

    :cond_1
    return-object v0
.end method

.method public static a([B)[B
    .locals 3

    .prologue
    .line 229
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore/util/bw;->f([B)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    const-string v1, "Utils"

    const-string v2, "gZip"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :goto_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0

    .line 232
    :catch_1
    move-exception v0

    .line 233
    const-string v1, "Utils"

    const-string v2, "gZip"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static b(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
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

    .prologue
    .line 187
    invoke-static {p0}, Lcom/amap/api/mapcore/util/bw;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Lcom/amap/api/mapcore/util/bw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b([B)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 239
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-object v0

    .line 246
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :try_start_1
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 248
    :try_start_2
    new-instance v1, Ljava/util/zip/ZipEntry;

    const-string v4, "log"

    invoke-direct {v1, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 249
    invoke-virtual {v3, p0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 250
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 251
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 252
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 259
    if-eqz v3, :cond_2

    .line 261
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    .line 267
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 269
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v1

    .line 272
    const-string v2, "Utils"

    const-string v3, "zip2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 253
    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 255
    :goto_3
    :try_start_5
    const-string v4, "Utils"

    const-string v5, "zip"

    invoke-static {v1, v4, v5}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 259
    if-eqz v3, :cond_3

    .line 261
    :try_start_6
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    .line 267
    :cond_3
    :goto_4
    if-eqz v2, :cond_0

    .line 269
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 270
    :catch_2
    move-exception v1

    .line 272
    const-string v2, "Utils"

    const-string v3, "zip2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 259
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_5
    if-eqz v3, :cond_4

    .line 261
    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    .line 267
    :cond_4
    :goto_6
    if-eqz v2, :cond_5

    .line 269
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    .line 259
    :cond_5
    :goto_7
    throw v0

    .line 262
    :catch_3
    move-exception v1

    .line 263
    const-string v3, "Utils"

    const-string v4, "zip1"

    invoke-static {v1, v3, v4}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 270
    :catch_4
    move-exception v1

    .line 272
    const-string v2, "Utils"

    const-string v3, "zip2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 262
    :catch_5
    move-exception v1

    .line 263
    const-string v3, "Utils"

    const-string v4, "zip1"

    invoke-static {v1, v3, v4}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 262
    :catch_6
    move-exception v1

    .line 263
    const-string v3, "Utils"

    const-string v4, "zip1"

    invoke-static {v1, v3, v4}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 259
    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 253
    :catch_7
    move-exception v1

    move-object v3, v0

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_3
.end method

.method static c([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 387
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore/util/bw;->e([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    const-string v1, "Utils"

    const-string v2, "HexString"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static d([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore/util/bw;->e([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 400
    :goto_0
    return-object v0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 400
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    if-nez p0, :cond_0

    .line 406
    const/4 v0, 0x0

    .line 415
    :goto_0
    return-object v0

    .line 408
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 409
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 410
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 413
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 415
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static f([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 426
    .line 430
    if-nez p0, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-object v0

    .line 434
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 435
    :try_start_1
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 436
    :try_start_2
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 437
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 438
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 445
    if-eqz v1, :cond_2

    .line 447
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    .line 452
    :cond_2
    if-eqz v2, :cond_0

    .line 454
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    throw v0

    .line 439
    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 440
    :goto_1
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 445
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 447
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 452
    :cond_3
    if-eqz v2, :cond_4

    .line 454
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .line 445
    :cond_4
    throw v0

    .line 442
    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 443
    :goto_3
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 448
    :catch_3
    move-exception v0

    .line 449
    throw v0

    .line 455
    :catch_4
    move-exception v0

    .line 456
    throw v0

    .line 448
    :catch_5
    move-exception v0

    .line 449
    throw v0

    .line 445
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2

    .line 442
    :catch_6
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_3

    .line 439
    :catch_8
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1

    :catch_9
    move-exception v0

    goto :goto_1
.end method
