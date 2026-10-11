.class Lcom/amap/api/mapcore/util/h$2;
.super Ljava/lang/Object;
.source "OfflineDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/h;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/g;

.field final synthetic b:Lcom/amap/api/mapcore/util/h;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/h;Lcom/amap/api/mapcore/util/g;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/amap/api/mapcore/util/h$2;->b:Lcom/amap/api/mapcore/util/h;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/h$2;->a:Lcom/amap/api/mapcore/util/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$2;->a:Lcom/amap/api/mapcore/util/g;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g;->c()Lcom/amap/api/mapcore/util/al;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$2;->a:Lcom/amap/api/mapcore/util/g;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/g;->a:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$2;->b:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->d(Lcom/amap/api/mapcore/util/h;)Lcom/amap/api/mapcore/util/h$a;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$2;->a:Lcom/amap/api/mapcore/util/g;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/h$a;->c(Lcom/amap/api/mapcore/util/g;)V

    .line 373
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$2;->b:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->e:Lcom/amap/api/mapcore/util/n;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$2;->a:Lcom/amap/api/mapcore/util/g;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/n;->a(Lcom/amap/api/mapcore/util/g;)V

    goto :goto_0
.end method
