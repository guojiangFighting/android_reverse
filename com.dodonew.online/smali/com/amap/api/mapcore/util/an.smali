.class public Lcom/amap/api/mapcore/util/an;
.super Lcom/amap/api/mapcore/util/al;
.source "DefaultState.java"


# direct methods
.method public constructor <init>(ILcom/amap/api/mapcore/util/g;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/al;-><init>(ILcom/amap/api/mapcore/util/g;)V

    .line 15
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->b:Lcom/amap/api/mapcore/util/g;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/g;->b:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/an;->b(Lcom/amap/api/mapcore/util/al;)V

    .line 21
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->b:Lcom/amap/api/mapcore/util/g;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an;->b:Lcom/amap/api/mapcore/util/g;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/g;->b:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/g;->a(Lcom/amap/api/mapcore/util/al;)V

    .line 24
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->b:Lcom/amap/api/mapcore/util/g;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g;->d()V

    .line 27
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->b:Lcom/amap/api/mapcore/util/g;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g;->c()Lcom/amap/api/mapcore/util/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/al;->c()V

    .line 29
    return-void
.end method
