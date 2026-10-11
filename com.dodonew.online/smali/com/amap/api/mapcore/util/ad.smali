.class public Lcom/amap/api/mapcore/util/ad;
.super Ljava/lang/Object;
.source "NetFileFetch.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/dl$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/ad$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore/util/ae;

.field b:J

.field c:J

.field d:J

.field e:Z

.field f:Lcom/amap/api/mapcore/util/z;

.field g:J

.field h:Lcom/amap/api/mapcore/util/ad$a;

.field private i:Landroid/content/Context;

.field private j:Lcom/amap/api/mapcore/util/ah;

.field private k:Ljava/lang/String;

.field private l:Lcom/amap/api/mapcore/util/dl;

.field private m:Lcom/amap/api/mapcore/util/aa;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/ae;Ljava/lang/String;Landroid/content/Context;Lcom/amap/api/mapcore/util/ah;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ad;->a:Lcom/amap/api/mapcore/util/ae;

    .line 36
    iput-wide v2, p0, Lcom/amap/api/mapcore/util/ad;->b:J

    .line 37
    iput-wide v2, p0, Lcom/amap/api/mapcore/util/ad;->c:J

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ad;->e:Z

    .line 51
    iput-wide v2, p0, Lcom/amap/api/mapcore/util/ad;->g:J

    .line 57
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/amap/api/mapcore/util/z;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/z;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ad;->f:Lcom/amap/api/mapcore/util/z;

    .line 58
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ad;->a:Lcom/amap/api/mapcore/util/ae;

    .line 60
    iput-object p3, p0, Lcom/amap/api/mapcore/util/ad;->i:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/amap/api/mapcore/util/ad;->k:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/amap/api/mapcore/util/ad;->j:Lcom/amap/api/mapcore/util/ah;

    .line 64
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ad;->g()V

    .line 66
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 286
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method private a(J)V
    .locals 5

    .prologue
    .line 254
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/ad;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->j:Lcom/amap/api/mapcore/util/ah;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->j:Lcom/amap/api/mapcore/util/ah;

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/ad;->d:J

    invoke-interface {v0, v2, v3, p1, p2}, Lcom/amap/api/mapcore/util/ah;->a(JJ)V

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/ad;->g:J

    .line 262
    :cond_0
    return-void
.end method

.method private f()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v2, 0x1b7740

    .line 72
    new-instance v1, Lcom/amap/api/mapcore/util/ai;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->k:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore/util/ai;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/ai;->a(I)V

    .line 74
    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/ai;->b(I)V

    .line 75
    new-instance v0, Lcom/amap/api/mapcore/util/dl;

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/ad;->b:J

    iget-wide v4, p0, Lcom/amap/api/mapcore/util/ad;->c:J

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/dl;-><init>(Lcom/amap/api/mapcore/util/dp;JJ)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ad;->l:Lcom/amap/api/mapcore/util/dl;

    .line 76
    new-instance v0, Lcom/amap/api/mapcore/util/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ad;->a:Lcom/amap/api/mapcore/util/ae;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ae;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ad;->a:Lcom/amap/api/mapcore/util/ae;

    .line 77
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ae;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/ad;->b:J

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/aa;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ad;->m:Lcom/amap/api/mapcore/util/aa;

    .line 78
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 84
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->f:Lcom/amap/api/mapcore/util/z;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ad;->a:Lcom/amap/api/mapcore/util/ae;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ae;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/z;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ad;->e:Z

    .line 86
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ad;->l()Z

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    iput-wide v2, p0, Lcom/amap/api/mapcore/util/ad;->b:J

    .line 89
    iput-wide v2, p0, Lcom/amap/api/mapcore/util/ad;->c:J

    goto :goto_0
.end method

