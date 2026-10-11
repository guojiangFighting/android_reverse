.class Lcom/amap/api/mapcore/AMapDelegateImp$b;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/AMapDelegateImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/Float;

.field b:Ljava/lang/Float;

.field c:Lcom/autonavi/amap/mapcore/IPoint;

.field d:F

.field e:Lcom/amap/api/mapcore/o;

.field final synthetic f:Lcom/amap/api/mapcore/AMapDelegateImp;

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3115
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3122
    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->a:Ljava/lang/Float;

    .line 3123
    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->b:Ljava/lang/Float;

    .line 3125
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->c:Lcom/autonavi/amap/mapcore/IPoint;

    .line 3151
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->d:F

    .line 3153
    invoke-static {}, Lcom/amap/api/mapcore/o;->a()Lcom/amap/api/mapcore/o;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->e:Lcom/amap/api/mapcore/o;

    .line 3152
    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/mapcore/AMapDelegateImp$1;)V
    .locals 0

    .prologue
    .line 3115
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/AMapDelegateImp$b;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 3201
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->l(Lcom/amap/api/mapcore/AMapDelegateImp;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3221
    :cond_0
    :goto_0
    return-void

    .line 3205
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->m(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/ap;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/ap;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    .line 3212
    :goto_1
    invoke-static {}, Lcom/amap/api/mapcore/o;->c()Lcom/amap/api/mapcore/o;

    move-result-object v0

    .line 3214
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->b(Lcom/amap/api/mapcore/o;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3215
    :catch_0
    move-exception v0

    .line 3216
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "onMultiTouchSingleTap"

    .line 3217
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 3219
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3208
    :catch_1
    move-exception v0

    .line 3209
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public a(FFFFF)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3130
    iput p2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->g:F

    .line 3131
    iput p3, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->i:F

    .line 3132
    iput p4, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->h:F

    .line 3133
    iput p5, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->j:F

    .line 3134
    iget v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->j:F

    iget v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->i:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->h:F

    iget v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->g:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->k:F

    .line 3136
    iput-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->a:Ljava/lang/Float;

    .line 3137
    iput-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->b:Ljava/lang/Float;

    .line 3139
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->o(Lcom/amap/api/mapcore/AMapDelegateImp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3140
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->e:Lcom/amap/api/mapcore/o;

    sget-object v1, Lcom/amap/api/mapcore/o$a;->o:Lcom/amap/api/mapcore/o$a;

    iput-object v1, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    .line 3141
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->p(Lcom/amap/api/mapcore/AMapDelegateImp;)I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->q(Lcom/amap/api/mapcore/AMapDelegateImp;)I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->c:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 3142
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->e:Lcom/amap/api/mapcore/o;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->c:Lcom/autonavi/amap/mapcore/IPoint;

    iput-object v1, v0, Lcom/amap/api/mapcore/o;->o:Lcom/autonavi/amap/mapcore/IPoint;

    .line 3143
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->e:Lcom/amap/api/mapcore/o;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->o(Lcom/amap/api/mapcore/AMapDelegateImp;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/o;->n:Z

    .line 3147
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->e:Lcom/amap/api/mapcore/o;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->r(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v1

    iput v1, v0, Lcom/amap/api/mapcore/o;->d:F

    .line 3148
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->e:Lcom/amap/api/mapcore/o;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->r(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v1

    iput v1, v0, Lcom/amap/api/mapcore/o;->g:F

    .line 3149
    return-void

    .line 3145
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->e:Lcom/amap/api/mapcore/o;

    sget-object v1, Lcom/amap/api/mapcore/o$a;->d:Lcom/amap/api/mapcore/o$a;

    iput-object v1, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;FFFF)Z
    .locals 8

    .prologue
    .line 3159
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->m(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/ap;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/ap;->g()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 3160
    const/4 v0, 0x1

    .line 3196
    :goto_0
    return v0

    .line 3162
    :catch_0
    move-exception v0

    .line 3163
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3164
    const/4 v0, 0x1

    goto :goto_0

    .line 3167
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->l(Lcom/amap/api/mapcore/AMapDelegateImp;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->L(Lcom/amap/api/mapcore/AMapDelegateImp;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3168
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3171
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->b:Ljava/lang/Float;

    if-nez v0, :cond_3

    .line 3172
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->b:Ljava/lang/Float;

    .line 3174
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->a:Ljava/lang/Float;

    if-nez v0, :cond_4

    .line 3175
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->a:Ljava/lang/Float;

    .line 3178
    :cond_4
    iget v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->i:F

    sub-float/2addr v0, p3

    .line 3179
    iget v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->j:F

    sub-float/2addr v1, p5

    .line 3180
    iget v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->g:F

    sub-float/2addr v2, p2

    .line 3181
    iget v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->h:F

    sub-float/2addr v3, p4

    .line 3182
    sub-float v4, p5, p3

    sub-float v5, p4, p2

    div-float/2addr v4, v5

    .line 3183
    iget v5, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->k:F

    sub-float v4, v5, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3fc999999999999aL    # 0.2

    cmpg-double v4, v4, v6

    if-gez v4, :cond_a

    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_5

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-gtz v4, :cond_6

    :cond_5
    const/4 v4, 0x0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_a

    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_a

    :cond_6
    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_7

    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-gez v0, :cond_8

    :cond_7
    const/4 v0, 0x0

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_a

    const/4 v0, 0x0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_a

    .line 3186
    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->a:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v0, p3

    const/high16 v1, 0x40800000    # 4.0f

    div-float v1, v0, v1

    .line 3187
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->j(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z

    .line 3188
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->r(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v0

    .line 3189
    const/high16 v2, 0x42340000    # 45.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_9

    const/high16 v0, 0x42340000    # 45.0f

    :cond_9
    sub-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->d:F

    .line 3190
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->e:Lcom/amap/api/mapcore/o;

    iget v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->d:F

    iput v1, v0, Lcom/amap/api/mapcore/o;->f:F

    .line 3191
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->e:Lcom/amap/api/mapcore/au;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->e:Lcom/amap/api/mapcore/o;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/au;->a(Lcom/amap/api/mapcore/o;)V

    .line 3192
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->a:Ljava/lang/Float;

    .line 3193
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$b;->b:Ljava/lang/Float;

    .line 3194
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 3196
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
