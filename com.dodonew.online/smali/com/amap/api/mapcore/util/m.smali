.class public Lcom/amap/api/mapcore/util/m;
.super Lcom/amap/api/mapcore/util/dv;
.source "OfflineMapDownloadTask.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/ad$a;


# instance fields
.field private a:Lcom/amap/api/mapcore/util/ad;

.field private b:Lcom/amap/api/mapcore/util/af;

.field private c:Lcom/amap/api/mapcore/util/g;

.field private e:Landroid/content/Context;

.field private f:Landroid/os/Bundle;

.field private g:Lcom/amap/api/maps/AMap;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/p;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/dv;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/m;->f:Landroid/os/Bundle;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/m;->h:Z

    .line 37
    check-cast p1, Lcom/amap/api/mapcore/util/g;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/m;->c:Lcom/amap/api/mapcore/util/g;

    .line 39
    iput-object p2, p0, Lcom/amap/api/mapcore/util/m;->e:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore/util/p;Landroid/content/Context;Lcom/amap/api/maps/AMap;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/m;-><init>(Lcom/amap/api/mapcore/util/p;Landroid/content/Context;)V

    .line 46
    iput-object p3, p0, Lcom/amap/api/mapcore/util/m;->g:Lcom/amap/api/maps/AMap;

    .line 47
    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bk;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m;->c:Lcom/amap/api/mapcore/util/g;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g;->getAdcode()Ljava/lang/String;

    move-result-object v5

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    new-instance v0, Lcom/amap/api/mapcore/util/ae;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/m;->c:Lcom/amap/api/mapcore/util/g;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/g;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/m;->f()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/ae;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 115
    new-instance v1, Lcom/amap/api/mapcore/util/ad;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/m;->c:Lcom/amap/api/mapcore/util/g;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/g;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/m;->e:Landroid/content/Context;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/m;->c:Lcom/amap/api/mapcore/util/g;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/amap/api/mapcore/util/ad;-><init>(Lcom/amap/api/mapcore/util/ae;Ljava/lang/String;Landroid/content/Context;Lcom/amap/api/mapcore/util/ah;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/m;->a:Lcom/amap/api/mapcore/util/ad;

    .line 118
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m;->a:Lcom/amap/api/mapcore/util/ad;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/ad;->a(Lcom/amap/api/mapcore/util/ad$a;)V

    .line 120
    new-instance v0, Lcom/amap/api/mapcore/util/af;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/m;->c:Lcom/amap/api/mapcore/util/g;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/g;->s()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/m;->c:Lcom/amap/api/mapcore/util/g;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/g;->t()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/m;->c:Lcom/amap/api/mapcore/util/g;

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/af;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/mapcore/util/ac;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/m;->b:Lcom/amap/api/mapcore/util/af;

    .line 122
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/m;->h:Z

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m;->a:Lcom/amap/api/mapcore/util/ad;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ad;->a()V

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m;->c:Lcom/amap/api/mapcore/util/g;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m;->c:Lcom/amap/api/mapcore/util/g;

    sget-object v1, Lcom/amap/api/mapcore/util/ah$a;->c:Lcom/amap/api/mapcore/util/ah$a;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/g;->a(Lcom/amap/api/mapcore/util/ah$a;)V

    .line 71
    :goto_0
    return-void

    .line 64
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/m;->g()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/m;->h:Z

    .line 77
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m;->a:Lcom/amap/api/mapcore/util/ad;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m;->a:Lcom/amap/api/mapcore/util/ad;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ad;->c()V

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m;->b:Lcom/amap/api/mapcore/util/af;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m;->b:Lcom/amap/api/mapcore/util/af;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/af;->a()V

    .line 89
    :cond_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/m;->e()V

    .line 82
    const-string v0, "DownloadTask stopTask filefetch is null !!  Maybe cancal a wating task"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    iput-object v1, p0, Lcom/amap/api/mapcore/util/m;->g:Lcom/amap/api/maps/AMap;

    .line 133
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m;->f:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m;->f:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 135
    iput-object v1, p0, Lcom/amap/api/mapcore/util/m;->f:Landroid/os/Bundle;

    .line 137
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 142
    const-string v0, "onNetfileFetchFinish"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m;->b:Lcom/amap/api/mapcore/util/af;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m;->b:Lcom/amap/api/mapcore/util/af;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/af;->b()V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    const-string v0, "OfflineMapDownloadTask UnZipFile is null!!"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
