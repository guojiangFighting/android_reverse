.class public Lcom/Install/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/Install/ZipUtils$CentralDirectory;
    }
.end annotation


# direct methods
.method public static computeCrcOfCentralDir(Ljava/io/RandomAccessFile;Lcom/Install/ZipUtils$CentralDirectory;)J
    .locals 12
    .param p0, "raf"    # Ljava/io/RandomAccessFile;
    .param p1, "dir"    # Lcom/Install/ZipUtils$CentralDirectory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x4000

    const/4 v8, 0x0

    .line 69
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 70
    .local v1, "crc":Ljava/util/zip/CRC32;
    iget-wide v4, p1, Lcom/Install/ZipUtils$CentralDirectory;->size:J

    .line 71
    .local v4, "stillToRead":J
    iget-wide v6, p1, Lcom/Install/ZipUtils$CentralDirectory;->offset:J

    invoke-virtual {p0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 72
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v2, v6

    .line 73
    .local v2, "length":I
    const/16 v3, 0x4000

    new-array v0, v3, [B

    .line 74
    .local v0, "buffer":[B
    invoke-virtual {p0, v0, v8, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .line 75
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 76
    invoke-virtual {v1, v0, v8, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 77
    int-to-long v6, v2

    sub-long/2addr v4, v6

    .line 78
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 84
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    return-wide v6

    .line 81
    :cond_1
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v2, v6

    .line 82
    invoke-virtual {p0, v0, v8, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    goto :goto_0
.end method

.method public static findCentralDirectory(Ljava/io/RandomAccessFile;)Lcom/Install/ZipUtils$CentralDirectory;
    .locals 10
    .param p0, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x16

    sub-long v2, v6, v8

    .line 30
    .local v2, "scanOffset":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-ltz v6, :cond_3

    .line 34
    const-wide/32 v6, 0x10000

    sub-long v4, v2, v6

    .line 35
    .local v4, "stopOffset":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    .line 36
    const-wide/16 v4, 0x0

    .line 39
    :cond_0
    const v6, 0x6054b50

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    .line 41
    .local v1, "endSig":I
    :cond_1
    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 42
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    if-ne v6, v1, :cond_2

    .line 43
    nop

    .line 56
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 57
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 58
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 59
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 60
    new-instance v0, Lcom/Install/ZipUtils$CentralDirectory;

    invoke-direct {v0}, Lcom/Install/ZipUtils$CentralDirectory;-><init>()V

    .line 61
    .local v0, "dir":Lcom/Install/ZipUtils$CentralDirectory;
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    iput-wide v6, v0, Lcom/Install/ZipUtils$CentralDirectory;->size:J

    .line 62
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    iput-wide v6, v0, Lcom/Install/ZipUtils$CentralDirectory;->offset:J

    .line 63
    return-object v0

    .line 46
    .end local v0    # "dir":Lcom/Install/ZipUtils$CentralDirectory;
    :cond_2
    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    .line 47
    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 48
    new-instance v6, Ljava/util/zip/ZipException;

    const-string v7, "End Of Central Directory signature not found"

    invoke-direct {v6, v7}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 31
    .end local v1    # "endSig":I
    .end local v4    # "stopOffset":J
    :cond_3
    new-instance v6, Ljava/util/zip/ZipException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File too short to be a zip file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static getZipCrc(Ljava/io/File;)J
    .locals 4
    .param p0, "apk"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-static {v1}, Lcom/Install/ZipUtils;->findCentralDirectory(Ljava/io/RandomAccessFile;)Lcom/Install/ZipUtils$CentralDirectory;

    move-result-object v0

    .line 19
    .local v0, "dir":Lcom/Install/ZipUtils$CentralDirectory;
    invoke-static {v1, v0}, Lcom/Install/ZipUtils;->computeCrcOfCentralDir(Ljava/io/RandomAccessFile;Lcom/Install/ZipUtils$CentralDirectory;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 22
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 19
    return-wide v2

    .line 22
    .end local v0    # "dir":Lcom/Install/ZipUtils$CentralDirectory;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 23
    throw v2
.end method
