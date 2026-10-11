.class public Lcom/amap/api/mapcore/as;
.super Ljava/lang/Object;
.source "MapFragmentDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/af;


# static fields
.field public static volatile a:Landroid/content/Context;

.field public static c:I

.field public static d:I


# instance fields
.field public b:I

.field private e:Lcom/amap/api/mapcore/aa;

.field private f:I

.field private g:Lcom/amap/api/maps/AMapOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/amap/api/mapcore/as;->c:I

    .line 26
    const/4 v0, 0x1

    sput v0, Lcom/amap/api/mapcore/as;->d:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lcom/amap/api/mapcore/as;->b:I

    .line 23
    iput v0, p0, Lcom/amap/api/mapcore/as;->f:I

    .line 29
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/amap/api/mapcore/as;->f:I

    .line 30
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amap/api/mapcore/as;->e:Lcom/amap/api/mapcore/aa;

    if-nez v0, :cond_2

    .line 110
    sget-object v0, Lcom/amap/api/mapcore/as;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/as;->a:Landroid/content/Context;

    .line 114
    :cond_0
    sget-object v0, Lcom/amap/api/mapcore/as;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 115
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context \u4e3a null \u8bf7\u5728\u5730\u56fe\u8c03\u7528\u4e4b\u524d \u4f7f\u7528 MapsInitializer.initialize(Context paramContext) \u6765\u8bbe\u7f6eContext"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    sget-object v0, Lcom/amap/api/mapcore/as;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 120
    const/16 v1, 0x78

    if-gt v0, v1, :cond_4

    .line 121
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/amap/api/mapcore/r;->a:F

    .line 136
    :goto_0
    iget v0, p0, Lcom/amap/api/mapcore/as;->f:I

    sget v1, Lcom/amap/api/mapcore/as;->c:I

    if-ne v0, v1, :cond_a

    .line 137
    new-instance v0, Lcom/amap/api/mapcore/j;

    sget-object v1, Lcom/amap/api/mapcore/as;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/j;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-virtual {v0}, Lcom/amap/api/mapcore/j;->a()Lcom/amap/api/mapcore/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/as;->e:Lcom/amap/api/mapcore/aa;

    .line 143
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/as;->e:Lcom/amap/api/mapcore/aa;

    iget v1, p0, Lcom/amap/api/mapcore/as;->b:I

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->h(I)V

    .line 147
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/as;->g:Lcom/amap/api/maps/AMapOptions;

    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    .line 148
    const-string v0, "MapOptions"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 149
    if-eqz v0, :cond_3

    .line 150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 151
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 152
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 153
    sget-object v0, Lcom/amap/api/maps/AMapOptions;->CREATOR:Lcom/amap/api/maps/AMapOptionsCreator;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMapOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps/AMapOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/as;->g:Lcom/amap/api/maps/AMapOptions;

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/as;->g:Lcom/amap/api/maps/AMapOptions;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/as;->b(Lcom/amap/api/maps/AMapOptions;)V

    .line 157
    const-string v0, "MapFragmentDelegateImp"

    const-string v1, "onCreateView"

    const/16 v2, 0x71

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore/as;->e:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->C()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 122
    :cond_4
    const/16 v1, 0xa0

    if-gt v0, v1, :cond_5

    .line 123
    const v0, 0x3f19999a    # 0.6f

    sput v0, Lcom/amap/api/mapcore/r;->a:F

    goto :goto_0

    .line 124
    :cond_5
    const/16 v1, 0xf0

    if-gt v0, v1, :cond_6

    .line 125
    const v0, 0x3f5eb852    # 0.87f

    sput v0, Lcom/amap/api/mapcore/r;->a:F

    goto :goto_0

    .line 126
    :cond_6
    const/16 v1, 0x140

    if-gt v0, v1, :cond_7

    .line 127
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/amap/api/mapcore/r;->a:F

    goto :goto_0

    .line 128
    :cond_7
    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_8

    .line 129
    const/high16 v0, 0x3fc00000    # 1.5f

    sput v0, Lcom/amap/api/mapcore/r;->a:F

    goto :goto_0

    .line 130
    :cond_8
    const/16 v1, 0x280

    if-gt v0, v1, :cond_9

    .line 131
    const v0, 0x3fe66666    # 1.8f

    sput v0, Lcom/amap/api/mapcore/r;->a:F

    goto/16 :goto_0

    .line 133
    :cond_9
    const v0, 0x3f666666    # 0.9f

    sput v0, Lcom/amap/api/mapcore/r;->a:F

    goto/16 :goto_0

    .line 140
    :cond_a
    new-instance v0, Lcom/amap/api/mapcore/k;

    sget-object v1, Lcom/amap/api/mapcore/as;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/k;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {v0}, Lcom/amap/api/mapcore/k;->a()Lcom/amap/api/mapcore/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/as;->e:Lcom/amap/api/mapcore/aa;

    goto/16 :goto_1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public a()Lcom/amap/api/mapcore/aa;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amap/api/mapcore/as;->e:Lcom/amap/api/mapcore/aa;

    if-nez v0, :cond_1

    .line 50
    sget-object v0, Lcom/amap/api/mapcore/as;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context \u4e3a null \u8bf7\u5728\u5730\u56fe\u8c03\u7528\u4e4b\u524d \u4f7f\u7528 MapsInitializer.initialize(Context paramContext) \u6765\u8bbe\u7f6eContext"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    sget-object v0, Lcom/amap/api/mapcore/as;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 56
    const/16 v1, 0x78

    if-gt v0, v1, :cond_2

    .line 57
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/amap/api/mapcore/r;->a:F

    .line 72
    :goto_0
    iget v0, p0, Lcom/amap/api/mapcore/as;->f:I

    sget v1, Lcom/amap/api/mapcore/as;->c:I

    if-ne v0, v1, :cond_8

    .line 73
    new-instance v0, Lcom/amap/api/mapcore/j;

    sget-object v1, Lcom/amap/api/mapcore/as;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/j;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {v0}, Lcom/amap/api/mapcore/j;->a()Lcom/amap/api/mapcore/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/as;->e:Lcom/amap/api/mapcore/aa;

    .line 81
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/as;->e:Lcom/amap/api/mapcore/aa;

    return-object v0

    .line 58
    :cond_2
    const/16 v1, 0xa0

    if-gt v0, v1, :cond_3

    .line 59
    const v0, 0x3f4ccccd    # 0.8f

    sput v0, Lcom/amap/api/mapcore/r;->a:F

    goto :goto_0

    .line 60
    :cond_3
    const/16 v1, 0xf0

    if-gt v0, v1, :cond_4

    .line 61
    const v0, 0x3f5eb852    # 0.87f

    sput v0, Lcom/amap/api/mapcore/r;->a:F

    goto :goto_0

    .line 62
    :cond_4
    const/16 v1, 0x140

    if-gt v0, v1, :cond_5

    .line 63
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/amap/api/mapcore/r;->a:F

    goto :goto_0

    .line 64
    :cond_5
    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_6

    .line 65
    const/high16 v0, 0x3fc00000    # 1.5f

    sput v0, Lcom/amap/api/mapcore/r;->a:F

    goto :goto_0

    .line 66
    :cond_6
    const/16 v1, 0x280

    if-gt v0, v1, :cond_7

    .line 67
    const v0, 0x3fe66666    # 1.8f

    sput v0, Lcom/amap/api/mapcore/r;->a:F

    goto :goto_0

    .line 69
    :cond_7
    const v0, 0x3f666666    # 0.9f

    sput v0, Lcom/amap/api/mapcore/r;->a:F

    goto :goto_0

    .line 76
    :cond_8
    new-instance v0, Lcom/amap/api/mapcore/k;

    sget-object v1, Lcom/amap/api/mapcore/as;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/k;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-virtual {v0}, Lcom/amap/api/mapcore/k;->a()Lcom/amap/api/mapcore/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/as;->e:Lcom/amap/api/mapcore/aa;

    goto :goto_1
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 283
    iput p1, p0, Lcom/amap/api/mapcore/as;->b:I

    .line 284
    iget-object v0, p0, Lcom/amap/api/mapcore/as;->e:Lcom/amap/api/mapcore/aa;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/amap/api/mapcore/as;->e:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->h(I)V

    .line 287
    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/amap/api/maps/AMapOptions;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/as;->a:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/amap/api/mapcore/as;->g:Lcom/amap/api/maps/AMapOptions;

    .line 90
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/as;->a:Landroid/content/Context;

    .line 35
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    const-string v0, "MapFragmentDelegateImp"

    const-string v1, "onCreate"

    const/16 v2, 0x71

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    return-void
.end method

