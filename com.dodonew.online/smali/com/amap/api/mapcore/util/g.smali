.class public Lcom/amap/api/mapcore/util/g;
.super Lcom/amap/api/maps/offlinemap/OfflineMapCity;
.source "CityObject.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/ac;
.implements Lcom/amap/api/mapcore/util/ah;
.implements Lcom/amap/api/mapcore/util/p;


# instance fields
.field public a:Lcom/amap/api/mapcore/util/al;

.field public b:Lcom/amap/api/mapcore/util/al;

.field public c:Lcom/amap/api/mapcore/util/al;

.field public d:Lcom/amap/api/mapcore/util/al;

.field public e:Lcom/amap/api/mapcore/util/al;

.field public f:Lcom/amap/api/mapcore/util/al;

.field public g:Lcom/amap/api/mapcore/util/al;

.field public h:Lcom/amap/api/mapcore/util/al;

.field i:Lcom/amap/api/mapcore/util/al;

.field j:Landroid/content/Context;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:J


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;-><init>()V

    .line 29
    new-instance v0, Lcom/amap/api/mapcore/util/an;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/an;-><init>(ILcom/amap/api/mapcore/util/g;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/g;->a:Lcom/amap/api/mapcore/util/al;

    .line 30
    new-instance v0, Lcom/amap/api/mapcore/util/at;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/at;-><init>(ILcom/amap/api/mapcore/util/g;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/g;->b:Lcom/amap/api/mapcore/util/al;

    .line 31
    new-instance v0, Lcom/amap/api/mapcore/util/ap;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/ap;-><init>(ILcom/amap/api/mapcore/util/g;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/g;->c:Lcom/amap/api/mapcore/util/al;

    .line 32
    new-instance v0, Lcom/amap/api/mapcore/util/ar;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/ar;-><init>(ILcom/amap/api/mapcore/util/g;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/g;->d:Lcom/amap/api/mapcore/util/al;

    .line 33
    new-instance v0, Lcom/amap/api/mapcore/util/as;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/as;-><init>(ILcom/amap/api/mapcore/util/g;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/g;->e:Lcom/amap/api/mapcore/util/al;

    .line 34
    new-instance v0, Lcom/amap/api/mapcore/util/am;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/am;-><init>(ILcom/amap/api/mapcore/util/g;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/g;->f:Lcom/amap/api/mapcore/util/al;

    .line 35
    new-instance v0, Lcom/amap/api/mapcore/util/aq;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/aq;-><init>(ILcom/amap/api/mapcore/util/g;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/g;->g:Lcom/amap/api/mapcore/util/al;

    .line 36
    new-instance v0, Lcom/amap/api/mapcore/util/ao;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/ao;-><init>(ILcom/amap/api/mapcore/util/g;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/g;->h:Lcom/amap/api/mapcore/util/al;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/g;->k:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/g;->l:Ljava/lang/String;

    .line 449
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/g;->m:J

    .line 88
    iput-object p1, p0, Lcom/amap/api/mapcore/util/g;->j:Landroid/content/Context;

    .line 89
    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore/util/g;->a(I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/g;-><init>(Landroid/content/Context;I)V

    .line 68
    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/g;->setCity(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/g;->setUrl(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/g;->setState(I)V

    .line 71
    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/g;->setCompleteCode(I)V

    .line 72
    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getAdcode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/g;->setAdcode(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/g;->r()V

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/g;)J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/g;->m:J

    return-wide v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/g;J)J
    .locals 1

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/amap/api/mapcore/util/g;->m:J

    return-wide p1
.end method

.method private a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 462
    new-instance v1, Lcom/amap/api/mapcore/util/ab;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/ab;-><init>()V

    .line 463
    invoke-static {p1}, Lcom/amap/api/mapcore/util/ag;->a(Ljava/io/File;)J

    move-result-wide v6

    .line 464
    const-wide/16 v4, -0x1

    new-instance v8, Lcom/amap/api/mapcore/util/g$1;

    invoke-direct {v8, p0, p3, p1}, Lcom/amap/api/mapcore/util/g$1;-><init>(Lcom/amap/api/mapcore/util/g;Ljava/lang/String;Ljava/io/File;)V

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/amap/api/mapcore/util/ab;->a(Ljava/io/File;Ljava/io/File;JJLcom/amap/api/mapcore/util/ab$a;)J

    .line 510
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->l:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 100
    packed-switch p1, :pswitch_data_0

    .line 126
    :pswitch_0
    if-gez p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->h:Lcom/amap/api/mapcore/util/al;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    .line 133
    :goto_0
    return-void

    .line 102
    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->h:Lcom/amap/api/mapcore/util/al;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    goto :goto_0

    .line 105
    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->c:Lcom/amap/api/mapcore/util/al;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    goto :goto_0

    .line 108
    :pswitch_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->e:Lcom/amap/api/mapcore/util/al;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    goto :goto_0

    .line 111
    :pswitch_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->b:Lcom/amap/api/mapcore/util/al;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    goto :goto_0

    .line 114
    :pswitch_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->d:Lcom/amap/api/mapcore/util/al;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    goto :goto_0

    .line 117
    :pswitch_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->f:Lcom/amap/api/mapcore/util/al;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    goto :goto_0

    .line 120
    :pswitch_7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->a:Lcom/amap/api/mapcore/util/al;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    goto :goto_0

    .line 123
    :pswitch_8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->g:Lcom/amap/api/mapcore/util/al;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    goto :goto_0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this kind stateId is not found !! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public a(J)V
    .locals 7

    .prologue
    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 355
    iget-wide v2, p0, Lcom/amap/api/mapcore/util/g;->m:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 356
    long-to-int v2, p1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/g;->getcompleteCode()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 357
    long-to-int v2, p1

    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore/util/g;->setCompleteCode(I)V

    .line 358
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/g;->d()V

    .line 360
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUnzipSchedule "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    .line 361
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/g;->m:J

    .line 366
    :cond_1
    return-void
.end method

.method public a(JJ)V
    .locals 5

    .prologue
    .line 273
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p3

    div-long/2addr v0, p1

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProgress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    .line 277
    long-to-int v2, v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/g;->getcompleteCode()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 278
    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/g;->setCompleteCode(I)V

    .line 279
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/g;->d()V

    .line 282
    :cond_0
    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/ah$a;)V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/g;->c:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/g;->b:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    const-string v0, "state must be loading or waiting  when download onError"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    .line 316
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/al;->g()V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/util/al;)V
    .locals 1

    .prologue
    .line 137
    iput-object p1, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    .line 139
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/al;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/g;->setState(I)V

    .line 140
    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/r;)V
    .locals 2

    .prologue
    .line 538
    iget v0, p1, Lcom/amap/api/mapcore/util/r;->a:I

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/g;->a(I)V

    .line 539
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/r;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/g;->setCity(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/r;->h()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore/util/g;->setSize(J)V

    .line 541
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/r;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/g;->setVersion(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/r;->o()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/g;->setCompleteCode(I)V

    .line 543
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/r;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/g;->setAdcode(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/r;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/g;->setUrl(Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 370
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/g;->e:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    const-string v0, "state must be UNZIP_STATE when download onUnzipFinish"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    .line 374
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/g;->l:Ljava/lang/String;

    .line 376
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/g;->s()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/g;->t()Ljava/lang/String;

    move-result-object v1

    .line 380
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 381
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 382
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/g;->p()V

    .line 405
    :goto_0
    return-void

    .line 390
    :cond_2
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amap/api/mapcore/util/g;->j:Landroid/content/Context;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vmap/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 393
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/g;->j:Landroid/content/Context;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 395
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 397
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 398
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 401
    :cond_4
    invoke-direct {p0, v2, v1, v0}, Lcom/amap/api/mapcore/util/g;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/g;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/amap/api/mapcore/util/al;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/h;->b(Lcom/amap/api/mapcore/util/g;)V

    .line 151
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/h;->d(Lcom/amap/api/mapcore/util/g;)V

    .line 157
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/g;->d()V

    .line 159
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CityOperation current State==>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/g;->c()Lcom/amap/api/mapcore/util/al;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/al;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->a(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/g;->d:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/al;->e()V

    .line 181
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/g;->c:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/al;->f()V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/g;->g:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/g;->h:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/al;->d()V

    goto :goto_0

    .line 178
    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/g;->c()Lcom/amap/api/mapcore/util/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/al;->c()V

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/al;->g()V

    .line 204
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/al;->a()V

    .line 211
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/g;->f:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    const-string v0, "state must be COMPLETE_STATE when CheckUpdate ~ hasNewVersion"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/al;->h()V

    .line 222
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/h;->a(Lcom/amap/api/mapcore/util/g;)V

    .line 241
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/h;->c(Lcom/amap/api/mapcore/util/g;)V

    .line 253
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 260
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/g;->m:J

    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/g;->setCompleteCode(I)V

    .line 263
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/g;->b:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    const-string v0, "state"

    const-string v1, "state must be waiting when download onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/al;->d()V

    .line 268
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/g;->c:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    const-string v0, "state"

    const-string v1, "state must be Loading when download onFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/al;->i()V

    .line 290
    return-void
.end method

.method public n()V
    .locals 0

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/g;->e()V

    .line 324
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 331
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/g;->m:J

    .line 333
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/g;->setCompleteCode(I)V

    .line 335
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/g;->e:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    const-string v0, "state must be UNZIP_STATE when download onUnZipStart"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/al;->d()V

    .line 340
    return-void
.end method

.method public p()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/g;->e:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    const-string v0, "state must be UNZIP_STATE when download onUnZipStart"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/al;->g()V

    .line 349
    return-void
.end method

.method public q()V
    .locals 0

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/g;->e()V

    .line 412
    return-void
.end method

.method protected r()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bk;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/g;->getAdcode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/g;->k:Ljava/lang/String;

    .line 431
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 4

    .prologue
    .line 435
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    const/4 v0, 0x0

    .line 438
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->k:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/g;->k:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public t()Ljava/lang/String;
    .locals 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    const/4 v0, 0x0

    .line 446
    :goto_0
    return-object v0

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/g;->s()Ljava/lang/String;

    move-result-object v0

    .line 446
    const/4 v1, 0x0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public u()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 518
    invoke-static {}, Lcom/amap/api/mapcore/util/ag;->a()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/g;->getSize()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    mul-double/2addr v2, v4

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/g;->getcompleteCode()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/g;->getSize()J

    move-result-wide v6

    mul-long/2addr v4, v6

    long-to-double v4, v4

    sub-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 521
    :cond_0
    return v8
.end method

.method public v()Lcom/amap/api/mapcore/util/r;
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/amap/api/mapcore/util/g;->i:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/al;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/g;->setState(I)V

    .line 527
    new-instance v0, Lcom/amap/api/mapcore/util/r;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/g;->j:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/r;-><init>(Lcom/amap/api/maps/offlinemap/OfflineMapCity;Landroid/content/Context;)V

    .line 528
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/r;->f(Ljava/lang/String;)V

    .line 529
    return-object v0
.end method
