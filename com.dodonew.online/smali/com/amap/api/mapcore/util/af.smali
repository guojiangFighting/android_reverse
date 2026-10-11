.class public Lcom/amap/api/mapcore/util/af;
.super Ljava/lang/Object;
.source "UnZipFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/af$a;,
        Lcom/amap/api/mapcore/util/af$c;,
        Lcom/amap/api/mapcore/util/af$b;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/mapcore/util/af$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/mapcore/util/ac;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/amap/api/mapcore/util/af$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amap/api/mapcore/util/af$b;-><init>(Lcom/amap/api/mapcore/util/af;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/mapcore/util/ac;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/mapcore/util/af$b;

    .line 21
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/util/zip/ZipInputStream;JJLcom/amap/api/mapcore/util/af$c;Lcom/amap/api/mapcore/util/af$a;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 276
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 280
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 282
    :cond_0
    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {p1, v2, v3, v4}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 283
    if-eqz p7, :cond_1

    iget-boolean v4, p7, Lcom/amap/api/mapcore/util/af$a;->a:Z

    if-eqz v4, :cond_1

    .line 284
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 298
    :goto_1
    return v0

    .line 287
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 288
    add-int/2addr v0, v3

    .line 289
    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-lez v3, :cond_0

    if-eqz p6, :cond_0

    .line 290
    int-to-long v4, v0

    add-long/2addr v4, p2

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    div-long/2addr v4, p4

    .line 292
    if-eqz p7, :cond_2

    iget-boolean v3, p7, Lcom/amap/api/mapcore/util/af$a;->a:Z

    if-nez v3, :cond_0

    .line 293
    :cond_2
    invoke-interface {p6, v4, v5}, Lcom/amap/api/mapcore/util/af$c;->a(J)V

    goto :goto_0

    .line 297
    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_1
.end method

.method private static a(Lcom/amap/api/mapcore/util/af$b;)V
    .locals 5

    .prologue
    .line 43
    if-nez p0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/af$b;->d()Lcom/amap/api/mapcore/util/ac;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ac;->o()V

    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/af$b;->a()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/af$b;->b()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 57
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 58
    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/af$b;->e()Lcom/amap/api/mapcore/util/af$a;

    move-result-object v1

    iget-boolean v1, v1, Lcom/amap/api/mapcore/util/af$a;->a:Z

    if-eqz v1, :cond_4

    .line 59
    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ac;->q()V

    goto :goto_0

    .line 62
    :cond_4
    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ac;->p()V

    goto :goto_0

    .line 68
    :cond_5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_7

    .line 71
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/af$b;->e()Lcom/amap/api/mapcore/util/af$a;

    move-result-object v1

    iget-boolean v1, v1, Lcom/amap/api/mapcore/util/af$a;->a:Z

    if-eqz v1, :cond_6

    .line 72
    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ac;->q()V

    goto :goto_0

    .line 75
    :cond_6
    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ac;->p()V

    goto :goto_0

    .line 81
    :cond_7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    .line 83
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_8

    .line 88
    :cond_8
    new-instance v2, Lcom/amap/api/mapcore/util/af$1;

    invoke-direct {v2, v0}, Lcom/amap/api/mapcore/util/af$1;-><init>(Lcom/amap/api/mapcore/util/ac;)V

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/af$b;->e()Lcom/amap/api/mapcore/util/af$a;

    move-result-object v4

    iget-boolean v4, v4, Lcom/amap/api/mapcore/util/af$a;->a:Z

    if-eqz v4, :cond_9

    .line 107
    if-eqz v0, :cond_9

    .line 108
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ac;->q()V

    .line 109
    :cond_9
    invoke-static {v3, v1, v2, p0}, Lcom/amap/api/mapcore/util/af;->a(Ljava/io/File;Ljava/io/File;Lcom/amap/api/mapcore/util/af$c;Lcom/amap/api/mapcore/util/af$b;)V

    .line 110
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/af$b;->e()Lcom/amap/api/mapcore/util/af$a;

    move-result-object v1

    iget-boolean v1, v1, Lcom/amap/api/mapcore/util/af$a;->a:Z

    if-eqz v1, :cond_a

    .line 111
    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ac;->q()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/af$b;->e()Lcom/amap/api/mapcore/util/af$a;

    move-result-object v1

    iget-boolean v1, v1, Lcom/amap/api/mapcore/util/af$a;->a:Z

    if-eqz v1, :cond_b

    .line 120
    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ac;->q()V

    goto/16 :goto_0

    .line 114
    :cond_a
    if-eqz v0, :cond_0

    .line 115
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/af$b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/ac;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 123
    :cond_b
    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ac;->p()V

    goto/16 :goto_0
.end method

.method private static a(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 312
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    invoke-static {v0}, Lcom/amap/api/mapcore/util/af;->a(Ljava/io/File;)V

    .line 317
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    :cond_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Lcom/amap/api/mapcore/util/af$c;Lcom/amap/api/mapcore/util/af$b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 146
    invoke-virtual {p3}, Lcom/amap/api/mapcore/util/af$b;->e()Lcom/amap/api/mapcore/util/af$a;

    move-result-object v5

    .line 148
    const-wide/16 v2, 0x0

    .line 149
    if-eqz p2, :cond_1

    .line 152
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 153
    new-instance v4, Ljava/util/zip/CheckedInputStream;

    new-instance v6, Ljava/util/zip/CRC32;

    invoke-direct {v6}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v4, v1, v6}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 156
    new-instance v6, Ljava/util/zip/ZipInputStream;

    invoke-direct {v6, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 160
    :goto_0
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 161
    if-eqz v5, :cond_2

    iget-boolean v8, v5, Lcom/amap/api/mapcore/util/af$a;->a:Z

    if-eqz v8, :cond_2

    .line 162
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 163
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V

    .line 164
    invoke-virtual {v4}, Ljava/util/zip/CheckedInputStream;->close()V

    .line 165
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 180
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/amap/api/mapcore/util/af$b;->a(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V

    .line 182
    invoke-virtual {v4}, Ljava/util/zip/CheckedInputStream;->close()V

    .line 183
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_1
    :goto_2
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 191
    new-instance v7, Ljava/util/zip/CheckedInputStream;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v7, v6, v0}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 192
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, p1

    move-object v4, p2

    .line 193
    invoke-static/range {v0 .. v5}, Lcom/amap/api/mapcore/util/af;->a(Ljava/io/File;Ljava/util/zip/ZipInputStream;JLcom/amap/api/mapcore/util/af$c;Lcom/amap/api/mapcore/util/af$a;)V

    .line 194
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 195
    invoke-virtual {v7}, Ljava/util/zip/CheckedInputStream;->close()V

    .line 196
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 197
    return-void

    .line 168
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_4

    .line 169
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 170
    invoke-static {v8}, Lcom/amap/api/mapcore/util/af;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 171
    invoke-interface {p2}, Lcom/amap/api/mapcore/util/af$c;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 174
    :cond_3
    :try_start_2
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :cond_4
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    .line 177
    add-long/2addr v2, v8

    .line 178
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private static a(Ljava/io/File;Ljava/util/zip/ZipInputStream;JLcom/amap/api/mapcore/util/af$c;Lcom/amap/api/mapcore/util/af$a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 211
    .line 212
    const/4 v8, 0x0

    .line 215
    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 216
    if-eqz p5, :cond_1

    iget-boolean v0, p5, Lcom/amap/api/mapcore/util/af$a;->a:Z

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 247
    :cond_0
    :goto_1
    return-void

    .line 221
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-static {v2}, Lcom/amap/api/mapcore/util/af;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 224
    if-eqz p4, :cond_2

    .line 225
    invoke-interface {p4}, Lcom/amap/api/mapcore/util/af$c;->a()V

    .line 227
    :cond_2
    const-string v0, "ZipEntry.getName contains ../ !"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 230
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-static {v0}, Lcom/amap/api/mapcore/util/af;->a(Ljava/io/File;)V

    .line 235
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 236
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v8

    .line 245
    :goto_2
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    move v8, v0

    .line 246
    goto :goto_0

    .line 240
    :cond_4
    int-to-long v2, v8

    move-object v1, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/amap/api/mapcore/util/af;->a(Ljava/io/File;Ljava/util/zip/ZipInputStream;JJLcom/amap/api/mapcore/util/af$c;Lcom/amap/api/mapcore/util/af$a;)I

    move-result v0

    .line 242
    add-int/2addr v0, v8

    goto :goto_2

    :cond_5
    move v0, v8

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 254
    const-string v0, "../"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 257
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/mapcore/util/af$b;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/mapcore/util/af$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/af$b;->f()V

    .line 32
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/mapcore/util/af$b;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/mapcore/util/af$b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/af;->a(Lcom/amap/api/mapcore/util/af$b;)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    const-string v0, "UnzipFile unzipFileTaskItem is null!"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