.method public a(Lcom/amap/api/maps/AMapOptions;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/amap/api/mapcore/as;->g:Lcom/amap/api/maps/AMapOptions;

    .line 39
    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/amap/api/mapcore/as;->e:Lcom/amap/api/mapcore/aa;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/amap/api/mapcore/as;->e:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->d()V

    .line 193
    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/amap/api/mapcore/as;->e:Lcom/amap/api/mapcore/aa;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/amap/api/mapcore/as;->g:Lcom/amap/api/maps/AMapOptions;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Lcom/amap/api/maps/AMapOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/AMapOptions;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/as;->g:Lcom/amap/api/maps/AMapOptions;

    .line 266
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/amap/api/mapcore/as;->g:Lcom/amap/api/maps/AMapOptions;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/as;->a()Lcom/amap/api/mapcore/aa;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/amap/api/mapcore/aa;->l(Z)Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/AMapOptions;->camera(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/maps/AMapOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/as;->g:Lcom/amap/api/maps/AMapOptions;

    .line 268
    iget-object v1, p0, Lcom/amap/api/mapcore/as;->g:Lcom/amap/api/maps/AMapOptions;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/maps/AMapOptions;->writeToParcel(Landroid/os/Parcel;I)V

    .line 269
    const-string v1, "MapOptions"

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_1
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method b(Lcom/amap/api/maps/AMapOptions;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 167
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/as;->e:Lcom/amap/api/mapcore/aa;

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getCamera()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/amap/api/mapcore/as;->e:Lcom/amap/api/mapcore/aa;

    iget-object v2, v0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget v3, v0, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    iget v4, v0, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    iget v0, v0, Lcom/amap/api/maps/model/CameraPosition;->tilt:F

    invoke-static {v2, v3, v4, v0}, Lcom/amap/api/mapcore/o;->a(Lcom/amap/api/maps/model/LatLng;FFF)Lcom/amap/api/mapcore/o;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/mapcore/o;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/as;->e:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->z()Lcom/amap/api/mapcore/ap;

    move-result-object v0

    .line 175
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getRotateGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/ap;->h(Z)V

    .line 176
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getScrollGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/ap;->e(Z)V

    .line 177
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getTiltGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/ap;->g(Z)V

    .line 178
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getZoomControlsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/ap;->b(Z)V

    .line 179
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getZoomGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/ap;->f(Z)V

    .line 180
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getCompassEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/ap;->c(Z)V

    .line 181
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getScaleControlsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/ap;->a(Z)V

    .line 182
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getLogoPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/ap;->a(I)V

    .line 183
    iget-object v0, p0, Lcom/amap/api/mapcore/as;->e:Lcom/amap/api/mapcore/aa;

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getMapType()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->b(I)V

    .line 184
    iget-object v0, p0, Lcom/amap/api/mapcore/as;->e:Lcom/amap/api/mapcore/aa;

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getZOrderOnTop()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->f(Z)V

    .line 186
    :cond_1
    return-void
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/amap/api/mapcore/as;->e:Lcom/amap/api/mapcore/aa;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/amap/api/mapcore/as;->e:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->e()V

    .line 217
    :cond_0
    return-void
.end method

.method public d()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 233
    return-void
.end method

.method public e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/amap/api/mapcore/as;->e:Lcom/amap/api/mapcore/aa;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/amap/api/mapcore/as;->e:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->u()V

    .line 239
    iget-object v0, p0, Lcom/amap/api/mapcore/as;->e:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->f()V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/as;->e:Lcom/amap/api/mapcore/aa;

    .line 251
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 255
    const-string v0, "onLowMemory"

    const-string v1, "onLowMemory run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void
.end method
