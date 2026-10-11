.class public Lcom/amap/api/mapcore/util/ba;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/ba$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field private b:Lcom/amap/api/mapcore/util/de;

.field private c:Lcom/amap/api/mapcore/util/bg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/api/mapcore/util/bg",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/amap/api/mapcore/util/ba$a;

.field private final e:Ljava/lang/Object;

.field private f:Z

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/amap/api/mapcore/util/ba;->a:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method private constructor <init>(Lcom/amap/api/mapcore/util/ba$a;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ba;->e:Ljava/lang/Object;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ba;->f:Z

    .line 86
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/ba;->b(Lcom/amap/api/mapcore/util/ba$a;)V

    .line 87
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)I
    .locals 2

    .prologue
    .line 664
    .line 666
    invoke-static {}, Lcom/amap/api/mapcore/util/bk;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 670
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)J
    .locals 4

    .prologue
    .line 713
    invoke-static {}, Lcom/amap/api/mapcore/util/bk;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    .line 717
    :goto_0
    return-wide v0

    .line 716
    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 717
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public static a(Lcom/amap/api/mapcore/util/ba$a;)Lcom/amap/api/mapcore/util/ba;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/amap/api/mapcore/util/ba;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/ba;-><init>(Lcom/amap/api/mapcore/util/ba$a;)V

    .line 113
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    .prologue
    .line 694
    invoke-static {}, Lcom/amap/api/mapcore/util/bk;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 701
    :goto_0
    return-object v0

    .line 699
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 701
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 616
    invoke-static {p0}, Lcom/amap/api/mapcore/util/ba;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 617
    const-string v1, "mounted"

    .line 618
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 617
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 618
    invoke-static {}, Lcom/amap/api/mapcore/util/ba;->e()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    .line 619
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 621
    :goto_0
    const-string v1, "ImageCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disk cachePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x6f

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 623
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 620
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 647
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 648
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 649
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 650
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 652
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 654
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/ba;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method private b(Lcom/amap/api/mapcore/util/ba$a;)V
    .locals 3

    .prologue
    .line 123
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ba;->d:Lcom/amap/api/mapcore/util/ba$a;

    .line 126
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->d:Lcom/amap/api/mapcore/util/ba$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/util/ba$a;->f:Z

    if-eqz v0, :cond_1

    .line 127
    const-string v0, "ImageCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Memory cache created (size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ba;->d:Lcom/amap/api/mapcore/util/ba$a;

    iget v2, v2, Lcom/amap/api/mapcore/util/ba$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    invoke-static {}, Lcom/amap/api/mapcore/util/bk;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ba;->g:Ljava/util/HashMap;

    .line 136
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore/util/ba$1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ba;->d:Lcom/amap/api/mapcore/util/ba$a;

    iget v1, v1, Lcom/amap/api/mapcore/util/ba$a;->a:I

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/ba$1;-><init>(Lcom/amap/api/mapcore/util/ba;I)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ba;->c:Lcom/amap/api/mapcore/util/bg;

    .line 180
    :cond_1
    iget-boolean v0, p1, Lcom/amap/api/mapcore/util/ba$a;->h:Z

    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ba;->a()V

    .line 184
    :cond_2
    return-void
.end method

