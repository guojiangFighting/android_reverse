.class public Lcom/Proxy/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field public static user_dir:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/Proxy/Helper;->user_dir:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte2int([B)I
    .locals 2
    .param p0, "b"    # [B

    .prologue
    .line 325
    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method public static checkIfCPUx86()Z
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x0

    .line 296
    const/16 v8, 0x14

    new-array v1, v8, [B

    .line 297
    .local v1, "b":[B
    const/4 v8, 0x4

    new-array v2, v8, [B

    .line 298
    .local v2, "c":[B
    const-string v6, "/proc/self/exe"

    .line 299
    .local v6, "path":Ljava/lang/String;
    const/4 v4, 0x0

    .line 301
    .local v4, "fi":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    .end local v4    # "fi":Ljava/io/FileInputStream;
    .local v5, "fi":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 307
    nop

    .line 308
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 314
    :goto_0
    const/16 v8, 0x12

    aget-byte v8, v1, v8

    aput-byte v8, v2, v10

    .line 315
    const/16 v8, 0x13

    aget-byte v8, v1, v8

    const/4 v9, 0x2

    aput-byte v8, v2, v9

    .line 316
    invoke-static {v2}, Lcom/Proxy/Helper;->byte2int([B)I

    move-result v0

    .line 317
    .local v0, "arch":I
    if-ne v0, v10, :cond_0

    const/16 v8, 0x3e

    if-eq v0, v8, :cond_1

    .line 318
    :cond_0
    const/4 v7, 0x1

    move-object v4, v5

    .line 320
    .end local v0    # "arch":I
    .end local v5    # "fi":Ljava/io/FileInputStream;
    .restart local v4    # "fi":Ljava/io/FileInputStream;
    :goto_1
    return v7

    .line 313
    .end local v4    # "fi":Ljava/io/FileInputStream;
    .restart local v5    # "fi":Ljava/io/FileInputStream;
    :catch_0
    move-exception v8

    nop

    goto :goto_0

    .restart local v0    # "arch":I
    :cond_1
    move-object v4, v5

    .line 320
    .end local v5    # "fi":Ljava/io/FileInputStream;
    .restart local v4    # "fi":Ljava/io/FileInputStream;
    goto :goto_1

    .line 306
    .end local v0    # "arch":I
    :catchall_0
    move-exception v7

    .line 307
    :goto_2
    if-eqz v4, :cond_2

    .line 308
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 312
    :cond_2
    nop

    .line 313
    :goto_3
    throw v7

    .line 303
    :catch_1
    move-exception v3

    .line 307
    .local v3, "e":Ljava/lang/Exception;
    :goto_4
    if-eqz v4, :cond_3

    .line 308
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 312
    :cond_3
    nop

    goto :goto_1

    .line 310
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v8

    goto :goto_3

    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v8

    goto :goto_1

    .line 303
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "fi":Ljava/io/FileInputStream;
    .restart local v5    # "fi":Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5    # "fi":Ljava/io/FileInputStream;
    .restart local v4    # "fi":Ljava/io/FileInputStream;
    goto :goto_4

    .line 306
    .end local v4    # "fi":Ljava/io/FileInputStream;
    .restart local v5    # "fi":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fi":Ljava/io/FileInputStream;
    .restart local v4    # "fi":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static clearOldFolder(Ljava/lang/String;)V
    .locals 5
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 268
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 270
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 271
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 272
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 271
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 276
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public static copyAssets(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 12
    .param p0, "output"    # Ljava/lang/String;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 214
    .local v5, "inputStream":Ljava/io/InputStream;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v6, "localFile":Ljava/io/File;
    const/high16 v9, 0x10000

    new-array v2, v9, [B

    .line 217
    .local v2, "bytes":[B
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 219
    .local v0, "bufferedInput":Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 221
    .local v1, "bufferedOutput":Ljava/io/BufferedOutputStream;
    const/4 v3, 0x1

    .line 222
    .local v3, "first":Z
    const/4 v9, 0x4

    new-array v8, v9, [B

    const/4 v9, 0x0

    const/16 v10, 0x4e

    aput-byte v10, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x47

    aput-byte v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-byte v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x0

    aput-byte v10, v8, v9

    .line 223
    .local v8, "nagic":[B
    const/4 v9, 0x4

    new-array v7, v9, [B

    const/4 v9, 0x0

    const/16 v10, 0x64

    aput-byte v10, v7, v9

    const/4 v9, 0x1

    const/16 v10, 0x65

    aput-byte v10, v7, v9

    const/4 v9, 0x2

    const/16 v10, 0x78

    aput-byte v10, v7, v9

    const/4 v9, 0x3

    const/16 v10, 0xa

    aput-byte v10, v7, v9

    .line 225
    .local v7, "magic":[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 226
    .local v4, "i":I
    if-eqz v3, :cond_0

    .line 227
    const/4 v3, 0x0

    .line 228
    const-string v9, ".dex"

    invoke-virtual {p0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    aget-byte v9, v2, v9

    const/4 v10, 0x0

    aget-byte v10, v8, v10

    if-ne v9, v10, :cond_1

    const/4 v9, 0x1

    aget-byte v9, v2, v9

    const/4 v10, 0x1

    aget-byte v10, v8, v10

    if-ne v9, v10, :cond_1

    const/4 v9, 0x2

    aget-byte v9, v2, v9

    const/4 v10, 0x2

    aget-byte v10, v8, v10

    if-ne v9, v10, :cond_1

    const/4 v9, 0x3

    aget-byte v9, v2, v9

    const/4 v10, 0x3

    aget-byte v10, v8, v10

    if-ne v9, v10, :cond_1

    .line 233
    :cond_0
    :goto_1
    if-gtz v4, :cond_2

    .line 234
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 235
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 236
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 244
    .end local v0    # "bufferedInput":Ljava/io/BufferedInputStream;
    .end local v1    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .end local v2    # "bytes":[B
    .end local v3    # "first":Z
    .end local v4    # "i":I
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "localFile":Ljava/io/File;
    .end local v7    # "magic":[B
    .end local v8    # "nagic":[B
    :goto_2
    return-void

    .line 229
    .restart local v0    # "bufferedInput":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bytes":[B
    .restart local v3    # "first":Z
    .restart local v4    # "i":I
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "localFile":Ljava/io/File;
    .restart local v7    # "magic":[B
    .restart local v8    # "nagic":[B
    :cond_1
    const-string v9, ".dex"

    invoke-virtual {p0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    aget-byte v9, v2, v9

    const/16 v10, 0x6e

    if-ne v9, v10, :cond_0

    const/4 v9, 0x1

    aget-byte v9, v2, v9

    const/16 v10, 0x61

    if-ne v9, v10, :cond_0

    const/4 v9, 0x2

    aget-byte v9, v2, v9

    const/16 v10, 0x67

    if-ne v9, v10, :cond_0

    const/4 v9, 0x3

    aget-byte v9, v2, v9

    const/16 v10, 0x61

    if-ne v9, v10, :cond_0

    .line 230
    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, v7

    invoke-static {v7, v9, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 244
    .end local v0    # "bufferedInput":Ljava/io/BufferedInputStream;
    .end local v1    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .end local v2    # "bytes":[B
    .end local v3    # "first":Z
    .end local v4    # "i":I
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "localFile":Ljava/io/File;
    .end local v7    # "magic":[B
    .end local v8    # "nagic":[B
    :catch_0
    move-exception v9

    goto :goto_2

    .line 239
    .restart local v0    # "bufferedInput":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bytes":[B
    .restart local v3    # "first":Z
    .restart local v4    # "i":I
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "localFile":Ljava/io/File;
    .restart local v7    # "magic":[B
    .restart local v8    # "nagic":[B
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static extract(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/lang/String;)V
    .locals 9
    .param p0, "apk"    # Ljava/util/zip/ZipFile;
    .param p1, "dexFile"    # Ljava/util/zip/ZipEntry;
    .param p2, "extractTo"    # Ljava/io/File;
    .param p3, "extractedFilePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 133
    .local v1, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 134
    .local v3, "out":Ljava/io/BufferedOutputStream;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tmp-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 135
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 134
    const-string v8, ".dex"

    invoke-static {v6, v8, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 137
    .local v5, "tmp":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 139
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .local v4, "out":Ljava/io/BufferedOutputStream;
    const/16 v6, 0x4000

    :try_start_1
    new-array v0, v6, [B

    .line 140
    .local v0, "buffer":[B
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 141
    .local v2, "length":I
    :goto_0
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 142
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 143
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    goto :goto_0

    .line 146
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 147
    nop

    .line 152
    invoke-virtual {v5, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 157
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 158
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 159
    nop

    .line 160
    return-void

    .line 153
    :cond_1
    :try_start_3
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to rename \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" to \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 154
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    .end local v0    # "buffer":[B
    .end local v2    # "length":I
    :catchall_0
    move-exception v6

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    :goto_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 158
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 159
    throw v6

    .line 146
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v6

    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 147
    nop

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 157
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v6

    goto :goto_1
.end method

.method public static extractDex(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 164
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 165
    .local v4, "zipFile":Ljava/util/zip/ZipFile;
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 166
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, "extractTo":Ljava/io/File;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 168
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 169
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "szName":Ljava/lang/String;
    const-string v5, "../"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 173
    const-string v5, "classes.dex"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 174
    const-string v5, "classes"

    invoke-static {v4, v1, v2, v5}, Lcom/Proxy/Helper;->extract(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/lang/String;)V

    .line 178
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "szName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static install(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    :try_start_0
    sput-object p0, Lcom/Proxy/Defines;->context:Landroid/content/Context;

    .line 35
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/Proxy/Helper;->user_dir:Ljava/lang/String;

    .line 37
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/Proxy/Helper;->user_dir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".cache/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/Proxy/Helper;->mkdir(Ljava/lang/String;)V

    .line 38
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/Proxy/Helper;->user_dir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".local/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/Proxy/Helper;->mkdir(Ljava/lang/String;)V

    .line 39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/Proxy/Helper;->user_dir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".meta-inf/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/Proxy/Helper;->mkdir(Ljava/lang/String;)V

    .line 40
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/Proxy/Helper;->user_dir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".shell/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/Proxy/Helper;->mkdir(Ljava/lang/String;)V

    .line 42
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/Proxy/Helper;->user_dir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".meta-inf/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "enc.mf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "_enc_mf":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/Proxy/Helper;->user_dir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".cache/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "res.data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "_res_data":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/Proxy/Helper;->user_dir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".cache/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "cert0_enc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "_cert0_enc":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/Proxy/Helper;->user_dir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".cache/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "xXxX.enc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "_uc_enc":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/Proxy/Helper;->user_dir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".cache/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "d3d3Lm5hZ2Fpbi5jb20="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "_mpaas_support":Ljava/lang/String;
    invoke-static {p0}, Lcom/Proxy/Helper;->isUpdate(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/Proxy/Helper;->user_dir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".cache/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "fake_classes.dex"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_0
    const/4 v6, 0x1

    :goto_0
    sput-boolean v6, Lcom/Proxy/Defines;->isUpdate:Z

    .line 53
    if-eqz v6, :cond_1

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/Proxy/Helper;->user_dir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".cache/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/Proxy/Helper;->clearOldFolder(Ljava/lang/String;)V

    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/Proxy/Helper;->user_dir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".local/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/Proxy/Helper;->clearOldFolder(Ljava/lang/String;)V

    .line 56
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/Proxy/Helper;->user_dir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".meta-inf/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/Proxy/Helper;->clearOldFolder(Ljava/lang/String;)V

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/Proxy/Helper;->user_dir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".shell/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/Proxy/Helper;->clearOldFolder(Ljava/lang/String;)V

    .line 60
    invoke-static {v2}, Lcom/Proxy/Helper;->mkdir(Ljava/lang/String;)V

    .line 61
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/Proxy/Helper;->user_dir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jiagu/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/Proxy/Helper;->mkdir(Ljava/lang/String;)V

    .line 62
    const-string v6, "maindata/res.data"

    invoke-static {v3, v6, p0}, Lcom/Proxy/Helper;->copyAssets(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 63
    const-string v6, "meta-inf/enc.mf"

    invoke-static {v1, v6, p0}, Lcom/Proxy/Helper;->copyAssets(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 64
    const-string v6, "maindata/xXxX.enc"

    invoke-static {v4, v6, p0}, Lcom/Proxy/Helper;->copyAssets(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 65
    const-string v6, "cert0_enc"

    invoke-static {v0, v6, p0}, Lcom/Proxy/Helper;->copyAssets(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 66
    invoke-static {p0}, Lcom/Proxy/Helper;->update(Landroid/content/Context;)V

    .line 69
    :cond_1
    invoke-static {}, Lcom/Proxy/Helper;->checkIfCPUx86()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_4

    .line 71
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "libxloader.so"

    const/4 v8, 0x3

    const-string v9, "libxloader.so"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_x86"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .end local v0    # "_cert0_enc":Ljava/lang/String;
    .end local v1    # "_enc_mf":Ljava/lang/String;
    .end local v2    # "_mpaas_support":Ljava/lang/String;
    .end local v3    # "_res_data":Ljava/lang/String;
    .end local v4    # "_uc_enc":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 52
    .restart local v0    # "_cert0_enc":Ljava/lang/String;
    .restart local v1    # "_enc_mf":Ljava/lang/String;
    .restart local v2    # "_mpaas_support":Ljava/lang/String;
    .restart local v3    # "_res_data":Ljava/lang/String;
    .restart local v4    # "_uc_enc":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 72
    :catchall_0
    move-exception v5

    .line 73
    .local v5, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v6, "libxloader.so"

    const/4 v7, 0x3

    const-string v8, "libxloader.so"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 79
    .end local v0    # "_cert0_enc":Ljava/lang/String;
    .end local v1    # "_enc_mf":Ljava/lang/String;
    .end local v2    # "_mpaas_support":Ljava/lang/String;
    .end local v3    # "_res_data":Ljava/lang/String;
    .end local v4    # "_uc_enc":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v5

    .line 80
    .local v5, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/Proxy/Defines;->SHOWSTACK:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 81
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 76
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "_cert0_enc":Ljava/lang/String;
    .restart local v1    # "_enc_mf":Ljava/lang/String;
    .restart local v2    # "_mpaas_support":Ljava/lang/String;
    .restart local v3    # "_res_data":Ljava/lang/String;
    .restart local v4    # "_uc_enc":Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v6, "libxloader.so"

    const/4 v7, 0x3

    const-string v8, "libxloader.so"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public static isUpdate(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 247
    invoke-static {p0}, Lcom/Proxy/ACache;->get(Landroid/content/Context;)Lcom/Proxy/ACache;

    move-result-object v5

    .line 248
    .local v5, "mCache":Lcom/Proxy/ACache;
    const/4 v4, 0x0

    .line 249
    .local v4, "isUpdate":Z
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 250
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 251
    .local v0, "apkPath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/Install/ZipUtils;->getZipCrc(Ljava/io/File;)J

    move-result-wide v2

    .line 252
    .local v2, "crc":J
    const-string v7, "crc"

    invoke-virtual {v5, v7}, Lcom/Proxy/ACache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, "old_crc":Ljava/lang/String;
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 254
    const/4 v4, 0x1

    .line 256
    :cond_0
    return v4
.end method

.method public static mkdir(Ljava/lang/String;)V
    .locals 2
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 91
    :cond_0
    return-void
.end method

.method public static update(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 260
    invoke-static {p0}, Lcom/Proxy/ACache;->get(Landroid/content/Context;)Lcom/Proxy/ACache;

    move-result-object v4

    .line 261
    .local v4, "mCache":Lcom/Proxy/ACache;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 262
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 263
    .local v0, "apkPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/Install/ZipUtils;->getZipCrc(Ljava/io/File;)J

    move-result-wide v2

    .line 264
    .local v2, "crc":J
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "crc"

    invoke-virtual {v4, v6, v5}, Lcom/Proxy/ACache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method
