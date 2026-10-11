.class public Lcom/amap/api/mapcore/util/cy;
.super Ljava/lang/Object;
.source "SDKDBOperation.java"


# instance fields
.field private a:Lcom/amap/api/mapcore/util/co;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amap/api/mapcore/util/cy;->b:Landroid/content/Context;

    .line 17
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cy;->b:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/amap/api/mapcore/util/cy;->a(Landroid/content/Context;Z)Lcom/amap/api/mapcore/util/co;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cy;->a:Lcom/amap/api/mapcore/util/co;

    .line 18
    return-void
.end method

.method private a(Landroid/content/Context;Z)Lcom/amap/api/mapcore/util/co;
    .locals 4

    .prologue
    .line 22
    const/4 v1, 0x0

    .line 24
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/co;

    invoke-static {}, Lcom/amap/api/mapcore/util/cu;->a()Lcom/amap/api/mapcore/util/cu;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/amap/api/mapcore/util/co;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/cn;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-object v0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    if-nez p2, :cond_0

    .line 27
    const-string v2, "SDKDB"

    const-string v3, "getDB"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/bv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 82
    :try_start_0
    new-instance v1, Lcom/amap/api/mapcore/util/cz;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/cz;-><init>()V

    .line 83
    invoke-static {}, Lcom/amap/api/mapcore/util/cz;->c()Ljava/lang/String;

    move-result-object v2

    .line 84
    iget-object v3, p0, Lcom/amap/api/mapcore/util/cy;->a:Lcom/amap/api/mapcore/util/co;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v1, v4}, Lcom/amap/api/mapcore/util/co;->b(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/util/bv;)V
    .locals 4

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 41
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cy;->a:Lcom/amap/api/mapcore/util/co;

    if-nez v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cy;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amap/api/mapcore/util/cy;->a(Landroid/content/Context;Z)Lcom/amap/api/mapcore/util/co;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cy;->a:Lcom/amap/api/mapcore/util/co;

    .line 44
    :cond_1
    new-instance v0, Lcom/amap/api/mapcore/util/cz;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/cz;-><init>()V

    .line 45
    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/cp;->a(Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/bv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/cz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/amap/api/mapcore/util/cy;->a:Lcom/amap/api/mapcore/util/co;

    new-instance v3, Lcom/amap/api/mapcore/util/cz;

    invoke-direct {v3}, Lcom/amap/api/mapcore/util/cz;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/amap/api/mapcore/util/co;->c(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;)Ljava/util/List;

    move-result-object v2

    .line 50
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cy;->a:Lcom/amap/api/mapcore/util/co;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/co;->a(Lcom/amap/api/mapcore/util/cp;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 57
    const-string v1, "SDKDB"

    const-string v2, "insert"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 53
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/cy;->a:Lcom/amap/api/mapcore/util/co;

    invoke-virtual {v2, v1, v0}, Lcom/amap/api/mapcore/util/co;->b(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
