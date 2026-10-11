.class Lcom/amap/api/mapcore/AMapDelegateImp$f;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/AMapDelegateImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:Lcom/autonavi/amap/mapcore/IPoint;

.field d:Lcom/amap/api/mapcore/o;

.field final synthetic e:Lcom/amap/api/mapcore/AMapDelegateImp;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3040
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3041
    iput v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->a:F

    .line 3042
    iput v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->b:F

    .line 3043
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->c:Lcom/autonavi/amap/mapcore/IPoint;

    .line 3045
    invoke-static {}, Lcom/amap/api/mapcore/o;->a()Lcom/amap/api/mapcore/o;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->d:Lcom/amap/api/mapcore/o;

    .line 3044
    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/mapcore/AMapDelegateImp$1;)V
    .locals 0

    .prologue
    .line 3040
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/AMapDelegateImp$f;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore/util/d;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 3049
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->k(Lcom/amap/api/mapcore/AMapDelegateImp;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3050
    const/4 v0, 0x0

    .line 3062
    :cond_0
    :goto_0
    return v0

    .line 3052
    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/d;->b()F

    move-result v1

    .line 3053
    iget v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->a:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->a:F

    .line 3054
    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->L(Lcom/amap/api/mapcore/AMapDelegateImp;)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->a:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->a:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x43af0000    # 350.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 3055
    :cond_2
    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v2, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->i(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z

    .line 3056
    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->r(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->b:F

    .line 3057
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->d:Lcom/amap/api/mapcore/o;

    iget v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->b:F

    iput v2, v1, Lcom/amap/api/mapcore/o;->g:F

    .line 3058
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v1, v1, Lcom/amap/api/mapcore/AMapDelegateImp;->e:Lcom/amap/api/mapcore/au;

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->d:Lcom/amap/api/mapcore/o;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/au;->a(Lcom/amap/api/mapcore/o;)V

    .line 3059
    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->a:F

    goto :goto_0
.end method

.method public b(Lcom/amap/api/mapcore/util/d;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 3068
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->m(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/ap;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/ap;->h()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 3091
    :cond_0
    :goto_0
    return v0

    .line 3071
    :catch_0
    move-exception v1

    .line 3072
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3074
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->o(Lcom/amap/api/mapcore/AMapDelegateImp;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3075
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->d:Lcom/amap/api/mapcore/o;

    sget-object v2, Lcom/amap/api/mapcore/o$a;->e:Lcom/amap/api/mapcore/o$a;

    iput-object v2, v1, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    .line 3082
    :goto_1
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->i(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z

    .line 3083
    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->a:F

    .line 3084
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/AMapDelegateImp;I)I

    .line 3085
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->k(Lcom/amap/api/mapcore/AMapDelegateImp;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3088
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->m()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41000000    # 8.0f

    div-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/d;->c()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 3089
    const/4 v0, 0x1

    goto :goto_0

    .line 3077
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->d:Lcom/amap/api/mapcore/o;

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->o(Lcom/amap/api/mapcore/AMapDelegateImp;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/amap/api/mapcore/o;->n:Z

    .line 3078
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->d:Lcom/amap/api/mapcore/o;

    sget-object v2, Lcom/amap/api/mapcore/o$a;->f:Lcom/amap/api/mapcore/o$a;

    iput-object v2, v1, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    .line 3079
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->p(Lcom/amap/api/mapcore/AMapDelegateImp;)I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->q(Lcom/amap/api/mapcore/AMapDelegateImp;)I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->c:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 3080
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->d:Lcom/amap/api/mapcore/o;

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->c:Lcom/autonavi/amap/mapcore/IPoint;

    iput-object v2, v1, Lcom/amap/api/mapcore/o;->o:Lcom/autonavi/amap/mapcore/IPoint;

    goto :goto_1
.end method

.method public c(Lcom/amap/api/mapcore/util/d;)V
    .locals 2

    .prologue
    .line 3097
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->a:F

    .line 3098
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->L(Lcom/amap/api/mapcore/AMapDelegateImp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3099
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->i(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z

    .line 3101
    invoke-static {}, Lcom/amap/api/mapcore/o;->a()Lcom/amap/api/mapcore/o;

    move-result-object v0

    .line 3102
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/o;->p:Z

    .line 3103
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v1, v1, Lcom/amap/api/mapcore/AMapDelegateImp;->e:Lcom/amap/api/mapcore/au;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/au;->a(Lcom/amap/api/mapcore/o;)V

    .line 3105
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$f;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->s(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    .line 3106
    return-void
.end method
