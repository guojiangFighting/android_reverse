.class Lcom/amap/api/mapcore/d;
.super Landroid/os/Handler;
.source "AMapDelegateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/AMapDelegateImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/AMapDelegateImp;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V
    .locals 0

    .prologue
    .line 3318
    iput-object p1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    .prologue
    .line 3320
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->N(Lcom/amap/api/mapcore/AMapDelegateImp;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3550
    :cond_0
    :goto_0
    return-void

    .line 3323
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    .line 3324
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3549
    :cond_2
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    goto :goto_0

    .line 3326
    :pswitch_1
    const-string v0, "amapsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key\u9a8c\u8bc1\u5931\u8d25\uff1a["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/amap/api/mapcore/util/bn;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3330
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/maps/model/CameraPosition;

    .line 3331
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->O(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3332
    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->O(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amap/api/maps/AMap$OnCameraChangeListener;->onCameraChange(Lcom/amap/api/maps/model/CameraPosition;)V

    goto :goto_1

    .line 3337
    :pswitch_3
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->P(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/o;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3339
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->P(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/o;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3346
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->Q(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3347
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->Q(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/maps/AMap$OnMapLoadedListener;->onMapLoaded()V

    goto :goto_1

    .line 3340
    :catch_0
    move-exception v0

    .line 3341
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "onMapLoaded"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 3343
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 3352
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/mapcore/o;

    .line 3353
    if-eqz v0, :cond_2

    .line 3354
    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v1, v1, Lcom/amap/api/mapcore/AMapDelegateImp;->e:Lcom/amap/api/mapcore/au;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/au;->a(Lcom/amap/api/mapcore/o;)V

    goto :goto_1

    .line 3359
    :pswitch_5
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->f:Lcom/amap/api/mapcore/br;

    if-eqz v0, :cond_2

    .line 3360
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->f:Lcom/amap/api/mapcore/br;

    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->E()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/br;->a(F)V

    goto/16 :goto_1

    .line 3365
    :pswitch_6
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->A(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/n;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 3366
    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->A(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/n;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3367
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->A(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/n;->j()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 3384
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->A(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/n;->b()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->y(Lcom/amap/api/mapcore/AMapDelegateImp;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 3385
    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->A(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore/n;->c()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->z(Lcom/amap/api/mapcore/AMapDelegateImp;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 3386
    iget-object v2, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v3, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->A(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/mapcore/n;->b()I

    move-result v3

    invoke-static {v2, v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->b(Lcom/amap/api/mapcore/AMapDelegateImp;I)I

    .line 3387
    iget-object v2, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v3, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->A(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/mapcore/n;->c()I

    move-result v3

    invoke-static {v2, v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->c(Lcom/amap/api/mapcore/AMapDelegateImp;I)I

    .line 3388
    new-instance v2, Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v3, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->m()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 3389
    invoke-virtual {v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->n()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v2, v0, v1}, Lcom/autonavi/amap/mapcore/FPoint;-><init>(FF)V

    .line 3390
    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 3391
    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->r(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v1

    iget v3, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    float-to-int v3, v3

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    float-to-int v2, v2

    invoke-virtual {v1, v3, v2, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 3392
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 3393
    iget-object v2, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->r(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v2

    iget v3, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v2, v3, v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 3395
    invoke-static {v1}, Lcom/amap/api/mapcore/o;->a(Lcom/autonavi/amap/mapcore/IPoint;)Lcom/amap/api/mapcore/o;

    move-result-object v0

    .line 3396
    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->A(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore/n;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3397
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/o;->p:Z

    .line 3399
    :cond_4
    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v1, v1, Lcom/amap/api/mapcore/AMapDelegateImp;->e:Lcom/amap/api/mapcore/au;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/au;->a(Lcom/amap/api/mapcore/o;)V

    goto/16 :goto_1

    .line 3369
    :pswitch_7
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 3371
    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->A(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore/n;->b()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 3372
    invoke-static {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->A(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/mapcore/n;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 3373
    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->A(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore/n;->d()F

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 3374
    invoke-static {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->A(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/mapcore/n;->e()F

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 3375
    invoke-static {v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->A(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/mapcore/n;->f()F

    move-result v3

    .line 3370
    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/o;->a(Lcom/autonavi/amap/mapcore/IPoint;FFF)Lcom/amap/api/mapcore/o;

    move-result-object v0

    .line 3376
    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->A(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore/n;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3377
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/o;->p:Z

    .line 3379
    :cond_5
    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->A(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore/n;->k()Z

    move-result v1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/o;->n:Z

    .line 3380
    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v1, v1, Lcom/amap/api/mapcore/AMapDelegateImp;->e:Lcom/amap/api/mapcore/au;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/au;->a(Lcom/amap/api/mapcore/o;)V

    goto/16 :goto_1

    .line 3406
    :pswitch_8
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->R(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3409
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->R(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/q;->b()V

    goto/16 :goto_1

    .line 3413
    :pswitch_9
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->i()V

    goto/16 :goto_1

    .line 3417
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 3418
    if-eqz v0, :cond_a

    .line 3419
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3420
    iget-object v2, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->S(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/bq;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 3421
    iget-object v2, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->S(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/bq;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore/bq;->onDraw(Landroid/graphics/Canvas;)V

    .line 3423
    :cond_6
    iget-object v2, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->v(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->w(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/ag;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 3424
    iget-object v2, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->v(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3425
    if-eqz v2, :cond_7

    .line 3426
    iget-object v3, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->v(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 3427
    iget-object v4, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v4}, Lcom/amap/api/mapcore/AMapDelegateImp;->v(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    .line 3428
    int-to-float v3, v3

    int-to-float v4, v4

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3431
    :cond_7
    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->T(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 3432
    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->T(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 3433
    invoke-static {v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->M(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 3432
    invoke-interface {v1, v2}, Lcom/amap/api/maps/AMap$onMapPrintScreenListener;->onMapPrint(Landroid/graphics/drawable/Drawable;)V

    .line 3435
    :cond_8
    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->U(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 3436
    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->U(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;->onMapScreenShot(Landroid/graphics/Bitmap;)V

    .line 3446
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/maps/AMap$onMapPrintScreenListener;)Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    .line 3447
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/maps/AMap$OnMapScreenShotListener;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    goto/16 :goto_1

    .line 3439
    :cond_a
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->T(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3440
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->T(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$onMapPrintScreenListener;->onMapPrint(Landroid/graphics/drawable/Drawable;)V

    .line 3442
    :cond_b
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->U(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3443
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->U(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;->onMapScreenShot(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 3451
    :pswitch_b
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->v(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->x(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/bg;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 3452
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->v(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3455
    :cond_c
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->q()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    .line 3456
    if-eqz v0, :cond_d

    .line 3457
    iget v1, v0, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_11

    iget-object v1, v0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v1, v0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    .line 3458
    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/mapcore/util/bh;->a(DD)Z

    move-result v1

    if-nez v1, :cond_11

    .line 3461
    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->S(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/bq;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/bq;->setVisibility(I)V

    .line 3466
    :cond_d
    :goto_4
    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->V(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$CancelableCallback;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->W(Lcom/amap/api/mapcore/AMapDelegateImp;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 3467
    :cond_e
    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(ZLcom/amap/api/maps/model/CameraPosition;)V

    .line 3468
    :cond_f
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->V(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$CancelableCallback;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 3469
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->k(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z

    .line 3470
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->V(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$CancelableCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/maps/AMap$CancelableCallback;->onFinish()V

    .line 3471
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->k(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z

    .line 3473
    :cond_10
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->X(Lcom/amap/api/mapcore/AMapDelegateImp;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3474
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/maps/AMap$CancelableCallback;)Lcom/amap/api/maps/AMap$CancelableCallback;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 3478
    :catch_1
    move-exception v0

    .line 3479
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "CameraUpdateFinish"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3463
    :cond_11
    :try_start_2
    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->S(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/bq;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/bq;->setVisibility(I)V

    goto :goto_4

    .line 3476
    :cond_12
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->l(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 3486
    :pswitch_c
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->m()I

    move-result v0

    .line 3487
    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->n()I

    move-result v11

    .line 3488
    if-lez v0, :cond_13

    if-gtz v11, :cond_14

    .line 3489
    :cond_13
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/maps/model/LatLngBounds;)Lcom/amap/api/maps/model/LatLngBounds;

    goto/16 :goto_1

    .line 3493
    :cond_14
    :try_start_3
    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->q()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v1

    .line 3494
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 3495
    iget-object v3, v1, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v3, v1, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 3497
    new-instance v13, Lcom/autonavi/amap/mapcore/MapProjection;

    iget-object v2, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->d(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v2

    invoke-direct {v13, v2}, Lcom/autonavi/amap/mapcore/MapProjection;-><init>(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 3498
    iget v2, v1, Lcom/amap/api/maps/model/CameraPosition;->tilt:F

    invoke-virtual {v13, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setCameraHeaderAngle(F)V

    .line 3499
    iget v2, v1, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    invoke-virtual {v13, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 3500
    iget v1, v1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    invoke-virtual {v13, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 3501
    invoke-virtual {v13}, Lcom/autonavi/amap/mapcore/MapProjection;->recalculate()V

    .line 3502
    new-instance v12, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v12}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 3503
    iget-object v1, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v13, v2, v3, v12}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/autonavi/amap/mapcore/MapProjection;IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 3504
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v12, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v12, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 3505
    iget-object v2, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v3, 0x0

    invoke-static {v2, v13, v0, v3, v12}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/autonavi/amap/mapcore/MapProjection;IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 3506
    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v12, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v12, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 3507
    iget-object v2, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v4, 0x0

    invoke-static {v2, v13, v4, v11, v12}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/autonavi/amap/mapcore/MapProjection;IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 3508
    new-instance v5, Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v12, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v8, v12, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 3509
    iget-object v2, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v2, v13, v0, v11, v12}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/autonavi/amap/mapcore/MapProjection;IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 3510
    new-instance v7, Lcom/amap/api/maps/model/LatLng;

    iget-wide v8, v12, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v10, v12, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 3511
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v2

    .line 3512
    invoke-virtual {v2, v7}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v1

    .line 3513
    invoke-virtual {v1, v3}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v1

    .line 3511
    invoke-static {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/maps/model/LatLngBounds;)Lcom/amap/api/maps/model/LatLngBounds;

    .line 3514
    invoke-virtual {v13}, Lcom/autonavi/amap/mapcore/MapProjection;->recycle()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 3515
    :catch_2
    move-exception v0

    goto/16 :goto_1

    .line 3521
    :pswitch_d
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->H()V

    .line 3522
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->m(Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 3523
    :catch_3
    move-exception v0

    .line 3524
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "CREATEMAP"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 3526
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 3531
    :pswitch_e
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->A(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/n;->a()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 3532
    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->A(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/n;->j()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->g:Lcom/amap/api/mapcore/bn;

    if-eqz v0, :cond_16

    .line 3534
    :cond_15
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->g:Lcom/amap/api/mapcore/bn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bn;->b(Z)V

    .line 3536
    :cond_16
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->g:Lcom/amap/api/mapcore/bn;

    if-eqz v0, :cond_2

    .line 3537
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v1, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->g:Lcom/amap/api/mapcore/bn;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/bn;->a(Z)V

    goto/16 :goto_1

    :cond_17
    const/4 v0, 0x0

    goto :goto_5

    .line 3542
    :pswitch_f
    iget-object v0, p0, Lcom/amap/api/mapcore/d;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->Y(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    goto/16 :goto_1

    .line 3324
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_5
        :pswitch_f
    .end packed-switch

    .line 3367
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_7
    .end packed-switch
.end method
