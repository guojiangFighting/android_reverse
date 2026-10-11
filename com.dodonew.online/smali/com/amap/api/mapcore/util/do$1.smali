.class Lcom/amap/api/mapcore/util/do$1;
.super Lcom/amap/api/mapcore/util/dv;
.source "NetManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/dp;

.field final synthetic b:Lcom/amap/api/mapcore/util/dq;

.field final synthetic c:Lcom/amap/api/mapcore/util/do;


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/do$1;->c:Lcom/amap/api/mapcore/util/do;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/do$1;->a:Lcom/amap/api/mapcore/util/dp;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/do;->b(Lcom/amap/api/mapcore/util/dp;Z)Lcom/amap/api/mapcore/util/dr;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/amap/api/mapcore/util/do$1;->c:Lcom/amap/api/mapcore/util/do;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/do$1;->b:Lcom/amap/api/mapcore/util/dq;

    invoke-static {v1, v0, v2}, Lcom/amap/api/mapcore/util/do;->a(Lcom/amap/api/mapcore/util/do;Lcom/amap/api/mapcore/util/dr;Lcom/amap/api/mapcore/util/dq;)V
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/bl; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    iget-object v1, p0, Lcom/amap/api/mapcore/util/do$1;->c:Lcom/amap/api/mapcore/util/do;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/do$1;->b:Lcom/amap/api/mapcore/util/dq;

    invoke-static {v1, v0, v2}, Lcom/amap/api/mapcore/util/do;->a(Lcom/amap/api/mapcore/util/do;Lcom/amap/api/mapcore/util/bl;Lcom/amap/api/mapcore/util/dq;)V

    goto :goto_0
.end method
