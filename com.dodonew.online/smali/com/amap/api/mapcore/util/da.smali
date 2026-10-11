.class public Lcom/amap/api/mapcore/util/da;
.super Ljava/lang/Object;
.source "UpdateLogDBOperation.java"


# instance fields
.field private a:Lcom/amap/api/mapcore/util/co;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amap/api/mapcore/util/da;->b:Landroid/content/Context;

    .line 16
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/da;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/co;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/da;->a:Lcom/amap/api/mapcore/util/co;

    .line 17
    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/co;
    .locals 4

    .prologue
    .line 21
    const/4 v1, 0x0

    .line 23
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/co;

    invoke-static {}, Lcom/amap/api/mapcore/util/cu;->a()Lcom/amap/api/mapcore/util/cu;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/amap/api/mapcore/util/co;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/cn;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-object v0

    .line 24
    :catch_0
    move-exception v0

    .line 26
    const-string v2, "UpdateLogDB"

    const-string v3, "getDB"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/amap/api/mapcore/util/dc;
    .locals 4

    .prologue
    .line 33
    const/4 v1, 0x0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->a:Lcom/amap/api/mapcore/util/co;

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/da;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/co;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/da;->a:Lcom/amap/api/mapcore/util/co;

    .line 40
    :cond_0
    const-string v0, "1=1"

    .line 41
    iget-object v2, p0, Lcom/amap/api/mapcore/util/da;->a:Lcom/amap/api/mapcore/util/co;

    new-instance v3, Lcom/amap/api/mapcore/util/db;

    invoke-direct {v3}, Lcom/amap/api/mapcore/util/db;-><init>()V

    invoke-virtual {v2, v0, v3}, Lcom/amap/api/mapcore/util/co;->c(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;)Ljava/util/List;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 44
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/dc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-object v0

    .line 46
    :catch_0
    move-exception v0

    .line 48
    const-string v2, "UpdateLogDB"

    const-string v3, "getUpdateLog"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/util/dc;)V
    .locals 4

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 59
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->a:Lcom/amap/api/mapcore/util/co;

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/da;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/co;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/da;->a:Lcom/amap/api/mapcore/util/co;

    .line 62
    :cond_1
    new-instance v0, Lcom/amap/api/mapcore/util/db;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/db;-><init>()V

    .line 63
    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/cp;->a(Ljava/lang/Object;)V

    .line 65
    const-string v1, "1=1"

    .line 66
    iget-object v2, p0, Lcom/amap/api/mapcore/util/da;->a:Lcom/amap/api/mapcore/util/co;

    new-instance v3, Lcom/amap/api/mapcore/util/db;

    invoke-direct {v3}, Lcom/amap/api/mapcore/util/db;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/amap/api/mapcore/util/co;->c(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;)Ljava/util/List;

    move-result-object v2

    .line 68
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/da;->a:Lcom/amap/api/mapcore/util/co;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/co;->a(Lcom/amap/api/mapcore/util/cp;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 75
    const-string v1, "UpdateLogDB"

    const-string v2, "updateLog"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 71
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/da;->a:Lcom/amap/api/mapcore/util/co;

    invoke-virtual {v2, v1, v0}, Lcom/amap/api/mapcore/util/co;->b(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
