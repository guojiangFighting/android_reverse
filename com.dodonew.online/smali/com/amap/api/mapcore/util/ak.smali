.class public abstract Lcom/amap/api/mapcore/util/ak;
.super Lcom/amap/api/mapcore/util/al;
.source "CanDeleteState.java"


# direct methods
.method public constructor <init>(ILcom/amap/api/mapcore/util/g;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/al;-><init>(ILcom/amap/api/mapcore/util/g;)V

    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ak;->b:Lcom/amap/api/mapcore/util/g;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/g;->a:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ak;->b(Lcom/amap/api/mapcore/util/al;)V

    .line 18
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ak;->b:Lcom/amap/api/mapcore/util/g;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ak;->b:Lcom/amap/api/mapcore/util/g;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/g;->a:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/g;->a(Lcom/amap/api/mapcore/util/al;)V

    .line 21
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ak;->b:Lcom/amap/api/mapcore/util/g;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g;->d()V

    .line 25
    return-void
.end method