.method private b(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 226
    if-nez v1, :cond_0

    .line 227
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a readable directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 230
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 231
    invoke-direct {p0, v3}, Lcom/amap/api/mapcore/util/ba;->b(Ljava/io/File;)V

    .line 233
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 234
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_3
    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 633
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 634
    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 635
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ba;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 641
    :goto_0
    return-object v0

    .line 636
    :catch_0
    move-exception v0

    .line 637
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 638
    :catch_1
    move-exception v0

    .line 639
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 680
    invoke-static {}, Lcom/amap/api/mapcore/util/bk;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    .line 683
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic f()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/amap/api/mapcore/util/ba;->a:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 308
    .line 310
    invoke-static {}, Lcom/amap/api/mapcore/util/bk;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    .line 311
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 312
    if-eqz v0, :cond_5

    .line 313
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 314
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 317
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ba;->g:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :goto_0
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ba;->c:Lcom/amap/api/mapcore/util/bg;

    if-eqz v2, :cond_2

    .line 322
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->c:Lcom/amap/api/mapcore/util/bg;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/bg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 325
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 331
    :cond_3
    :goto_1
    return-object v1

    .line 329
    :cond_4
    const-string v1, "ImageCache"

    const-string v2, "Memory cache hit"

    const/16 v3, 0x6f

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v0

    .line 331
    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public a()V
    .locals 6

    .prologue
    .line 194
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ba;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->b:Lcom/amap/api/mapcore/util/de;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->b:Lcom/amap/api/mapcore/util/de;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/de;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->d:Lcom/amap/api/mapcore/util/ba$a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/ba$a;->c:Ljava/io/File;

    .line 197
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ba;->d:Lcom/amap/api/mapcore/util/ba$a;

    iget-boolean v2, v2, Lcom/amap/api/mapcore/util/ba$a;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 199
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ba;->b(Ljava/io/File;)V

    .line 202
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/amap/api/mapcore/util/ba;->a(Ljava/io/File;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ba;->d:Lcom/amap/api/mapcore/util/ba$a;

    iget v4, v4, Lcom/amap/api/mapcore/util/ba$a;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 207
    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_3
    iget-object v4, p0, Lcom/amap/api/mapcore/util/ba;->d:Lcom/amap/api/mapcore/util/ba$a;

    iget v4, v4, Lcom/amap/api/mapcore/util/ba$a;->b:I

    int-to-long v4, v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/amap/api/mapcore/util/de;->a(Ljava/io/File;IIJ)Lcom/amap/api/mapcore/util/de;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ba;->b:Lcom/amap/api/mapcore/util/de;

    .line 209
    const-string v0, "ImageCache"

    const-string v2, "Disk cache initialized"

    const/16 v3, 0x6f

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    :cond_2
    :goto_1
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ba;->f:Z

    .line 220
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 221
    monitor-exit v1

    .line 222
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ba;->d:Lcom/amap/api/mapcore/util/ba$a;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/amap/api/mapcore/util/ba$a;->c:Ljava/io/File;

    .line 213
    const-string v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initDiskCache - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x70

    invoke-static {v2, v0, v3}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 203
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7

    .prologue
    .line 248
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->c:Lcom/amap/api/mapcore/util/bg;

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->c:Lcom/amap/api/mapcore/util/bg;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore/util/bg;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_2
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ba;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->b:Lcom/amap/api/mapcore/util/de;

    if-eqz v0, :cond_4

    .line 265
    invoke-static {p1}, Lcom/amap/api/mapcore/util/ba;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 266
    const/4 v0, 0x0

    .line 268
    :try_start_1
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ba;->b:Lcom/amap/api/mapcore/util/de;

    invoke-virtual {v3, v1}, Lcom/amap/api/mapcore/util/de;->a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/de$b;

    move-result-object v3

    .line 269
    if-nez v3, :cond_5

    .line 270
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ba;->b:Lcom/amap/api/mapcore/util/de;

    .line 271
    invoke-virtual {v3, v1}, Lcom/amap/api/mapcore/util/de;->b(Ljava/lang/String;)Lcom/amap/api/mapcore/util/de$a;

    move-result-object v1

    .line 272
    if-eqz v1, :cond_3

    .line 273
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/amap/api/mapcore/util/de$a;->a(I)Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 274
    :try_start_2
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ba;->d:Lcom/amap/api/mapcore/util/ba$a;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/ba$a;->d:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ba;->d:Lcom/amap/api/mapcore/util/ba$a;

    iget v4, v4, Lcom/amap/api/mapcore/util/ba$a;->e:I

    invoke-virtual {p2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 276
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/de$a;->a()V

    .line 277
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 290
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 291
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 297
    :cond_4
    :goto_2
    :try_start_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 280
    :cond_5
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v3, v1}, Lcom/amap/api/mapcore/util/de$b;->a(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 282
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 283
    :goto_3
    :try_start_6
    const-string v3, "ImageCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addBitmapToCache - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x70

    invoke-static {v3, v0, v4}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 290
    if-eqz v1, :cond_4

    .line 291
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 293
    :catch_1
    move-exception v0

    goto :goto_2

    .line 285
    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 286
    :goto_4
    :try_start_8
    const-string v3, "ImageCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addBitmapToCache - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x70

    invoke-static {v3, v0, v4}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 290
    if-eqz v1, :cond_4

    .line 291
    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 293
    :catch_3
    move-exception v0

    goto :goto_2

    .line 289
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 290
    :goto_5
    if-eqz v1, :cond_6

    .line 291
    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 294
    :cond_6
    :goto_6
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 293
    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_6

    .line 289
    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_5

    .line 285
    :catch_6
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    .line 282
    :catch_7
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3
.end method

.method public b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 342
    invoke-static {p1}, Lcom/amap/api/mapcore/util/ba;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    iget-object v4, p0, Lcom/amap/api/mapcore/util/ba;->e:Ljava/lang/Object;

    monitor-enter v4

    .line 346
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/ba;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 348
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ba;->e:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 349
    :catch_0
    move-exception v2

    goto :goto_0

    .line 352
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ba;->b:Lcom/amap/api/mapcore/util/de;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    .line 355
    :try_start_3
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ba;->b:Lcom/amap/api/mapcore/util/de;

    .line 356
    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore/util/de;->a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/de$b;

    move-result-object v1

    .line 357
    if-eqz v1, :cond_4

    .line 358
    const-string v2, "ImageCache"

    const-string v5, "Disk cache hit"

    const/16 v6, 0x6f

    invoke-static {v2, v5, v6}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 360
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/de$b;->a(I)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 361
    if-eqz v2, :cond_1

    .line 362
    :try_start_4
    move-object v0, v2

    check-cast v0, Ljava/io/FileInputStream;

    move-object v1, v0

    .line 363
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 368
    const v5, 0x7fffffff

    const v6, 0x7fffffff

    .line 369
    invoke-static {v1, v5, v6, p0}, Lcom/amap/api/mapcore/util/bc;->a(Ljava/io/FileDescriptor;IILcom/amap/api/mapcore/util/ba;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v3

    .line 379
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 380
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 386
    :cond_2
    :goto_2
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-object v3

    .line 374
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 375
    :goto_3
    :try_start_7
    const-string v5, "ImageCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBitmapFromDiskCache - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x70

    invoke-static {v5, v1, v6}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 379
    if-eqz v2, :cond_2

    .line 380
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 382
    :catch_2
    move-exception v1

    goto :goto_2

    .line 378
    :catchall_0
    move-exception v1

    move-object v2, v3

    .line 379
    :goto_4
    if-eqz v2, :cond_3

    .line 380
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 383
    :cond_3
    :goto_5
    :try_start_a
    throw v1

    .line 387
    :catchall_1
    move-exception v1

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v1

    .line 382
    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_5

    .line 378
    :catchall_2
    move-exception v1

    goto :goto_4

    .line 374
    :catch_5
    move-exception v1

    goto :goto_3

    :cond_4
    move-object v2, v3

    goto :goto_1
.end method

.method public b()V
    .locals 5

    .prologue
    const/16 v2, 0x6f

    .line 432
    invoke-static {}, Lcom/amap/api/mapcore/util/bk;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->c:Lcom/amap/api/mapcore/util/bg;

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->c:Lcom/amap/api/mapcore/util/bg;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bg;->a()V

    .line 438
    const-string v0, "ImageCache"

    const-string v1, "Memory cache cleared"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ba;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 442
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ba;->f:Z

    .line 443
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->b:Lcom/amap/api/mapcore/util/de;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->b:Lcom/amap/api/mapcore/util/de;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/de;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 445
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->b:Lcom/amap/api/mapcore/util/de;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/de;->c()V

    .line 446
    const-string v0, "ImageCache"

    const-string v2, "Disk cache cleared"

    const/16 v3, 0x6f

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/amap/api/mapcore/util/ba;->b:Lcom/amap/api/mapcore/util/de;

    .line 453
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ba;->a()V

    .line 455
    :cond_2
    monitor-exit v1

    .line 456
    return-void

    .line 448
    :catch_0
    move-exception v0

    .line 449
    const-string v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearCache - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x70

    invoke-static {v2, v0, v3}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 5

    .prologue
    .line 464
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ba;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->b:Lcom/amap/api/mapcore/util/de;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 467
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->b:Lcom/amap/api/mapcore/util/de;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/de;->b()V

    .line 468
    const-string v0, "ImageCache"

    const-string v2, "Disk cache flushed"

    const/16 v3, 0x6f

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 475
    return-void

    .line 470
    :catch_0
    move-exception v0

    .line 471
    const-string v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flush - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x70

    invoke-static {v2, v0, v3}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 5

    .prologue
    const/16 v2, 0x6f

    .line 483
    invoke-static {}, Lcom/amap/api/mapcore/util/bk;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->c:Lcom/amap/api/mapcore/util/bg;

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->c:Lcom/amap/api/mapcore/util/bg;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bg;->a()V

    .line 489
    const-string v0, "ImageCache"

    const-string v1, "Memory cache cleared"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 492
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ba;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->b:Lcom/amap/api/mapcore/util/de;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 495
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->b:Lcom/amap/api/mapcore/util/de;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/de;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 497
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->b:Lcom/amap/api/mapcore/util/de;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/de;->c()V

    .line 498
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ba;->b:Lcom/amap/api/mapcore/util/de;

    .line 499
    const-string v0, "ImageCache"

    const-string v2, "Disk cache closed"

    const/16 v3, 0x6f

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 507
    return-void

    .line 502
    :catch_0
    move-exception v0

    .line 503
    const-string v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x70

    invoke-static {v2, v0, v3}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
