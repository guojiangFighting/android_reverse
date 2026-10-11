.class public final Lcom/amap/api/maps/model/TileOverlay;
.super Ljava/lang/Object;
.source "TileOverlay.java"


# instance fields
.field private a:Lcom/amap/api/mapcore/ao;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/ao;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/amap/api/mapcore/ao;

    .line 22
    return-void
.end method


# virtual methods
.method public clearTileCache()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/amap/api/mapcore/ao;

    invoke-interface {v0}, Lcom/amap/api/mapcore/ao;->b()V

    .line 40
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 93
    instance-of v0, p1, Lcom/amap/api/maps/model/TileOverlay;

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/amap/api/mapcore/ao;

    check-cast p1, Lcom/amap/api/maps/model/TileOverlay;

    iget-object v1, p1, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/amap/api/mapcore/ao;

    .line 96
    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/ao;->a(Lcom/amap/api/mapcore/ao;)Z

    move-result v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/amap/api/mapcore/ao;

    invoke-interface {v0}, Lcom/amap/api/mapcore/ao;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/amap/api/mapcore/ao;

    invoke-interface {v0}, Lcom/amap/api/mapcore/ao;->d()F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/amap/api/mapcore/ao;

    invoke-interface {v0}, Lcom/amap/api/mapcore/ao;->f()I

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/amap/api/mapcore/ao;

    invoke-interface {v0}, Lcom/amap/api/mapcore/ao;->e()Z

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/amap/api/mapcore/ao;

    invoke-interface {v0}, Lcom/amap/api/mapcore/ao;->a()V

    .line 31
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/amap/api/mapcore/ao;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/ao;->a(Z)V

    .line 80
    return-void
.end method

.method public setZIndex(F)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/amap/api/mapcore/ao;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/ao;->a(F)V

    .line 60
    return-void
.end method
