.class public Lcom/hk/app/android/lib/encrypt/MD5Security;
.super Ljava/lang/Object;
.source "MD5Security.java"


# static fields
.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hk/app/android/lib/encrypt/MD5Security;->hexDigits:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 16
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 18
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 19
    :cond_0
    aget-byte v2, p0, v0

    .line 20
    .local v2, "t":I
    if-gez v2, :cond_1

    .line 21
    add-int/lit16 v2, v2, 0x100

    .line 22
    :cond_1
    sget-object v3, Lcom/hk/app/android/lib/encrypt/MD5Security;->hexDigits:[C

    ushr-int/lit8 v4, v2, 0x4

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 23
    sget-object v3, Lcom/hk/app/android/lib/encrypt/MD5Security;->hexDigits:[C

    rem-int/lit8 v4, v2, 0x10

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getMd5_16(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "bit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    :try_start_0
    const-string v2, "MD5.algorithm"

    const-string v3, "MD5"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 47
    .local v1, "md":Ljava/security/MessageDigest;
    const/16 v2, 0x10

    if-ne p1, v2, :cond_0

    .line 48
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/hk/app/android/lib/encrypt/MD5Security;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    const/16 v4, 0x18

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 49
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/hk/app/android/lib/encrypt/MD5Security;->bytesToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 51
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 53
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Could not found MD5 algorithm."

    invoke-direct {v2, v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getMd5_32(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "plainText"    # Ljava/lang/String;

    .prologue
    .line 72
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 74
    .local v6, "re_md5":Ljava/lang/String;
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 75
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 76
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 78
    .local v0, "b":[B
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v1, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "offset":I
    :goto_0
    array-length v7, v0

    if-lt v5, v7, :cond_0

    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 92
    .end local v0    # "b":[B
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v5    # "offset":I
    :goto_1
    return-object v6

    .line 80
    .restart local v0    # "b":[B
    .restart local v1    # "buf":Ljava/lang/StringBuffer;
    .restart local v4    # "md":Ljava/security/MessageDigest;
    .restart local v5    # "offset":I
    :cond_0
    aget-byte v3, v0, v5

    .line 81
    .local v3, "i":I
    if-gez v3, :cond_1

    .line 82
    add-int/lit16 v3, v3, 0x100

    .line 83
    :cond_1
    const/16 v7, 0x10

    if-ge v3, v7, :cond_2

    .line 84
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "b":[B
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v5    # "offset":I
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getMd5_32_UP(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "plainText"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {p0}, Lcom/hk/app/android/lib/encrypt/MD5Security;->getMd5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "res":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
