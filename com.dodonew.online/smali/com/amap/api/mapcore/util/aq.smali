.class public Lcom/amap/api/mapcore/util/aq;
.super Lcom/amap/api/mapcore/util/ak;
.source "NewVersionState.java"


# direct methods
.method public constructor <init>(ILcom/amap/api/mapcore/util/g;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/ak;-><init>(ILcom/amap/api/mapcore/util/g;)V

    .line 14
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aq;->b:Lcom/amap/api/mapcore/util/g;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g;->d()V

    .line 22
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aq;->b:Lcom/amap/api/mapcore/util/g;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/g;->b:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/aq;->b(Lcom/amap/api/mapcore/util/al;)V

    .line 30
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aq;->b:Lcom/amap/api/mapcore/util/g;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/aq;->b:Lcom/amap/api/mapcore/util/g;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/g;->b:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/g;->a(Lcom/amap/api/mapcore/util/al;)V

    .line 31
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aq;->b:Lcom/amap/api/mapcore/util/g;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g;->c()Lcom/amap/api/mapcore/util/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/al;->c()V

    .line 32
    return-void
.end method
