.class final Lcom/amap/api/mapcore/util/af$1;
.super Ljava/lang/Object;
.source "UnZipFile.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/af$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/af;->a(Lcom/amap/api/mapcore/util/af$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/ac;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/ac;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/amap/api/mapcore/util/af$1;->a:Lcom/amap/api/mapcore/util/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af$1;->a:Lcom/amap/api/mapcore/util/ac;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af$1;->a:Lcom/amap/api/mapcore/util/ac;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ac;->p()V

    .line 102
    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af$1;->a:Lcom/amap/api/mapcore/util/ac;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af$1;->a:Lcom/amap/api/mapcore/util/ac;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/mapcore/util/ac;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnzipFile zip Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
