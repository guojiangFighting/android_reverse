.class public Lcom/hk/app/android/lib/http/params/FileParamValidatorParam;
.super Ljava/lang/Object;
.source "FileParamValidatorParam.java"


# instance fields
.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/hk/app/android/lib/http/params/FileParamValidatorParam;->key:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static closeOutputStream(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 87
    if-eqz p0, :cond_0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    const/4 p0, 0x0

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static convertStreamToByteArray(Ljava/io/InputStream;)[B
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v5, 0x0

    .line 57
    if-nez p0, :cond_0

    .line 73
    :goto_0
    return-object v5

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 63
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x400

    :try_start_1
    new-array v2, v6, [B

    .line 65
    .local v2, "buffer":[B
    const/4 v4, -0x1

    .line 66
    .local v4, "len":I
    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 69
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    if-nez v1, :cond_2

    .line 76
    :goto_2
    invoke-static {v1}, Lcom/hk/app/android/lib/http/params/FileParamValidatorParam;->closeOutputStream(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 67
    :cond_1
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v1, v2, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 72
    .end local v2    # "buffer":[B
    .end local v4    # "len":I
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 76
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    invoke-static {v0}, Lcom/hk/app/android/lib/http/params/FileParamValidatorParam;->closeOutputStream(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 70
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v4    # "len":I
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    goto :goto_2

    .line 75
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .end local v4    # "len":I
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v5

    .line 76
    :goto_4
    invoke-static {v0}, Lcom/hk/app/android/lib/http/params/FileParamValidatorParam;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 77
    throw v5

    .line 75
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 72
    :catch_1
    move-exception v3

    goto :goto_3
.end method


# virtual methods
.method public getValidateValue(Ljava/util/Map;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/hk/app/android/lib/http/params/FileTypeParam;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "fileParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/hk/app/android/lib/http/params/FileTypeParam;>;"
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 30
    .local v7, "validateValue":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 31
    .local v1, "currentIndex":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 32
    .local v6, "lastIndex":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 48
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 32
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 33
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/hk/app/android/lib/http/params/FileTypeParam;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hk/app/android/lib/http/params/FileTypeParam;

    .line 34
    .local v3, "fileParam":Lcom/hk/app/android/lib/http/params/FileTypeParam;
    iget-object v9, v3, Lcom/hk/app/android/lib/http/params/FileTypeParam;->inputStream:Ljava/io/InputStream;

    if-eqz v9, :cond_1

    .line 35
    if-ne v1, v6, :cond_2

    const/4 v5, 0x1

    .line 36
    .local v5, "isLast":Z
    :goto_1
    iget-object v9, v3, Lcom/hk/app/android/lib/http/params/FileTypeParam;->inputStream:Ljava/io/InputStream;

    invoke-static {v9}, Lcom/hk/app/android/lib/http/params/FileParamValidatorParam;->convertStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 37
    .local v0, "bytes":[B
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v9, v3, Lcom/hk/app/android/lib/http/params/FileTypeParam;->inputStream:Ljava/io/InputStream;

    .line 38
    invoke-static {v0}, Lcom/hk/app/android/lib/encrypt/Base64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "fileStr":Ljava/lang/String;
    invoke-static {v4}, Lcom/hk/app/android/lib/encrypt/MD5Security;->getMd5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 40
    if-eqz v5, :cond_3

    .line 41
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    .end local v0    # "bytes":[B
    .end local v4    # "fileStr":Ljava/lang/String;
    .end local v5    # "isLast":Z
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 43
    .restart local v0    # "bytes":[B
    .restart local v4    # "fileStr":Ljava/lang/String;
    .restart local v5    # "isLast":Z
    :cond_3
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
