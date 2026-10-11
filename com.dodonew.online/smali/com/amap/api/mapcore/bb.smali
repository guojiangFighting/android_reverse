.class Lcom/amap/api/mapcore/bb;
.super Ljava/lang/Object;
.source "NavigateArrowDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/ah;


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:F

.field f:F

.field g:F

.field h:F

.field i:[F

.field private j:Lcom/amap/api/mapcore/aa;

.field private k:F

.field private l:I

.field private m:I

.field private n:F

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:Z

.field private t:Lcom/amap/api/maps/model/LatLngBounds;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/aa;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x1000000

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/mapcore/bb;->k:F

    .line 25
    iput v1, p0, Lcom/amap/api/mapcore/bb;->l:I

    .line 26
    iput v1, p0, Lcom/amap/api/mapcore/bb;->m:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/bb;->n:F

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/bb;->o:Z

    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/bb;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    iput v2, p0, Lcom/amap/api/mapcore/bb;->r:I

    .line 32
    iput-boolean v2, p0, Lcom/amap/api/mapcore/bb;->s:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bb;->t:Lcom/amap/api/maps/model/LatLngBounds;

    .line 46
    iput-object p1, p0, Lcom/amap/api/mapcore/bb;->j:Lcom/amap/api/mapcore/aa;

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bb;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bb;->p:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string v1, "NavigateArrowDelegateImp"

    const-string v2, "create"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private n()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amap/api/mapcore/bb;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-object v0, p0, Lcom/amap/api/mapcore/bb;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    .line 108
    if-eqz v0, :cond_0

    .line 109
    new-instance v3, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v3}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 110
    iget-object v4, p0, Lcom/amap/api/mapcore/bb;->j:Lcom/amap/api/mapcore/aa;

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-interface {v4, v5, v0, v3}, Lcom/amap/api/mapcore/aa;->b(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 111
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v3, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v3, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 116
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    iput p1, p0, Lcom/amap/api/mapcore/bb;->n:F

    .line 163
    iget-object v0, p0, Lcom/amap/api/mapcore/bb;->j:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->M()V

    .line 164
    iget-object v0, p0, Lcom/amap/api/mapcore/bb;->j:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 165
    return-void
.end method

.method public a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/high16 v1, 0x437f0000    # 255.0f

    .line 132
    iput p1, p0, Lcom/amap/api/mapcore/bb;->l:I

    .line 133
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/bb;->a:F

    .line 134
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/bb;->b:F

    .line 135
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/bb;->c:F

    .line 136
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/bb;->d:F

    .line 137
    iget-object v0, p0, Lcom/amap/api/mapcore/bb;->j:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 138
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/bb;->b(Ljava/util/List;)V

    .line 97
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 239
    iget-object v0, p0, Lcom/amap/api/mapcore/bb;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/bb;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/bb;->k:F

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget v0, p0, Lcom/amap/api/mapcore/bb;->r:I

    if-nez v0, :cond_2

    .line 243
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bb;->g()V

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/bb;->i:[F

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/amap/api/mapcore/bb;->r:I

    if-lez v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/amap/api/mapcore/bb;->j:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/bb;->k:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapLenWithWin(I)F

    move-result v2

    .line 248
    iget-object v0, p0, Lcom/amap/api/mapcore/bb;->j:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapLenWithWin(I)F

    .line 249
    iget-object v0, p0, Lcom/amap/api/mapcore/bb;->i:[F

    iget-object v1, p0, Lcom/amap/api/mapcore/bb;->i:[F

    array-length v1, v1

    iget-object v3, p0, Lcom/amap/api/mapcore/bb;->j:Lcom/amap/api/mapcore/aa;

    .line 250
    invoke-interface {v3}, Lcom/amap/api/mapcore/aa;->b()I

    move-result v3

    iget v4, p0, Lcom/amap/api/mapcore/bb;->b:F

    iget v5, p0, Lcom/amap/api/mapcore/bb;->c:F

    iget v6, p0, Lcom/amap/api/mapcore/bb;->d:F

    iget v7, p0, Lcom/amap/api/mapcore/bb;->a:F

    const/4 v9, 0x0

    move v11, v10

    .line 249
    invoke-static/range {v0 .. v11}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFZZZ)V

    .line 253
    :cond_3
    iput-boolean v10, p0, Lcom/amap/api/mapcore/bb;->s:Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/amap/api/mapcore/bb;->o:Z

    .line 175
    iget-object v0, p0, Lcom/amap/api/mapcore/bb;->j:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 176
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 201
    iget-object v2, p0, Lcom/amap/api/mapcore/bb;->t:Lcom/amap/api/maps/model/LatLngBounds;

    if-nez v2, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 204
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/bb;->j:Lcom/amap/api/mapcore/aa;

    invoke-interface {v2}, Lcom/amap/api/mapcore/aa;->G()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v2

    .line 205
    if-nez v2, :cond_2

    move v0, v1

    .line 206
    goto :goto_0

    .line 208
    :cond_2
    iget-object v3, p0, Lcom/amap/api/mapcore/bb;->t:Lcom/amap/api/maps/model/LatLngBounds;

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/LatLngBounds;->contains(Lcom/amap/api/maps/model/LatLngBounds;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/amap/api/mapcore/bb;->t:Lcom/amap/api/maps/model/LatLngBounds;

    invoke-virtual {v3, v2}, Lcom/amap/api/maps/model/LatLngBounds;->intersects(Lcom/amap/api/maps/model/LatLngBounds;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/ai;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-interface {p1}, Lcom/amap/api/mapcore/ai;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/bb;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    const/4 v0, 0x1

    .line 190
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amap/api/mapcore/bb;->j:Lcom/amap/api/mapcore/aa;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/bb;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->a(Ljava/lang/String;)Z

    .line 83
    iget-object v0, p0, Lcom/amap/api/mapcore/bb;->j:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 84
    return-void
.end method

.method public b(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    iput p1, p0, Lcom/amap/api/mapcore/bb;->k:F

    .line 122
    iget-object v0, p0, Lcom/amap/api/mapcore/bb;->j:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 123
    return-void
.end method

.method public b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/high16 v1, 0x437f0000    # 255.0f

    .line 147
    iput p1, p0, Lcom/amap/api/mapcore/bb;->m:I

    .line 148
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/bb;->e:F

    .line 149
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/bb;->f:F

    .line 150
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/bb;->g:F

    .line 151
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/bb;->h:F

    .line 152
    iget-object v0, p0, Lcom/amap/api/mapcore/bb;->j:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 153
    return-void
.end method

.method b(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 56
    .line 57
    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v7

    .line 58
    iget-object v0, p0, Lcom/amap/api/mapcore/bb;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 59
    if-eqz p1, :cond_1

    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    .line 62
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/amap/api/mapcore/bb;->j:Lcom/amap/api/mapcore/aa;

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/aa;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 68
    iget-object v1, p0, Lcom/amap/api/mapcore/bb;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {v7, v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-object v1, v0

    .line 71
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v7}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bb;->t:Lcom/amap/api/maps/model/LatLngBounds;

    .line 74
    iput v9, p0, Lcom/amap/api/mapcore/bb;->r:I

    .line 76
    iget-object v0, p0, Lcom/amap/api/mapcore/bb;->j:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, v9}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 77
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amap/api/mapcore/bb;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 89
    const-string v0, "NavigateArrow"

    invoke-static {v0}, Lcom/amap/api/mapcore/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bb;->p:Ljava/lang/String;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bb;->p:Ljava/lang/String;

    return-object v0
.end method

.method public d()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 169
    iget v0, p0, Lcom/amap/api/mapcore/bb;->n:F

    return v0
.end method

.method public e()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bb;->o:Z

    return v0
.end method

.method public f()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public g()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 220
    iput-boolean v0, p0, Lcom/amap/api/mapcore/bb;->s:Z

    .line 222
    new-instance v2, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 224
    iget-object v1, p0, Lcom/amap/api/mapcore/bb;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/amap/api/mapcore/bb;->i:[F

    .line 225
    iget-object v1, p0, Lcom/amap/api/mapcore/bb;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    .line 227
    iget-object v4, p0, Lcom/amap/api/mapcore/bb;->j:Lcom/amap/api/mapcore/aa;

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-interface {v4, v5, v0, v2}, Lcom/amap/api/mapcore/aa;->b(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 228
    iget-object v0, p0, Lcom/amap/api/mapcore/bb;->i:[F

    mul-int/lit8 v4, v1, 0x3

    iget v5, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v5, v0, v4

    .line 229
    iget-object v0, p0, Lcom/amap/api/mapcore/bb;->i:[F

    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x1

    iget v5, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v5, v0, v4

    .line 230
    iget-object v0, p0, Lcom/amap/api/mapcore/bb;->i:[F

    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    aput v5, v0, v4

    .line 231
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 232
    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bb;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/bb;->r:I

    .line 234
    return-void
.end method

.method public h()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    iget v0, p0, Lcom/amap/api/mapcore/bb;->k:F

    return v0
.end method

.method public i()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    iget v0, p0, Lcom/amap/api/mapcore/bb;->l:I

    return v0
.end method

.method public j()V
    .locals 3

    .prologue
    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bb;->i:[F

    if-eqz v0, :cond_0

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bb;->i:[F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    const-string v1, "NavigateArrowDelegateImp"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 265
    const-string v0, "destroy erro"

    const-string v1, "NavigateArrowDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bb;->s:Z

    return v0
.end method

.method public l()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 157
    iget v0, p0, Lcom/amap/api/mapcore/bb;->m:I

    return v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/amap/api/mapcore/bb;->n()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