.method private h()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ad;->a:Lcom/amap/api/mapcore/util/ae;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ae;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ad;->a:Lcom/amap/api/mapcore/util/ae;

    .line 160
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ae;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 166
    const-string v2, ".tmp"

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 166
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 168
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private i()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .prologue
    .line 180
    sget v0, Lcom/amap/api/mapcore/util/bn;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 181
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x3

    if-ge v1, v0, :cond_0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->i:Landroid/content/Context;

    .line 184
    invoke-static {}, Lcom/amap/api/mapcore/util/bk;->e()Lcom/amap/api/mapcore/util/bv;

    move-result-object v2

    .line 183
    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/bn;->b(Landroid/content/Context;Lcom/amap/api/mapcore/util/bv;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 185
    if-eqz v0, :cond_1

    .line 196
    :cond_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    const-string v2, "SiteFileFetch"

    const-string v3, "authOffLineDownLoad"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 181
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private j()V
    .locals 6

    .prologue
    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 233
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ad;->a:Lcom/amap/api/mapcore/util/ae;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/ad;->g:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ad;->k()V

    .line 236
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/ad;->g:J

    .line 237
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/ad;->b:J

    invoke-direct {p0, v0, v1}, Lcom/amap/api/mapcore/util/ad;->a(J)V

    .line 240
    :cond_0
    return-void
.end method

.method private k()V
    .locals 10

    .prologue
    .line 246
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ad;->f:Lcom/amap/api/mapcore/util/z;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->a:Lcom/amap/api/mapcore/util/ae;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ae;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->a:Lcom/amap/api/mapcore/util/ae;

    .line 247
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ae;->d()I

    move-result v3

    iget-wide v4, p0, Lcom/amap/api/mapcore/util/ad;->d:J

    iget-wide v6, p0, Lcom/amap/api/mapcore/util/ad;->b:J

    iget-wide v8, p0, Lcom/amap/api/mapcore/util/ad;->c:J

    .line 246
    invoke-virtual/range {v1 .. v9}, Lcom/amap/api/mapcore/util/z;->a(Ljava/lang/String;IJJJ)V

    .line 249
    return-void
.end method

.method private l()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 271
    .line 273
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ad;->f:Lcom/amap/api/mapcore/util/z;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ad;->a:Lcom/amap/api/mapcore/util/ae;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/ae;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/util/z;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ad;->f:Lcom/amap/api/mapcore/util/z;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ad;->a:Lcom/amap/api/mapcore/util/ae;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/ae;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/util/z;->d(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/amap/api/mapcore/util/ad;->d:J

    .line 276
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ad;->f:Lcom/amap/api/mapcore/util/z;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ad;->a:Lcom/amap/api/mapcore/util/ae;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/ae;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/amap/api/mapcore/util/z;->a(Ljava/lang/String;I)[J

    move-result-object v2

    .line 277
    aget-wide v4, v2, v1

    iput-wide v4, p0, Lcom/amap/api/mapcore/util/ad;->b:J

    .line 278
    aget-wide v2, v2, v0

    iput-wide v2, p0, Lcom/amap/api/mapcore/util/ad;->c:J

    .line 282
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private m()V
    .locals 4

    .prologue
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ad;->a:Lcom/amap/api/mapcore/util/ae;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ae;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ad;->a:Lcom/amap/api/mapcore/util/ae;

    .line 334
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ae;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    const/4 v2, 0x0

    const-string v3, ".tmp"

    .line 338
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 337
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 339
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetFileFetch Done, Rename "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->a(Ljava/lang/String;)V

    .line 342
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 95
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start FileFetch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ad;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bk;->c(Landroid/content/Context;)Z

    move-result v0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ad;->i()V

    .line 106
    sget v0, Lcom/amap/api/mapcore/util/bn;->a:I

    if-eq v0, v2, :cond_2

    .line 107
    const-string v0, "start filefetch  auth exception"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->j:Lcom/amap/api/mapcore/util/ah;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->j:Lcom/amap/api/mapcore/util/ah;

    sget-object v1, Lcom/amap/api/mapcore/util/ah$a;->a:Lcom/amap/api/mapcore/util/ah$a;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/ah;->a(Lcom/amap/api/mapcore/util/ah$a;)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v0, "start filefetch  network exception"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->j:Lcom/amap/api/mapcore/util/ah;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->j:Lcom/amap/api/mapcore/util/ah;

    sget-object v1, Lcom/amap/api/mapcore/util/ah$a;->b:Lcom/amap/api/mapcore/util/ah$a;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/ah;->a(Lcom/amap/api/mapcore/util/ah$a;)V
    :try_end_0
    .catch Lcom/amap/api/maps/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    const-string v1, "SiteFileFetch"

    const-string v2, "download"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->j:Lcom/amap/api/mapcore/util/ah;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->j:Lcom/amap/api/mapcore/util/ah;

    sget-object v1, Lcom/amap/api/mapcore/util/ah$a;->a:Lcom/amap/api/mapcore/util/ah$a;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/ah;->a(Lcom/amap/api/mapcore/util/ah$a;)V

    goto :goto_0

    .line 115
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ad;->h()Z

    move-result v0

    if-nez v0, :cond_3

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ad;->e:Z

    .line 120
    :cond_3
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ad;->e:Z

    if-eqz v0, :cond_4

    .line 121
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ad;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/ad;->d:J

    .line 122
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/ad;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 123
    const-string v0, "File Length is not known!"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->a(Ljava/lang/String;)V

    .line 129
    :goto_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/ad;->b:J

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->j:Lcom/amap/api/mapcore/util/ah;

    if-eqz v0, :cond_5

    .line 133
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->j:Lcom/amap/api/mapcore/util/ah;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ah;->l()V

    .line 135
    :cond_5
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ad;->f()V

    .line 136
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->l:Lcom/amap/api/mapcore/util/dl;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/dl;->a(Lcom/amap/api/mapcore/util/dl$a;)V
    :try_end_1
    .catch Lcom/amap/api/maps/AMapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 144
    :catch_1
    move-exception v0

    .line 146
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->j:Lcom/amap/api/mapcore/util/ah;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->j:Lcom/amap/api/mapcore/util/ah;

    sget-object v1, Lcom/amap/api/mapcore/util/ah$a;->c:Lcom/amap/api/mapcore/util/ah$a;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/ah;->a(Lcom/amap/api/mapcore/util/ah$a;)V

    goto :goto_0

    .line 124
    :cond_6
    :try_start_2
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/ad;->d:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    .line 125
    const-string v0, "File is not access!"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 127
    :cond_7
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/ad;->d:J

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/ad;->c:J
    :try_end_2
    .catch Lcom/amap/api/maps/AMapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method public a(Lcom/amap/api/mapcore/util/ad$a;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ad;->h:Lcom/amap/api/mapcore/util/ad$a;

    .line 393
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->j:Lcom/amap/api/mapcore/util/ah;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->j:Lcom/amap/api/mapcore/util/ah;

    sget-object v1, Lcom/amap/api/mapcore/util/ah$a;->b:Lcom/amap/api/mapcore/util/ah$a;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/ah;->a(Lcom/amap/api/mapcore/util/ah$a;)V

    .line 352
    :cond_0
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_2

    .line 353
    const-string v0, "\u8fd9\u91cc\u62a5 io excepiton \u9700\u8981\u5904\u7406\u4e00\u4e0b"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    .line 362
    :cond_1
    :goto_0
    return-void

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->m:Lcom/amap/api/mapcore/util/aa;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->m:Lcom/amap/api/mapcore/util/aa;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/aa;->a()V

    goto :goto_0
.end method

.method public a([BJ)V
    .locals 4

    .prologue
    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->m:Lcom/amap/api/mapcore/util/aa;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/aa;->a([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    iput-wide p2, p0, Lcom/amap/api/mapcore/util/ad;->b:J

    .line 386
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ad;->j()V

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 372
    const-string v1, "fileAccessI"

    const-string v2, "fileAccessI.write(byte[] data)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->j:Lcom/amap/api/mapcore/util/ah;

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->j:Lcom/amap/api/mapcore/util/ah;

    sget-object v1, Lcom/amap/api/mapcore/util/ah$a;->c:Lcom/amap/api/mapcore/util/ah$a;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/ah;->a(Lcom/amap/api/mapcore/util/ah$a;)V

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->l:Lcom/amap/api/mapcore/util/dl;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->l:Lcom/amap/api/mapcore/util/dl;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/dl;->a()V

    goto :goto_0
.end method

.method public b()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v2, -0x1

    .line 201
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ad;->a:Lcom/amap/api/mapcore/util/ae;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ae;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 204
    const-string v1, "User-Agent"

    sget-object v3, Lcom/amap/api/mapcore/r;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 207
    const/16 v3, 0x190

    if-lt v1, v3, :cond_0

    .line 208
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/ad;->a(I)V

    .line 209
    const-wide/16 v0, -0x2

    .line 223
    :goto_0
    return-wide v0

    .line 212
    :cond_0
    const/4 v1, 0x1

    .line 213
    :goto_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    .line 214
    if-eqz v3, :cond_2

    .line 215
    const-string v4, "Content-Length"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 217
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 223
    :goto_2
    int-to-long v0, v0

    goto :goto_0

    .line 212
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method public c()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->l:Lcom/amap/api/mapcore/util/dl;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->l:Lcom/amap/api/mapcore/util/dl;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/dl;->a()V

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    const-string v0, "downlaodmnager is null when site stop"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->j:Lcom/amap/api/mapcore/util/ah;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->j:Lcom/amap/api/mapcore/util/ah;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ah;->n()V

    .line 303
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ad;->k()V

    .line 304
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ad;->j()V

    .line 311
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->j:Lcom/amap/api/mapcore/util/ah;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->j:Lcom/amap/api/mapcore/util/ah;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ah;->m()V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->m:Lcom/amap/api/mapcore/util/aa;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->m:Lcom/amap/api/mapcore/util/aa;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/aa;->a()V

    .line 320
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ad;->m()V

    .line 323
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->h:Lcom/amap/api/mapcore/util/ad$a;

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ad;->h:Lcom/amap/api/mapcore/util/ad$a;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ad$a;->d()V

    .line 326
    :cond_2
    return-void
.end method
