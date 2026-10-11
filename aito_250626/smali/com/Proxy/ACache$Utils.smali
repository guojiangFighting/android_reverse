.class public Lcom/Proxy/ACache$Utils;
.super Ljava/lang/Object;
.source "ACache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Proxy/ACache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Utils"
.end annotation


# direct methods
.method public static synthetic access$600(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 746
    invoke-static {p0}, Lcom/Proxy/ACache$Utils;->isDue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic access$700(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 746
    invoke-static {p0}, Lcom/Proxy/ACache$Utils;->clearDateInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static clearDateInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "strInfo"    # Ljava/lang/String;

    .prologue
    .line 793
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/Proxy/ACache$Utils;->hasDateInfo([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 796
    :cond_0
    return-object p0
.end method

.method public static copyOfRange([BII)[B
    .locals 5
    .param p0, "original"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 829
    sub-int v1, p2, p1

    .line 830
    .local v1, "newLength":I
    if-ltz v1, :cond_0

    .line 832
    new-array v0, v1, [B

    .line 833
    .local v0, "copy":[B
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 834
    return-object v0

    .line 831
    .end local v0    # "copy":[B
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getDateInfoFromDate([B)[Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 811
    invoke-static {p0}, Lcom/Proxy/ACache$Utils;->hasDateInfo([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 812
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0xd

    invoke-static {p0, v4, v2}, Lcom/Proxy/ACache$Utils;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 813
    .local v1, "saveDate":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    const/16 v2, 0x20

    invoke-static {p0, v2}, Lcom/Proxy/ACache$Utils;->indexOf([BC)I

    move-result v2

    const/16 v3, 0xe

    invoke-static {p0, v3, v2}, Lcom/Proxy/ACache$Utils;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 814
    .local v0, "deleteAfter":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 816
    .end local v0    # "deleteAfter":Ljava/lang/String;
    .end local v1    # "saveDate":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hasDateInfo([B)Z
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 807
    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    const/16 v0, 0xd

    aget-byte v0, p0, v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/Proxy/ACache$Utils;->indexOf([BC)I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static indexOf([BC)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "c"    # C

    .prologue
    .line 820
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 821
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 825
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 820
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 825
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static isDue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 755
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/Proxy/ACache$Utils;->isDue([B)Z

    move-result v0

    return v0
.end method

.method public static isDue([B)Z
    .locals 12
    .param p0, "data"    # [B

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 765
    invoke-static {p0}, Lcom/Proxy/ACache$Utils;->getDateInfoFromDate([B)[Ljava/lang/String;

    move-result-object v5

    .line 766
    .local v5, "strs":[Ljava/lang/String;
    if-eqz v5, :cond_1

    array-length v8, v5

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 767
    aget-object v4, v5, v7

    .line 768
    .local v4, "saveTimeStr":Ljava/lang/String;
    :goto_0
    const-string v8, "0"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 769
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 771
    :cond_0
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 772
    .local v2, "saveTime":J
    aget-object v8, v5, v6

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 773
    .local v0, "deleteAfter":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v0

    add-long/2addr v10, v2

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 777
    .end local v0    # "deleteAfter":J
    .end local v2    # "saveTime":J
    .end local v4    # "saveTimeStr":Ljava/lang/String;
    :goto_1
    return v6

    :cond_1
    move v6, v7

    goto :goto_1
.end method
