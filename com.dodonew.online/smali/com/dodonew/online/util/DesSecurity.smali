.class public Lcom/dodonew/online/util/DesSecurity;
.super Ljava/lang/Object;
.source "DesSecurity.java"


# instance fields
.field deCipher:Ljavax/crypto/Cipher;

.field enCipher:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "iv"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-nez p1, :cond_0

    .line 22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dodonew/online/util/DesSecurity;->InitCipher([B[B)V

    .line 24
    return-void
.end method

.method private InitCipher([B[B)V
    .locals 8
    .param p1, "secKey"    # [B
    .param p2, "secIv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 29
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {v4, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 31
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 33
    .local v0, "dsk":Ljavax/crypto/spec/DESKeySpec;
    const-string v6, "DES"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 34
    .local v3, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v3, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 36
    .local v2, "key":Ljavax/crypto/SecretKey;
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 37
    .local v1, "iv":Ljavax/crypto/spec/IvParameterSpec;
    move-object v5, v1

    .line 39
    .local v5, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    const-string v6, "DES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    iput-object v6, p0, Lcom/dodonew/online/util/DesSecurity;->enCipher:Ljavax/crypto/Cipher;

    .line 40
    const-string v6, "DES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    iput-object v6, p0, Lcom/dodonew/online/util/DesSecurity;->deCipher:Ljavax/crypto/Cipher;

    .line 42
    iget-object v6, p0, Lcom/dodonew/online/util/DesSecurity;->enCipher:Ljavax/crypto/Cipher;

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v2, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 43
    iget-object v6, p0, Lcom/dodonew/online/util/DesSecurity;->deCipher:Ljavax/crypto/Cipher;

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v2, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 44
    return-void
.end method


# virtual methods
.method public decrypt64(Ljava/lang/String;)[B
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dodonew/online/util/DesSecurity;->deCipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt64([B)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dodonew/online/util/DesSecurity;->enCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
