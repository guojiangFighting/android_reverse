.class public Lcom/amap/api/mapcore/AMapDelegateImp;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/amap/api/mapcore/aa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/AMapDelegateImp$a;,
        Lcom/amap/api/mapcore/AMapDelegateImp$e;,
        Lcom/amap/api/mapcore/AMapDelegateImp$h;,
        Lcom/amap/api/mapcore/AMapDelegateImp$i;,
        Lcom/amap/api/mapcore/AMapDelegateImp$b;,
        Lcom/amap/api/mapcore/AMapDelegateImp$f;,
        Lcom/amap/api/mapcore/AMapDelegateImp$c;,
        Lcom/amap/api/mapcore/AMapDelegateImp$d;,
        Lcom/amap/api/mapcore/AMapDelegateImp$g;,
        Lcom/amap/api/mapcore/AMapDelegateImp$TimeChangedReceiver;
    }
.end annotation


# static fields
.field private static final az:D


# instance fields
.field private A:Lcom/autonavi/amap/mapcore/MapCore;

.field private B:Landroid/content/Context;

.field private C:Lcom/amap/api/mapcore/a;

.field private D:Lcom/autonavi/amap/mapcore/MapProjection;

.field private E:Landroid/view/GestureDetector;

.field private F:Landroid/view/ScaleGestureDetector;

.field private G:Lcom/amap/api/mapcore/util/d;

.field private H:Landroid/view/SurfaceHolder;

.field private I:Lcom/amap/api/mapcore/ay;

.field private J:Lcom/amap/api/mapcore/bq;

.field private K:Lcom/amap/api/mapcore/ar;

.field private L:Lcom/amap/api/mapcore/q;

.field private M:Lcom/amap/api/mapcore/bi;

.field private N:Lcom/amap/api/mapcore/aq;

.field private O:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

.field private P:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

.field private Q:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

.field private R:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

.field private S:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

.field private T:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

.field private U:Lcom/amap/api/maps/AMap$OnMapClickListener;

.field private V:Lcom/amap/api/maps/AMap$OnMapTouchListener;

.field private W:Lcom/amap/api/maps/AMap$OnPOIClickListener;

.field private X:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

.field private Y:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

.field private Z:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

.field a:F

.field private aA:Z

.field private aB:Z

.field private aC:Z

.field private aD:Z

.field private aE:Z

.field private aF:Z

.field private aG:Z

.field private aH:Z

.field private aI:Ljava/lang/Boolean;

.field private aJ:Z

.field private aK:Z

.field private aL:Z

.field private aM:Landroid/os/Handler;

.field private aN:Lcom/amap/api/mapcore/s;

.field private aO:Z

.field private volatile aP:Z

.field private volatile aQ:Z

.field private aR:Landroid/os/Handler;

.field private aS:Ljava/lang/Runnable;

.field private volatile aT:Z

.field private aU:Z

.field private aV:Z

.field private aW:Z

.field private aX:Z

.field private aY:Lcom/amap/api/maps/model/Marker;

.field private aZ:Lcom/amap/api/mapcore/ag;

.field private aa:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

.field private ab:Landroid/view/View;

.field private ac:Lcom/amap/api/mapcore/ag;

.field private ad:Lcom/amap/api/mapcore/bg;

.field private ae:Lcom/amap/api/mapcore/al;

.field private af:Lcom/amap/api/mapcore/ap;

.field private ag:Lcom/amap/api/maps/LocationSource;

.field private ah:Landroid/graphics/Rect;

.field private ai:Lcom/amap/api/mapcore/l;

.field private aj:Lcom/amap/api/mapcore/util/c;

.field private ak:Lcom/amap/api/mapcore/ba;

.field private al:Lcom/amap/api/mapcore/n;

.field private am:I

.field private an:I

.field private ao:Lcom/amap/api/maps/AMap$CancelableCallback;

.field private ap:I

.field private aq:Landroid/graphics/drawable/Drawable;

.field private ar:Landroid/location/Location;

.field private as:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

.field private at:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

.field private au:Landroid/os/Handler;

.field private av:Lcom/amap/api/mapcore/util/f;

.field private aw:Lcom/amap/api/mapcore/o;

.field private ax:Ljava/util/Timer;

.field private ay:Lcom/amap/api/mapcore/AMapDelegateImp$TimeChangedReceiver;

.field b:F

.field private ba:Z

.field private bb:Z

.field private bc:Z

.field private bd:I

.field private be:Z

.field private bf:Ljava/lang/Thread;

.field private bg:Lcom/amap/api/maps/model/LatLngBounds;

.field private bh:Z

.field private bi:Z

.field private bj:Z

.field private bk:I

.field private bl:I

.field private bm:Landroid/os/Handler;

.field private bn:Ljava/lang/Runnable;

.field private bo:Ljava/lang/Runnable;

.field private bp:Z

.field private bq:Lcom/amap/api/mapcore/AMapDelegateImp$a;

.field c:F

.field public d:Lcom/amap/api/mapcore/av;

.field e:Lcom/amap/api/mapcore/au;

.field f:Lcom/amap/api/mapcore/br;

.field g:Lcom/amap/api/mapcore/bn;

.field h:Lcom/amap/api/mapcore/v;

.field i:Lcom/autonavi/amap/mapcore/GLMapResManager;

.field j:Lcom/amap/api/mapcore/ad;

.field k:Ljava/lang/Runnable;

.field final l:Landroid/os/Handler;

.field m:Lcom/amap/api/maps/CustomRenderer;

.field private n:I

.field private o:I

.field private p:Landroid/graphics/Bitmap;

.field private q:Landroid/graphics/Bitmap;

.field private r:I

.field private s:I

.field private final t:[I

.field private u:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

.field private x:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

.field private y:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 223
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/mapcore/AMapDelegateImp;->az:D

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore/ad;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    const/4 v1, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/16 v5, 0xeb

    const/4 v4, 0x0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->n:I

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->o:I

    .line 134
    iput-object v6, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->p:Landroid/graphics/Bitmap;

    .line 135
    iput-object v6, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->q:Landroid/graphics/Bitmap;

    .line 136
    const v0, 0xd2c595b

    iput v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->r:I

    const v0, 0x60fc907

    iput v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->s:I

    .line 137
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->a:F

    iput v7, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->b:F

    iput v7, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->c:F

    .line 154
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->t:[I

    .line 158
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 159
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 161
    new-instance v0, Lcom/amap/api/mapcore/au;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/au;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->e:Lcom/amap/api/mapcore/au;

    .line 164
    sget-object v0, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;->DAY:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->w:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    .line 165
    sget-object v0, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;->NORAML:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->x:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    .line 166
    sget-object v0, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;->NORMAL:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->y:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    .line 171
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->z:I

    .line 174
    iput-object v6, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->C:Lcom/amap/api/mapcore/a;

    .line 179
    iput-object v6, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->H:Landroid/view/SurfaceHolder;

    .line 205
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ah:Landroid/graphics/Rect;

    .line 210
    iput v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->am:I

    .line 211
    iput v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->an:I

    .line 212
    iput-object v6, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ao:Lcom/amap/api/maps/AMap$CancelableCallback;

    .line 213
    iput v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ap:I

    .line 214
    iput-object v6, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aq:Landroid/graphics/drawable/Drawable;

    .line 216
    iput-object v6, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->as:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    .line 217
    iput-object v6, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->at:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    .line 218
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->au:Landroid/os/Handler;

    .line 219
    iput-object v6, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->av:Lcom/amap/api/mapcore/util/f;

    .line 220
    iput-object v6, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aw:Lcom/amap/api/mapcore/o;

    .line 222
    iput-object v6, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ay:Lcom/amap/api/mapcore/AMapDelegateImp$TimeChangedReceiver;

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aA:Z

    .line 225
    iput-boolean v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aB:Z

    .line 226
    iput-boolean v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aC:Z

    .line 227
    iput-boolean v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aD:Z

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aE:Z

    .line 229
    iput-boolean v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aF:Z

    .line 230
    iput-boolean v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aG:Z

    .line 231
    iput-boolean v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aH:Z

    .line 232
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aI:Ljava/lang/Boolean;

    .line 233
    iput-boolean v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aJ:Z

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aK:Z

    .line 235
    iput-boolean v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aL:Z

    .line 236
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aM:Landroid/os/Handler;

    .line 241
    iput-object v6, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->h:Lcom/amap/api/mapcore/v;

    .line 242
    iput-object v6, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->i:Lcom/autonavi/amap/mapcore/GLMapResManager;

    .line 243
    iput-object v6, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->j:Lcom/amap/api/mapcore/ad;

    .line 457
    new-instance v0, Lcom/amap/api/mapcore/s;

    invoke-direct {v0}, Lcom/amap/api/mapcore/s;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aN:Lcom/amap/api/mapcore/s;

    .line 827
    iput-boolean v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aP:Z

    .line 828
    iput-boolean v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aQ:Z

    .line 829
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aR:Landroid/os/Handler;

    .line 830
    new-instance v0, Lcom/amap/api/mapcore/i;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/i;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aS:Ljava/lang/Runnable;

    .line 1051
    iput-boolean v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aT:Z

    .line 1990
    iput-boolean v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aU:Z

    .line 2337
    iput-boolean v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aV:Z

    .line 2341
    iput-boolean v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aW:Z

    .line 2343
    iput-boolean v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aX:Z

    .line 2344
    iput-object v6, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aY:Lcom/amap/api/maps/model/Marker;

    .line 2345
    iput-object v6, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aZ:Lcom/amap/api/mapcore/ag;

    .line 2346
    iput-boolean v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ba:Z

    .line 2347
    iput-boolean v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bb:Z

    .line 2348
    iput-boolean v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bc:Z

    .line 2394
    iput v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bd:I

    .line 2398
    iput-boolean v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->be:Z

    .line 3229
    new-instance v0, Lcom/amap/api/mapcore/c;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/c;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bf:Ljava/lang/Thread;

    .line 3282
    iput-object v6, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bg:Lcom/amap/api/maps/model/LatLngBounds;

    .line 3318
    new-instance v0, Lcom/amap/api/mapcore/d;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/d;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    .line 3553
    iput-boolean v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bh:Z

    .line 3555
    iput-boolean v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bi:Z

    .line 3556
    iput-boolean v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bj:Z

    .line 4024
    new-instance v0, Lcom/amap/api/mapcore/e;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/e;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bm:Landroid/os/Handler;

    .line 4040
    new-instance v0, Lcom/amap/api/mapcore/f;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/f;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bn:Ljava/lang/Runnable;

    .line 4053
    new-instance v0, Lcom/amap/api/mapcore/g;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/g;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bo:Ljava/lang/Runnable;

    .line 4397
    iput-boolean v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bp:Z

    .line 4412
    new-instance v0, Lcom/amap/api/mapcore/h;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/h;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bq:Lcom/amap/api/mapcore/AMapDelegateImp$a;

    .line 285
    invoke-static {p2}, Lcom/amap/api/mapcore/util/bm;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/r;->c:Ljava/lang/String;

    .line 286
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->j:Lcom/amap/api/mapcore/ad;

    .line 287
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->j:Lcom/amap/api/mapcore/ad;

    const/16 v2, 0xff

    invoke-static {v2, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore/ad;->setBackgroundColor(I)V

    .line 288
    iput-object p2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    .line 291
    new-instance v0, Lcom/autonavi/amap/mapcore/MapCore;

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/autonavi/amap/mapcore/MapCore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    .line 292
    new-instance v0, Lcom/amap/api/mapcore/a;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/a;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->C:Lcom/amap/api/mapcore/a;

    .line 293
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->C:Lcom/amap/api/mapcore/a;

    invoke-virtual {v0, v2}, Lcom/autonavi/amap/mapcore/MapCore;->setMapCallback(Lcom/autonavi/amap/mapcore/IMapCallback;)V

    .line 294
    invoke-direct {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->ab()V

    .line 295
    new-instance v0, Lcom/autonavi/amap/mapcore/GLMapResManager;

    invoke-direct {v0, p0, p2}, Lcom/autonavi/amap/mapcore/GLMapResManager;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->i:Lcom/autonavi/amap/mapcore/GLMapResManager;

    .line 297
    new-instance v0, Lcom/amap/api/mapcore/bh;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/bh;-><init>(Lcom/amap/api/mapcore/aa;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ae:Lcom/amap/api/mapcore/al;

    .line 298
    new-instance v0, Lcom/amap/api/mapcore/l;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/l;-><init>(Lcom/amap/api/mapcore/aa;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ai:Lcom/amap/api/mapcore/l;

    .line 299
    new-instance v0, Lcom/amap/api/mapcore/bo;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/bo;-><init>(Lcom/amap/api/mapcore/aa;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->af:Lcom/amap/api/mapcore/ap;

    .line 304
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v2, Lcom/amap/api/mapcore/AMapDelegateImp$d;

    invoke-direct {v2, p0, v6}, Lcom/amap/api/mapcore/AMapDelegateImp$d;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/mapcore/AMapDelegateImp$1;)V

    invoke-direct {v0, p2, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->E:Landroid/view/GestureDetector;

    .line 309
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->E:Landroid/view/GestureDetector;

    new-instance v2, Lcom/amap/api/mapcore/AMapDelegateImp$c;

    invoke-direct {v2, p0, v6}, Lcom/amap/api/mapcore/AMapDelegateImp$c;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/mapcore/AMapDelegateImp$1;)V

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 310
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->E:Landroid/view/GestureDetector;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 315
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v2, Lcom/amap/api/mapcore/AMapDelegateImp$g;

    invoke-direct {v2, p0, v6}, Lcom/amap/api/mapcore/AMapDelegateImp$g;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/mapcore/AMapDelegateImp$1;)V

    invoke-direct {v0, p2, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->F:Landroid/view/ScaleGestureDetector;

    .line 321
    new-instance v0, Lcom/amap/api/mapcore/util/d;

    new-instance v2, Lcom/amap/api/mapcore/AMapDelegateImp$f;

    invoke-direct {v2, p0, v6}, Lcom/amap/api/mapcore/AMapDelegateImp$f;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/mapcore/AMapDelegateImp$1;)V

    invoke-direct {v0, p2, v2}, Lcom/amap/api/mapcore/util/d;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/d$a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->G:Lcom/amap/api/mapcore/util/d;

    .line 324
    new-instance v0, Lcom/amap/api/mapcore/util/c;

    new-instance v2, Lcom/amap/api/mapcore/AMapDelegateImp$b;

    invoke-direct {v2, p0, v6}, Lcom/amap/api/mapcore/AMapDelegateImp$b;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/mapcore/AMapDelegateImp$1;)V

    invoke-direct {v0, p2, v2}, Lcom/amap/api/mapcore/util/c;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/c$a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aj:Lcom/amap/api/mapcore/util/c;

    .line 327
    new-instance v0, Lcom/amap/api/mapcore/AMapDelegateImp$1;

    invoke-direct {v0, p0, p2, p0}, Lcom/amap/api/mapcore/AMapDelegateImp$1;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;Landroid/content/Context;Lcom/amap/api/mapcore/aa;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->I:Lcom/amap/api/mapcore/ay;

    .line 336
    new-instance v0, Lcom/amap/api/mapcore/v;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/v;-><init>(Lcom/amap/api/mapcore/aa;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->h:Lcom/amap/api/mapcore/v;

    .line 337
    new-instance v0, Lcom/amap/api/mapcore/bq;

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore/bq;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/AMapDelegateImp;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->J:Lcom/amap/api/mapcore/bq;

    .line 338
    new-instance v0, Lcom/amap/api/mapcore/bi;

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore/bi;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/AMapDelegateImp;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->M:Lcom/amap/api/mapcore/bi;

    .line 339
    new-instance v0, Lcom/amap/api/mapcore/aq;

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/aq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->N:Lcom/amap/api/mapcore/aq;

    .line 340
    new-instance v0, Lcom/amap/api/mapcore/bn;

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore/bn;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/aa;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->g:Lcom/amap/api/mapcore/bn;

    .line 341
    new-instance v0, Lcom/amap/api/mapcore/br;

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore/br;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/aa;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->f:Lcom/amap/api/mapcore/br;

    .line 343
    new-instance v0, Lcom/amap/api/mapcore/ar;

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->e:Lcom/amap/api/mapcore/au;

    invoke-direct {v0, v2, v3, p0}, Lcom/amap/api/mapcore/ar;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/au;Lcom/amap/api/mapcore/aa;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->K:Lcom/amap/api/mapcore/ar;

    .line 344
    new-instance v0, Lcom/amap/api/mapcore/q;

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->e:Lcom/amap/api/mapcore/au;

    invoke-direct {v0, v2, v3, p0}, Lcom/amap/api/mapcore/q;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/au;Lcom/amap/api/mapcore/aa;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->L:Lcom/amap/api/mapcore/q;

    .line 345
    new-instance v0, Lcom/amap/api/mapcore/av;

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    invoke-direct {v0, v2, p3, p0}, Lcom/amap/api/mapcore/av;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amap/api/mapcore/aa;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    .line 347
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->J:Lcom/amap/api/mapcore/bq;

    const/16 v2, 0xff

    invoke-static {v2, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/bq;->setBackgroundColor(I)V

    .line 348
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->M:Lcom/amap/api/mapcore/bi;

    const/16 v2, 0xff

    invoke-static {v2, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/bi;->setBackgroundColor(I)V

    .line 349
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->I:Lcom/amap/api/mapcore/ay;

    const/16 v2, 0xff

    invoke-static {v2, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/ay;->setBackgroundColor(I)V

    .line 350
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->g:Lcom/amap/api/mapcore/bn;

    const/16 v2, 0xff

    invoke-static {v2, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/bn;->setBackgroundColor(I)V

    .line 351
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->f:Lcom/amap/api/mapcore/br;

    const/16 v2, 0xff

    invoke-static {v2, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/br;->setBackgroundColor(I)V

    .line 352
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    const/16 v2, 0xff

    invoke-static {v2, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/av;->setBackgroundColor(I)V

    .line 353
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->K:Lcom/amap/api/mapcore/ar;

    const/16 v2, 0xff

    invoke-static {v2, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/ar;->setBackgroundColor(I)V

    .line 355
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 358
    iget-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->I:Lcom/amap/api/mapcore/ay;

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->j:Lcom/amap/api/mapcore/ad;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v3, v0, v4, v2}, Lcom/amap/api/mapcore/ay;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 360
    new-instance v0, Lcom/amap/api/mapcore/ay$a;

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/ay$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    iget-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->I:Lcom/amap/api/mapcore/ay;

    iget-object v5, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    invoke-virtual {v3, v5, v0}, Lcom/amap/api/mapcore/ay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->I:Lcom/amap/api/mapcore/ay;

    iget-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->J:Lcom/amap/api/mapcore/bq;

    invoke-virtual {v0, v3, v2}, Lcom/amap/api/mapcore/ay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->I:Lcom/amap/api/mapcore/ay;

    iget-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->M:Lcom/amap/api/mapcore/bi;

    invoke-virtual {v0, v3, v2}, Lcom/amap/api/mapcore/ay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->I:Lcom/amap/api/mapcore/ay;

    iget-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->g:Lcom/amap/api/mapcore/bn;

    invoke-virtual {v0, v3, v2}, Lcom/amap/api/mapcore/ay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 374
    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->I:Lcom/amap/api/mapcore/ay;

    iget-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->N:Lcom/amap/api/mapcore/aq;

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore/ay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->N:Lcom/amap/api/mapcore/aq;

    new-instance v2, Lcom/amap/api/mapcore/AMapDelegateImp$e;

    invoke-direct {v2, p0, v6}, Lcom/amap/api/mapcore/AMapDelegateImp$e;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/mapcore/AMapDelegateImp$1;)V

    .line 376
    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/aq;->a(Lcom/amap/api/mapcore/aq$a;)V

    .line 378
    new-instance v0, Lcom/amap/api/mapcore/ay$a;

    new-instance v3, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v3, v7, v7}, Lcom/autonavi/amap/mapcore/FPoint;-><init>(FF)V

    const/16 v6, 0x53

    move v2, v1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/ay$a;-><init>(IILcom/autonavi/amap/mapcore/FPoint;III)V

    .line 382
    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->I:Lcom/amap/api/mapcore/ay;

    iget-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->f:Lcom/amap/api/mapcore/br;

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore/ay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    new-instance v0, Lcom/amap/api/mapcore/ay$a;

    new-instance v3, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v3, v7, v7}, Lcom/autonavi/amap/mapcore/FPoint;-><init>(FF)V

    const/16 v6, 0x53

    move v2, v1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/ay$a;-><init>(IILcom/autonavi/amap/mapcore/FPoint;III)V

    .line 389
    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->I:Lcom/amap/api/mapcore/ay;

    iget-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->K:Lcom/amap/api/mapcore/ar;

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore/ay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->af:Lcom/amap/api/mapcore/ap;

    invoke-interface {v0}, Lcom/amap/api/mapcore/ap;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->K:Lcom/amap/api/mapcore/ar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/ar;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_0
    :goto_0
    new-instance v0, Lcom/amap/api/mapcore/ay$a;

    new-instance v3, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v3, v7, v7}, Lcom/autonavi/amap/mapcore/FPoint;-><init>(FF)V

    const/16 v6, 0x33

    move v2, v1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/ay$a;-><init>(IILcom/autonavi/amap/mapcore/FPoint;III)V

    .line 405
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->I:Lcom/amap/api/mapcore/ay;

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->L:Lcom/amap/api/mapcore/q;

    invoke-virtual {v1, v2, v0}, Lcom/amap/api/mapcore/ay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->L:Lcom/amap/api/mapcore/q;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/q;->setVisibility(I)V

    .line 408
    new-instance v0, Lcom/amap/api/mapcore/n;

    invoke-direct {v0, p2}, Lcom/amap/api/mapcore/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    .line 410
    new-instance v0, Lcom/amap/api/mapcore/ba;

    invoke-direct {v0, p0, p2}, Lcom/amap/api/mapcore/ba;-><init>(Lcom/amap/api/mapcore/aa;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;

    .line 411
    new-instance v0, Lcom/amap/api/mapcore/AMapDelegateImp$7;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/AMapDelegateImp$7;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aa:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    .line 423
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aa:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->Z:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    .line 424
    invoke-interface {p1, p0}, Lcom/amap/api/mapcore/ad;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 427
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 428
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    new-instance v1, Lcom/amap/api/mapcore/AMapDelegateImp$TimeChangedReceiver;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/AMapDelegateImp$TimeChangedReceiver;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ay:Lcom/amap/api/mapcore/AMapDelegateImp$TimeChangedReceiver;

    .line 431
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ay:Lcom/amap/api/mapcore/AMapDelegateImp$TimeChangedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 434
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->f:Lcom/amap/api/mapcore/br;

    sget v1, Lcom/amap/api/mapcore/AutoTestConfig;->ZoomControllerViewId:I

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/br;->setId(I)V

    .line 435
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->M:Lcom/amap/api/mapcore/bi;

    sget v1, Lcom/amap/api/mapcore/AutoTestConfig;->ScaleControlsViewId:I

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bi;->setId(I)V

    .line 436
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->K:Lcom/amap/api/mapcore/ar;

    sget v1, Lcom/amap/api/mapcore/AutoTestConfig;->MyLocationViewId:I

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/ar;->setId(I)V

    .line 437
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->L:Lcom/amap/api/mapcore/q;

    sget v1, Lcom/amap/api/mapcore/AutoTestConfig;->CompassViewId:I

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/q;->setId(I)V

    .line 439
    return-void

    .line 394
    :catch_0
    move-exception v0

    .line 395
    const-string v2, "AMapDelegateImpGLSurfaceView"

    const-string v3, "locationView gone"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 154
    nop

    :array_0
    .array-data 4
        0x989680
        0x4c4b40
        0x1e8480
        0xf4240
        0x7a120
        0x30d40
        0x186a0
        0xc350
        0x7530
        0x4e20
        0x2710
        0x1388
        0x7d0
        0x3e8
        0x1f4
        0xc8
        0x64
        0x32
        0x19
        0xa
        0x5
    .end array-data
.end method

.method static synthetic A(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/n;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    return-object v0
.end method

.method static synthetic B(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnMarkerDragListener;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->R:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    return-object v0
.end method

.method static synthetic C(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/ag;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aZ:Lcom/amap/api/mapcore/ag;

    return-object v0
.end method

.method static synthetic D(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/model/Marker;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aY:Lcom/amap/api/maps/model/Marker;

    return-object v0
.end method

.method static synthetic E(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnMapLongClickListener;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->X:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    return-object v0
.end method

.method static synthetic F(Lcom/amap/api/mapcore/AMapDelegateImp;)Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->be:Z

    return v0
.end method

.method static synthetic G(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->Y:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    return-object v0
.end method

.method static synthetic H(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnMarkerClickListener;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->P:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    return-object v0
.end method

.method static synthetic I(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnMapClickListener;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->U:Lcom/amap/api/maps/AMap$OnMapClickListener;

    return-object v0
.end method

.method static synthetic J(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnPolylineClickListener;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->Q:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    return-object v0
.end method

.method static synthetic K(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnPOIClickListener;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->W:Lcom/amap/api/maps/AMap$OnPOIClickListener;

    return-object v0
.end method

.method static synthetic L(Lcom/amap/api/mapcore/AMapDelegateImp;)Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bb:Z

    return v0
.end method

.method static synthetic M(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic N(Lcom/amap/api/mapcore/AMapDelegateImp;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aI:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic O(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnCameraChangeListener;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->T:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    return-object v0
.end method

.method static synthetic P(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/o;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aw:Lcom/amap/api/mapcore/o;

    return-object v0
.end method

.method static synthetic Q(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnMapLoadedListener;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->S:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    return-object v0
.end method

.method static synthetic R(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/q;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->L:Lcom/amap/api/mapcore/q;

    return-object v0
.end method

.method static synthetic S(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/bq;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->J:Lcom/amap/api/mapcore/bq;

    return-object v0
.end method

.method static synthetic T(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$onMapPrintScreenListener;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->as:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    return-object v0
.end method

.method static synthetic U(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->at:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    return-object v0
.end method

.method static synthetic V(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$CancelableCallback;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ao:Lcom/amap/api/maps/AMap$CancelableCallback;

    return-object v0
.end method

.method static synthetic W(Lcom/amap/api/mapcore/AMapDelegateImp;)Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aF:Z

    return v0
.end method

.method static synthetic X(Lcom/amap/api/mapcore/AMapDelegateImp;)Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aH:Z

    return v0
.end method

.method static synthetic Y(Lcom/amap/api/mapcore/AMapDelegateImp;)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->ad()V

    return-void
.end method

.method static synthetic Z(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/util/f;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->av:Lcom/amap/api/mapcore/util/f;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/AMapDelegateImp;I)I
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bd:I

    return p1
.end method

.method public static a(IIIILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 3588
    .line 3590
    mul-int v0, p2, p3

    :try_start_0
    new-array v9, v0, [I

    .line 3591
    mul-int v0, p2, p3

    new-array v10, v0, [I

    .line 3592
    invoke-static {v9}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v7

    .line 3593
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 3594
    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move-object v0, p4

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    move v1, v8

    .line 3600
    :goto_0
    if-ge v1, p3, :cond_1

    move v0, v8

    .line 3601
    :goto_1
    if-ge v0, p2, :cond_0

    .line 3602
    mul-int v2, v1, p2

    add-int/2addr v2, v0

    aget v2, v9, v2

    .line 3603
    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    .line 3604
    shl-int/lit8 v4, v2, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    .line 3605
    const v5, -0xff0100

    and-int/2addr v2, v5

    or-int/2addr v2, v4

    or-int/2addr v2, v3

    .line 3606
    sub-int v3, p3, v1

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, p2

    add-int/2addr v3, v0

    aput v2, v10, v3

    .line 3601
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3600
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3611
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3612
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v10

    move v3, p2

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3618
    :goto_2
    return-object v0

    .line 3614
    :catch_0
    move-exception v0

    .line 3615
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "SavePixels"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 3617
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3618
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic a(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/mapcore/ag;)Lcom/amap/api/mapcore/ag;
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aZ:Lcom/amap/api/mapcore/ag;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/maps/AMap$CancelableCallback;)Lcom/amap/api/maps/AMap$CancelableCallback;
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ao:Lcom/amap/api/maps/AMap$CancelableCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/maps/AMap$OnMapScreenShotListener;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->at:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/maps/AMap$onMapPrintScreenListener;)Lcom/amap/api/maps/AMap$onMapPrintScreenListener;
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->as:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/maps/model/LatLngBounds;)Lcom/amap/api/maps/model/LatLngBounds;
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bg:Lcom/amap/api/maps/model/LatLngBounds;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/maps/model/Marker;)Lcom/amap/api/maps/model/Marker;
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aY:Lcom/amap/api/maps/model/Marker;

    return-object p1
.end method

.method private a(III)Lcom/amap/api/maps/model/Poi;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 4007
    iget-boolean v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aC:Z

    if-nez v1, :cond_1

    .line 4020
    :cond_0
    :goto_0
    return-object v0

    .line 4011
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v1, p1, p2, p3}, Lcom/autonavi/amap/mapcore/MapCore;->GetSelectedMapPoi(III)Lcom/autonavi/amap/mapcore/SelectedMapPoi;

    move-result-object v8

    .line 4012
    if-eqz v8, :cond_0

    .line 4013
    new-instance v4, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v4}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 4014
    iget v1, v8, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->mapx:I

    iget v2, v8, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->mapy:I

    invoke-static {v1, v2, v4}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 4015
    new-instance v7, Lcom/amap/api/maps/model/Poi;

    iget-object v9, v8, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->name:Ljava/lang/String;

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v4, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v4, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iget-object v2, v8, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->poiid:Ljava/lang/String;

    invoke-direct {v7, v9, v1, v2}, Lcom/amap/api/maps/model/Poi;-><init>(Ljava/lang/String;Lcom/amap/api/maps/model/LatLng;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    goto :goto_0

    .line 4019
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/AMapDelegateImp;III)Lcom/amap/api/maps/model/Poi;
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(III)Lcom/amap/api/maps/model/Poi;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;)Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->x:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;)Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->y:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;)Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->w:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/autonavi/amap/mapcore/MapCore;)Lcom/autonavi/amap/mapcore/MapCore;
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/AMapDelegateImp;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bo:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/autonavi/amap/mapcore/MapProjection;IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/autonavi/amap/mapcore/MapProjection;IILcom/autonavi/amap/mapcore/DPoint;)V

    return-void
.end method

.method private a(Lcom/autonavi/amap/mapcore/MapProjection;IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 3

    .prologue
    .line 2223
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aB:Z

    if-eqz v0, :cond_0

    .line 2224
    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 2225
    invoke-virtual {p1, p2, p3, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 2226
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 2227
    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {p1, v2, v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 2228
    iget v0, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v0, v1, p4}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 2230
    :cond_0
    return-void
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/16 v0, 0x78

    const/16 v3, 0x32

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 4208
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v1, p1}, Lcom/autonavi/amap/mapcore/MapCore;->setGL(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 4209
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v1, p1, p2, p3}, Lcom/autonavi/amap/mapcore/MapCore;->surfaceChange(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 4210
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 4211
    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    .line 4212
    invoke-direct {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->af()V

    .line 4213
    const/16 v2, 0x64

    .line 4218
    if-gt v1, v0, :cond_2

    move v5, v6

    .line 4259
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v1, 0x803

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 4262
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v1, 0x3e9

    move v2, v8

    move v3, v8

    move v4, v8

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 4263
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v1, 0x3fd

    move v2, v6

    move v3, v8

    move v4, v8

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 4264
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v1, 0x3fe

    move v2, v6

    move v3, v8

    move v4, v8

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 4265
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v1, 0x3ff

    move v2, v6

    move v3, v8

    move v4, v8

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 4267
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v1, 0x400

    move v2, v6

    move v3, v8

    move v4, v8

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 4269
    invoke-virtual {p0, v8}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    .line 4270
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->k:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 4271
    new-instance v0, Lcom/amap/api/mapcore/AMapDelegateImp$8;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/AMapDelegateImp$8;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->k:Ljava/lang/Runnable;

    .line 4279
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4280
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->m:Lcom/amap/api/maps/CustomRenderer;

    if-eqz v0, :cond_1

    .line 4281
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->m:Lcom/amap/api/maps/CustomRenderer;

    invoke-interface {v0, p1, p2, p3}, Lcom/amap/api/maps/CustomRenderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 4284
    :cond_1
    return-void

    .line 4220
    :cond_2
    const/16 v2, 0xa0

    if-gt v1, v2, :cond_4

    .line 4221
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v2, 0x1e0

    if-gt v1, v2, :cond_3

    move v1, v0

    :goto_1
    move v5, v6

    move v3, v0

    move v2, v1

    .line 4230
    goto :goto_0

    .line 4226
    :cond_3
    const/16 v1, 0x64

    .line 4227
    const/16 v0, 0xa0

    .line 4228
    goto :goto_1

    .line 4231
    :cond_4
    const/16 v0, 0xf0

    if-gt v1, v0, :cond_6

    .line 4232
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_5

    .line 4233
    const/16 v2, 0x3c

    .line 4234
    const/16 v3, 0xc8

    .line 4236
    goto/16 :goto_0

    .line 4238
    :cond_5
    const/16 v2, 0x46

    .line 4239
    const/16 v3, 0x96

    .line 4241
    goto/16 :goto_0

    .line 4243
    :cond_6
    const/16 v0, 0x140

    if-gt v1, v0, :cond_7

    .line 4245
    const/16 v0, 0xb4

    .line 4247
    const/4 v5, 0x3

    move v2, v3

    move v3, v0

    goto/16 :goto_0

    .line 4248
    :cond_7
    const/16 v0, 0x1e0

    if-gt v1, v0, :cond_8

    .line 4250
    const/16 v0, 0x12c

    .line 4252
    const/4 v5, 0x3

    move v2, v3

    move v3, v0

    goto/16 :goto_0

    .line 4254
    :cond_8
    const/16 v2, 0x28

    .line 4255
    const/16 v3, 0x168

    .line 4257
    const/4 v5, 0x4

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/AMapDelegateImp;Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aP:Z

    return p1
.end method

.method private a(Ljava/io/File;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3873
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3890
    :cond_0
    :goto_0
    return v1

    .line 3875
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 3876
    if-eqz v2, :cond_3

    move v0, v1

    .line 3877
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 3878
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3879
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3877
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3883
    :cond_2
    aget-object v3, v2, v0

    invoke-direct {p0, v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3886
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 3890
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static synthetic aa()D
    .locals 2

    .prologue
    .line 120
    sget-wide v0, Lcom/amap/api/mapcore/AMapDelegateImp;->az:D

    return-wide v0
.end method

.method static synthetic aa(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnMapTouchListener;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->V:Lcom/amap/api/maps/AMap$OnMapTouchListener;

    return-object v0
.end method

.method private ab()V
    .locals 3

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aB:Z

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->newMap()V

    .line 526
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->getMapstate()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 527
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    iget v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->r:I

    iget v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->s:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 528
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    iget v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->c:F

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 529
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    iget v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->a:F

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 530
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    iget v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->b:F

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->setCameraHeaderAngle(F)V

    .line 531
    invoke-direct {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->ac()V

    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aB:Z

    .line 534
    :cond_0
    return-void
.end method

.method static synthetic ab(Lcom/amap/api/mapcore/AMapDelegateImp;)Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aP:Z

    return v0
.end method

.method private ac()V
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->j(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v0

    .line 544
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized ad()V
    .locals 6

    .prologue
    .line 1035
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ax:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1036
    invoke-direct {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->ae()V

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ax:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 1039
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ax:Ljava/util/Timer;

    .line 1041
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ax:Ljava/util/Timer;

    new-instance v1, Lcom/amap/api/mapcore/AMapDelegateImp$h;

    invoke-direct {v1, p0, p0}, Lcom/amap/api/mapcore/AMapDelegateImp$h;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/mapcore/AMapDelegateImp;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x19

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    monitor-exit p0

    return-void

    .line 1035
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized ae()V
    .locals 1

    .prologue
    .line 1045
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ax:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ax:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1047
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ax:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1049
    :cond_0
    monitor-exit p0

    return-void

    .line 1045
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized af()V
    .locals 4

    .prologue
    .line 1058
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aT:Z

    if-nez v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->i:Lcom/autonavi/amap/mapcore/GLMapResManager;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/GLMapResManager;->setStyleData()V

    .line 1061
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->i:Lcom/autonavi/amap/mapcore/GLMapResManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/GLMapResManager;->setIconsData(Z)V

    .line 1063
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->i:Lcom/autonavi/amap/mapcore/GLMapResManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/GLMapResManager;->setTrafficTexture(Z)V

    .line 1064
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->i:Lcom/autonavi/amap/mapcore/GLMapResManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/GLMapResManager;->setOtherMapTexture(Z)V

    .line 1065
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->i:Lcom/autonavi/amap/mapcore/GLMapResManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/GLMapResManager;->setRoadGuideTexture(Z)V

    .line 1067
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->i:Lcom/autonavi/amap/mapcore/GLMapResManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/GLMapResManager;->setBkTexture(Z)V

    .line 1068
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aT:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1070
    :catch_0
    move-exception v0

    .line 1071
    :try_start_1
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "setInternaltexture"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    const-string v1, "amapv3.1"

    const-string v2, "mapInitError"

    const/16 v3, 0x70

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1074
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1058
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ag()Lcom/amap/api/maps/model/LatLng;
    .locals 7

    .prologue
    .line 2305
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aB:Z

    if-eqz v0, :cond_0

    .line 2306
    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 2307
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 2308
    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 2309
    iget v2, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v2, v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 2310
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 2313
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private ah()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2351
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->be:Z

    if-eqz v0, :cond_0

    .line 2352
    iput-boolean v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->be:Z

    .line 2353
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ba:Z

    if-eqz v0, :cond_1

    .line 2354
    iput-boolean v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ba:Z

    .line 2356
    invoke-static {}, Lcom/amap/api/mapcore/o;->a()Lcom/amap/api/mapcore/o;

    move-result-object v0

    .line 2357
    iput-boolean v3, v0, Lcom/amap/api/mapcore/o;->p:Z

    .line 2358
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->e:Lcom/amap/api/mapcore/au;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/au;->a(Lcom/amap/api/mapcore/o;)V

    .line 2360
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aV:Z

    if-eqz v0, :cond_2

    .line 2361
    iput-boolean v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aV:Z

    .line 2363
    invoke-static {}, Lcom/amap/api/mapcore/o;->a()Lcom/amap/api/mapcore/o;

    move-result-object v0

    .line 2364
    iput-boolean v3, v0, Lcom/amap/api/mapcore/o;->p:Z

    .line 2365
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->e:Lcom/amap/api/mapcore/au;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/au;->a(Lcom/amap/api/mapcore/o;)V

    .line 2367
    :cond_2
    iput-boolean v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aW:Z

    .line 2368
    iput-boolean v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aX:Z

    .line 2369
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->R:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aY:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_3

    .line 2370
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->R:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aY:Lcom/amap/api/maps/model/Marker;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$OnMarkerDragListener;->onMarkerDragEnd(Lcom/amap/api/maps/model/Marker;)V

    .line 2371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aY:Lcom/amap/api/maps/model/Marker;

    .line 2373
    :cond_3
    return-void
.end method

.method private ai()V
    .locals 2

    .prologue
    .line 4386
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->x:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    sget-object v1, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;->SATELLITE:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->w:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    sget-object v1, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;->NIGHT:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    if-eq v0, v1, :cond_0

    .line 4388
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->J:Lcom/amap/api/mapcore/bq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bq;->a(Z)V

    .line 4392
    :goto_0
    return-void

    .line 4390
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->J:Lcom/amap/api/mapcore/bq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bq;->a(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/AMapDelegateImp;I)I
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->am:I

    return p1
.end method

.method static synthetic b(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->au:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2376
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aX:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aY:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 2377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2378
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, 0x42700000    # 60.0f

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 2379
    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aZ:Lcom/amap/api/mapcore/ag;

    invoke-interface {v2}, Lcom/amap/api/mapcore/ag;->g()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    .line 2380
    iget-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aZ:Lcom/amap/api/mapcore/ag;

    invoke-interface {v3}, Lcom/amap/api/mapcore/ag;->e()Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    .line 2381
    new-instance v4, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v4}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 2382
    invoke-virtual {p0, v0, v1, v4}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 2383
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v8, v4, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    add-double/2addr v6, v8

    iget-wide v8, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v6, v8

    iget-wide v8, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, v4, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    add-double/2addr v4, v8

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double v2, v4, v2

    invoke-direct {v0, v6, v7, v2, v3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 2386
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aY:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 2387
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->R:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aY:Lcom/amap/api/maps/model/Marker;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$OnMarkerDragListener;->onMarkerDrag(Lcom/amap/api/maps/model/Marker;)V

    .line 2389
    :cond_0
    return-void
.end method

.method private b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4141
    invoke-direct {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->ad()V

    .line 4142
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapCore;->setGL(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 4144
    invoke-direct {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->af()V

    .line 4145
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapCore;->surfaceCreate(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 4147
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4148
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    const-string v1, "lineTexture.png"

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->p:Landroid/graphics/Bitmap;

    .line 4150
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4151
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    const-string v1, "lineDashTexture.png"

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->q:Landroid/graphics/Bitmap;

    .line 4157
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->p:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/bk;->a(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->n:I

    .line 4158
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->q:Landroid/graphics/Bitmap;

    invoke-static {p1, v0, v2}, Lcom/amap/api/mapcore/util/bk;->a(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;Z)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->o:I

    .line 4160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->p:Landroid/graphics/Bitmap;

    .line 4162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    .line 4163
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aD:Z

    if-nez v0, :cond_4

    .line 4165
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bf:Ljava/lang/Thread;

    const-string v1, "AuthThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 4166
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bf:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aD:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4172
    :cond_4
    :goto_0
    return-void

    .line 4168
    :catch_0
    move-exception v0

    .line 4169
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aQ:Z

    return p1
.end method

.method static synthetic c(Lcom/amap/api/mapcore/AMapDelegateImp;I)I
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->an:I

    return p1
.end method

.method static synthetic c(Lcom/amap/api/mapcore/AMapDelegateImp;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bn:Ljava/lang/Runnable;

    return-object v0
.end method

.method private c(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 4300
    iput-boolean v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aB:Z

    .line 4302
    iput-boolean v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aC:Z

    .line 4304
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    if-eqz v0, :cond_0

    .line 4305
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 4306
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 4307
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->a:F

    .line 4308
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->c:F

    .line 4309
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->b:F

    .line 4310
    iget v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iput v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->r:I

    .line 4311
    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iput v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->s:I

    .line 4315
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->ae()V

    .line 4316
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aI:Ljava/lang/Boolean;

    .line 4318
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    if-eqz v0, :cond_1

    .line 4320
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4324
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, v3}, Lcom/autonavi/amap/mapcore/MapCore;->setMapCallback(Lcom/autonavi/amap/mapcore/IMapCallback;)V

    .line 4325
    iput-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    .line 4327
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    if-eqz v0, :cond_2

    .line 4328
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->recycle()V

    .line 4329
    iput-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 4332
    :cond_2
    invoke-static {}, Lcom/autonavi/amap/mapcore/VMapDataCache;->getInstance()Lcom/autonavi/amap/mapcore/VMapDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/VMapDataCache;->reset()V

    .line 4334
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->e:Lcom/amap/api/mapcore/au;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/au;->a()V

    .line 4336
    new-instance v0, Lcom/amap/api/mapcore/au;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/au;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->e:Lcom/amap/api/mapcore/au;

    .line 4339
    new-instance v0, Lcom/autonavi/amap/mapcore/MapCore;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/autonavi/amap/mapcore/MapCore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    .line 4341
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->C:Lcom/amap/api/mapcore/a;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapCallback(Lcom/autonavi/amap/mapcore/IMapCallback;)V

    .line 4343
    new-instance v0, Lcom/autonavi/amap/mapcore/GLMapResManager;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/autonavi/amap/mapcore/GLMapResManager;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->i:Lcom/autonavi/amap/mapcore/GLMapResManager;

    .line 4345
    new-instance v0, Lcom/amap/api/mapcore/bh;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/bh;-><init>(Lcom/amap/api/mapcore/aa;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ae:Lcom/amap/api/mapcore/al;

    .line 4347
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aB:Z

    if-nez v0, :cond_3

    .line 4348
    invoke-direct {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->ab()V

    .line 4351
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->C:Lcom/amap/api/mapcore/a;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/a;->onResume(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 4353
    iput-boolean v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aT:Z

    .line 4356
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/AMapDelegateImp;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 4357
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ah:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ah:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 4360
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aI:Ljava/lang/Boolean;

    .line 4362
    return-void

    .line 4321
    :catch_0
    move-exception v0

    .line 4322
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aW:Z

    return p1
.end method

.method static synthetic d(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/autonavi/amap/mapcore/MapCore;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ba:Z

    return p1
.end method

.method static synthetic e(Lcom/amap/api/mapcore/AMapDelegateImp;)Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aQ:Z

    return v0
.end method

.method static synthetic e(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bc:Z

    return p1
.end method

.method static synthetic f(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->x:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    return-object v0
.end method

.method static synthetic f(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aK:Z

    return p1
.end method

.method static synthetic g(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->w:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    return-object v0
.end method

.method static synthetic g(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aX:Z

    return p1
.end method

.method static synthetic h(Lcom/amap/api/mapcore/AMapDelegateImp;)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->ai()V

    return-void
.end method

.method static synthetic h(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->be:Z

    return p1
.end method

.method static synthetic i(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->y:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    return-object v0
.end method

.method static synthetic i(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bb:Z

    return p1
.end method

.method static synthetic j(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/aq;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->N:Lcom/amap/api/mapcore/aq;

    return-object v0
.end method

.method static synthetic j(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aV:Z

    return p1
.end method

.method static synthetic k(Lcom/amap/api/mapcore/AMapDelegateImp;)Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aV:Z

    return v0
.end method

.method static synthetic k(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aG:Z

    return p1
.end method

.method static synthetic l(Lcom/amap/api/mapcore/AMapDelegateImp;)Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aW:Z

    return v0
.end method

.method static synthetic l(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aH:Z

    return p1
.end method

.method static synthetic m(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/ap;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->af:Lcom/amap/api/mapcore/ap;

    return-object v0
.end method

.method static synthetic n(Lcom/amap/api/mapcore/AMapDelegateImp;)I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bd:I

    return v0
.end method

.method static synthetic o(Lcom/amap/api/mapcore/AMapDelegateImp;)Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bj:Z

    return v0
.end method

.method static synthetic p(Lcom/amap/api/mapcore/AMapDelegateImp;)I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bk:I

    return v0
.end method

.method static synthetic q(Lcom/amap/api/mapcore/AMapDelegateImp;)I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bl:I

    return v0
.end method

.method static synthetic r(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/autonavi/amap/mapcore/MapProjection;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    return-object v0
.end method

.method static synthetic s(Lcom/amap/api/mapcore/AMapDelegateImp;)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->ah()V

    return-void
.end method

.method static synthetic t(Lcom/amap/api/mapcore/AMapDelegateImp;)Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bc:Z

    return v0
.end method

.method static synthetic u(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/util/c;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aj:Lcom/amap/api/mapcore/util/c;

    return-object v0
.end method

.method static synthetic v(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/view/View;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ab:Landroid/view/View;

    return-object v0
.end method

.method static synthetic w(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/ag;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ac:Lcom/amap/api/mapcore/ag;

    return-object v0
.end method

.method static synthetic x(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/bg;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ad:Lcom/amap/api/mapcore/bg;

    return-object v0
.end method

.method static synthetic y(Lcom/amap/api/mapcore/AMapDelegateImp;)I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->am:I

    return v0
.end method

.method static synthetic z(Lcom/amap/api/mapcore/AMapDelegateImp;)I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->an:I

    return v0
.end method


# virtual methods
.method public A()Lcom/amap/api/mapcore/al;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2105
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ae:Lcom/amap/api/mapcore/al;

    return-object v0
.end method

.method public B()Lcom/amap/api/maps/AMap$OnCameraChangeListener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->T:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    return-object v0
.end method

.method public C()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->I:Lcom/amap/api/mapcore/ay;

    return-object v0
.end method

.method public D()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2832
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ab:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2833
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ab:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 2834
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->I:Lcom/amap/api/mapcore/ay;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ab:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/ay;->removeView(Landroid/view/View;)V

    .line 2835
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ab:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2836
    invoke-static {v0}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/graphics/drawable/Drawable;)V

    .line 2837
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aq:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/graphics/drawable/Drawable;)V

    .line 2838
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ad:Lcom/amap/api/mapcore/bg;

    if-eqz v0, :cond_0

    .line 2839
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ad:Lcom/amap/api/mapcore/bg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bg;->c(Z)V

    .line 2841
    :cond_0
    iput-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ab:Landroid/view/View;

    .line 2843
    :cond_1
    iput-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ac:Lcom/amap/api/mapcore/ag;

    .line 2844
    return-void
.end method

.method public E()F
    .locals 1

    .prologue
    .line 3226
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v0

    return v0
.end method

.method F()V
    .locals 2

    .prologue
    .line 3285
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3286
    return-void
.end method

.method public G()Lcom/amap/api/maps/model/LatLngBounds;
    .locals 1

    .prologue
    .line 3290
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bg:Lcom/amap/api/maps/model/LatLngBounds;

    return-object v0
.end method

.method H()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3564
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bh:Z

    if-nez v0, :cond_1

    .line 3565
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->j:Lcom/amap/api/mapcore/ad;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/ad;->setBackgroundColor(I)V

    .line 3566
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->J:Lcom/amap/api/mapcore/bq;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bq;->setBackgroundColor(I)V

    .line 3567
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->M:Lcom/amap/api/mapcore/bi;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bi;->setBackgroundColor(I)V

    .line 3568
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->I:Lcom/amap/api/mapcore/ay;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/ay;->setBackgroundColor(I)V

    .line 3569
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->g:Lcom/amap/api/mapcore/bn;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bn;->setBackgroundColor(I)V

    .line 3570
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->f:Lcom/amap/api/mapcore/br;

    if-eqz v0, :cond_0

    .line 3571
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->f:Lcom/amap/api/mapcore/br;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/br;->setBackgroundColor(I)V

    .line 3573
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/av;->setBackgroundColor(I)V

    .line 3574
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->K:Lcom/amap/api/mapcore/ar;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/ar;->setBackgroundColor(I)V

    .line 3575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bh:Z

    .line 3578
    :cond_1
    return-void
.end method

.method public I()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 3581
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->J:Lcom/amap/api/mapcore/bq;

    if-nez v0, :cond_0

    .line 3582
    const/4 v0, 0x0

    .line 3584
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->J:Lcom/amap/api/mapcore/bq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/bq;->c()Landroid/graphics/Point;

    move-result-object v0

    goto :goto_0
.end method

.method public J()F
    .locals 10

    .prologue
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 3675
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->q()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    iget-object v1, v0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    .line 3676
    iget v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->a:F

    .line 3677
    iget-boolean v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aB:Z

    if-eqz v2, :cond_0

    .line 3678
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v0

    .line 3680
    :cond_0
    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    mul-double/2addr v2, v8

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    mul-double/2addr v2, v8

    const-wide v4, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    float-to-double v0, v0

    .line 3681
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    mul-double/2addr v0, v4

    div-double v0, v2, v0

    double-to-float v0, v0

    .line 3686
    :goto_0
    return v0

    .line 3682
    :catch_0
    move-exception v0

    .line 3683
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "getScalePerPixel"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 3685
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3686
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public K()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3727
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3728
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3729
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3730
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 3731
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3733
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public L()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3738
    invoke-virtual {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->m()I

    move-result v0

    if-lez v0, :cond_0

    .line 3739
    invoke-virtual {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->n()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "\u5730\u56fe\u672a\u521d\u59cb\u5316\u5b8c\u6210\uff01"

    .line 3738
    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/au;->a(ZLjava/lang/Object;)V

    .line 3740
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/av;->f()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3739
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public M()V
    .locals 1

    .prologue
    .line 3745
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->h:Lcom/amap/api/mapcore/v;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/v;->b()V

    .line 3746
    return-void
.end method

.method public N()V
    .locals 1

    .prologue
    .line 3755
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bi:Z

    .line 3756
    return-void
.end method

.method public O()Z
    .locals 1

    .prologue
    .line 3760
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bi:Z

    return v0
.end method

.method public P()V
    .locals 1

    .prologue
    .line 3765
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    if-eqz v0, :cond_0

    .line 3766
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/av;->g()V

    .line 3768
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bi:Z

    .line 3769
    return-void
.end method

.method public Q()I
    .locals 1

    .prologue
    .line 3793
    iget v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ap:I

    return v0
.end method

.method public R()Z
    .locals 1

    .prologue
    .line 3798
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aC:Z

    return v0
.end method

.method public S()Lcom/amap/api/mapcore/n;
    .locals 1

    .prologue
    .line 3836
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    return-object v0
.end method

.method public T()V
    .locals 1

    .prologue
    .line 3853
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V

    .line 3854
    return-void
.end method

.method public U()V
    .locals 1

    .prologue
    .line 3937
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->h:Lcom/amap/api/mapcore/v;

    if-eqz v0, :cond_0

    .line 3938
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->h:Lcom/amap/api/mapcore/v;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/v;->c()V

    .line 3940
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    if-eqz v0, :cond_1

    .line 3941
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/av;->b()V

    .line 3943
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->m:Lcom/amap/api/maps/CustomRenderer;

    if-eqz v0, :cond_2

    .line 3944
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->m:Lcom/amap/api/maps/CustomRenderer;

    invoke-interface {v0}, Lcom/amap/api/maps/CustomRenderer;->OnMapReferencechanged()V

    .line 3946
    :cond_2
    return-void
.end method

.method public V()Landroid/content/Context;
    .locals 1

    .prologue
    .line 4125
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    return-object v0
.end method

.method public W()V
    .locals 1

    .prologue
    .line 4369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bp:Z

    .line 4370
    return-void
.end method

.method public X()Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;
    .locals 1

    .prologue
    .line 4373
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->w:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    return-object v0
.end method

.method public Y()Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;
    .locals 1

    .prologue
    .line 4377
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->x:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    return-object v0
.end method

.method public Z()Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;
    .locals 1

    .prologue
    .line 4381
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->y:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    return-object v0
.end method

.method public a(Lcom/amap/api/maps/model/ArcOptions;)Lcom/amap/api/mapcore/ab;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1646
    if-nez p1, :cond_0

    .line 1647
    const/4 v0, 0x0

    .line 1660
    :goto_0
    return-object v0

    .line 1650
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore/m;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/m;-><init>(Lcom/amap/api/mapcore/aa;)V

    .line 1651
    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/m;->a(I)V

    .line 1652
    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getStart()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/m;->a(Lcom/amap/api/maps/model/LatLng;)V

    .line 1653
    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getPassed()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/m;->b(Lcom/amap/api/maps/model/LatLng;)V

    .line 1654
    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getEnd()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/m;->c(Lcom/amap/api/maps/model/LatLng;)V

    .line 1655
    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/m;->a(Z)V

    .line 1656
    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/m;->b(F)V

    .line 1657
    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/m;->a(F)V

    .line 1658
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->h:Lcom/amap/api/mapcore/v;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/v;->a(Lcom/amap/api/mapcore/ai;)V

    .line 1659
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/mapcore/ac;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1628
    if-nez p1, :cond_0

    .line 1629
    const/4 v0, 0x0

    .line 1641
    :goto_0
    return-object v0

    .line 1631
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore/p;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/p;-><init>(Lcom/amap/api/mapcore/aa;)V

    .line 1632
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/p;->b(I)V

    .line 1633
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/p;->a(Lcom/amap/api/maps/model/LatLng;)V

    .line 1634
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/p;->a(Z)V

    .line 1635
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/p;->b(F)V

    .line 1636
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/p;->a(F)V

    .line 1637
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/p;->a(I)V

    .line 1638
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getRadius()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/mapcore/p;->a(D)V

    .line 1639
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->h:Lcom/amap/api/mapcore/v;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/v;->a(Lcom/amap/api/mapcore/ai;)V

    .line 1640
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps/model/GroundOverlayOptions;)Lcom/amap/api/mapcore/ae;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1666
    if-nez p1, :cond_0

    .line 1667
    const/4 v0, 0x0

    .line 1684
    :goto_0
    return-object v0

    .line 1669
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore/z;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/z;-><init>(Lcom/amap/api/mapcore/aa;)V

    .line 1671
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getAnchorU()F

    move-result v1

    .line 1672
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getAnchorV()F

    move-result v2

    .line 1671
    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/z;->b(FF)V

    .line 1673
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getWidth()F

    move-result v1

    .line 1674
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getHeight()F

    move-result v2

    .line 1673
    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/z;->a(FF)V

    .line 1675
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getImage()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/z;->a(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    .line 1676
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getLocation()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/z;->a(Lcom/amap/api/maps/model/LatLng;)V

    .line 1677
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getBounds()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/z;->a(Lcom/amap/api/maps/model/LatLngBounds;)V

    .line 1678
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/z;->c(F)V

    .line 1679
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getTransparency()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/z;->d(F)V

    .line 1680
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/z;->a(Z)V

    .line 1681
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/z;->a(F)V

    .line 1682
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->h:Lcom/amap/api/mapcore/v;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/v;->a(Lcom/amap/api/mapcore/ai;)V

    .line 1683
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps/model/NavigateArrowOptions;)Lcom/amap/api/mapcore/ah;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1590
    if-nez p1, :cond_0

    .line 1591
    const/4 v0, 0x0

    .line 1604
    :goto_0
    return-object v0

    .line 1594
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore/bb;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/bb;-><init>(Lcom/amap/api/mapcore/aa;)V

    .line 1596
    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getTopColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bb;->a(I)V

    .line 1598
    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bb;->a(Ljava/util/List;)V

    .line 1599
    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bb;->a(Z)V

    .line 1600
    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bb;->b(F)V

    .line 1601
    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bb;->a(F)V

    .line 1602
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->h:Lcom/amap/api/mapcore/v;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/v;->a(Lcom/amap/api/mapcore/ai;)V

    .line 1603
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps/model/PolygonOptions;)Lcom/amap/api/mapcore/aj;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1610
    if-nez p1, :cond_0

    .line 1611
    const/4 v0, 0x0

    .line 1622
    :goto_0
    return-object v0

    .line 1613
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore/be;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/be;-><init>(Lcom/amap/api/mapcore/aa;)V

    .line 1614
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/be;->a(I)V

    .line 1615
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/be;->a(Ljava/util/List;)V

    .line 1616
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/be;->a(Z)V

    .line 1617
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/be;->b(F)V

    .line 1618
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/be;->a(F)V

    .line 1619
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/be;->b(I)V

    .line 1620
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->h:Lcom/amap/api/mapcore/v;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/v;->a(Lcom/amap/api/mapcore/ai;)V

    .line 1621
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/mapcore/ak;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1556
    if-nez p1, :cond_0

    .line 1557
    const/4 v0, 0x0

    .line 1584
    :goto_0
    return-object v0

    .line 1560
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore/bf;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->h:Lcom/amap/api/mapcore/v;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/bf;-><init>(Lcom/amap/api/mapcore/v;)V

    .line 1561
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bf;->a(I)V

    .line 1562
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isGeodesic()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bf;->b(Z)V

    .line 1563
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isDottedLine()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bf;->c(Z)V

    .line 1564
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bf;->a(Ljava/util/List;)V

    .line 1565
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bf;->a(Z)V

    .line 1566
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bf;->b(F)V

    .line 1567
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bf;->a(F)V

    .line 1568
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isUseTexture()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bf;->d(Z)V

    .line 1570
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getColorValues()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1571
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getColorValues()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bf;->e(Ljava/util/List;)V

    .line 1572
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isUseGradient()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bf;->e(Z)V

    .line 1575
    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTexture()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1576
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTexture()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bf;->a(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    .line 1578
    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTextureList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1579
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTextureList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bf;->c(Ljava/util/List;)V

    .line 1580
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustemTextureIndex()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bf;->d(Ljava/util/List;)V

    .line 1582
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->h:Lcom/amap/api/mapcore/v;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/v;->a(Lcom/amap/api/mapcore/ai;)V

    .line 1583
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/model/LatLngBounds;
    .locals 10

    .prologue
    .line 3295
    invoke-virtual {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->m()I

    move-result v0

    .line 3296
    invoke-virtual {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->n()I

    move-result v7

    .line 3297
    if-lez v0, :cond_0

    if-gtz v7, :cond_1

    .line 3298
    :cond_0
    const/4 v0, 0x0

    .line 3315
    :goto_0
    return-object v0

    .line 3300
    :cond_1
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 3301
    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 3302
    new-instance v9, Lcom/autonavi/amap/mapcore/MapProjection;

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-direct {v9, v2}, Lcom/autonavi/amap/mapcore/MapProjection;-><init>(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 3303
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setCameraHeaderAngle(F)V

    .line 3304
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 3305
    iget v2, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v9, v2, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 3306
    invoke-virtual {v9, p2}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 3307
    invoke-virtual {v9}, Lcom/autonavi/amap/mapcore/MapProjection;->recalculate()V

    .line 3308
    new-instance v8, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v8}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 3309
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v9, v1, v2, v8}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/autonavi/amap/mapcore/MapProjection;IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 3310
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v8, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v8, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 3311
    invoke-direct {p0, v9, v0, v7, v8}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/autonavi/amap/mapcore/MapProjection;IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 3312
    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v8, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v8, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 3313
    invoke-virtual {v9}, Lcom/autonavi/amap/mapcore/MapProjection;->recycle()V

    .line 3314
    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    .line 3315
    invoke-virtual {v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1689
    if-nez p1, :cond_0

    .line 1690
    const/4 v0, 0x0

    .line 1696
    :goto_0
    return-object v0

    .line 1692
    :cond_0
    new-instance v1, Lcom/amap/api/mapcore/az;

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    invoke-direct {v1, p1, v0}, Lcom/amap/api/mapcore/az;-><init>(Lcom/amap/api/maps/model/MarkerOptions;Lcom/amap/api/mapcore/av;)V

    .line 1694
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/av;->a(Lcom/amap/api/mapcore/ag;)V

    .line 1695
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    .line 1696
    new-instance v0, Lcom/amap/api/maps/model/Marker;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/amap/api/mapcore/ag;)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps/model/TextOptions;)Lcom/amap/api/maps/model/Text;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1701
    if-nez p1, :cond_0

    .line 1702
    const/4 v0, 0x0

    .line 1708
    :goto_0
    return-object v0

    .line 1704
    :cond_0
    new-instance v1, Lcom/amap/api/mapcore/bk;

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    invoke-direct {v1, p1, v0}, Lcom/amap/api/mapcore/bk;-><init>(Lcom/amap/api/maps/model/TextOptions;Lcom/amap/api/mapcore/av;)V

    .line 1706
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/av;->a(Lcom/amap/api/mapcore/ag;)V

    .line 1707
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    .line 1708
    new-instance v0, Lcom/amap/api/maps/model/Text;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Text;-><init>(Lcom/amap/api/mapcore/an;)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps/model/TileOverlayOptions;)Lcom/amap/api/maps/model/TileOverlay;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1784
    if-eqz p1, :cond_0

    .line 1785
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getTileProvider()Lcom/amap/api/maps/model/TileProvider;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1786
    :cond_0
    const/4 v0, 0x0

    .line 1792
    :goto_0
    return-object v0

    .line 1788
    :cond_1
    new-instance v1, Lcom/amap/api/mapcore/bm;

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->g:Lcom/amap/api/mapcore/bn;

    invoke-direct {v1, p1, v0}, Lcom/amap/api/mapcore/bm;-><init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/mapcore/bn;)V

    .line 1790
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->g:Lcom/amap/api/mapcore/bn;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bn;->a(Lcom/amap/api/mapcore/ao;)V

    .line 1791
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    .line 1792
    new-instance v0, Lcom/amap/api/maps/model/TileOverlay;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/TileOverlay;-><init>(Lcom/amap/api/mapcore/ao;)V

    goto :goto_0
.end method

.method public a()Lcom/autonavi/amap/mapcore/MapCore;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    return-object v0
.end method

.method public a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/MarkerOptions;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1714
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1715
    :cond_0
    const/4 v0, 0x0

    .line 1764
    :goto_0
    return-object v0

    .line 1716
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1719
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/MarkerOptions;

    if-eqz v0, :cond_3

    .line 1720
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1721
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1723
    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    const/high16 v1, 0x41900000    # 18.0f

    .line 1722
    invoke-static {v0, v1}, Lcom/amap/api/mapcore/o;->a(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/mapcore/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/o;)V

    :cond_2
    :goto_1
    move-object v0, v2

    .line 1759
    goto :goto_0

    .line 1726
    :cond_3
    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v4

    move v3, v1

    .line 1728
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 1729
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/MarkerOptions;

    .line 1730
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1731
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1732
    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1733
    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    .line 1734
    add-int/lit8 v0, v1, 0x1

    .line 1728
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_2

    .line 1738
    :cond_4
    if-eqz p2, :cond_2

    if-lez v1, :cond_2

    .line 1739
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aC:Z

    if-eqz v0, :cond_5

    .line 1740
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/mapcore/AMapDelegateImp$11;

    invoke-direct {v1, p0, v4}, Lcom/amap/api/mapcore/AMapDelegateImp$11;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/maps/model/LatLngBounds$Builder;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1760
    :catch_0
    move-exception v0

    .line 1761
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v3, "addMarkers"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v2

    .line 1764
    goto/16 :goto_0

    .line 1755
    :cond_5
    :try_start_1
    invoke-virtual {v4}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/o;->a(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/amap/api/mapcore/o;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aw:Lcom/amap/api/mapcore/o;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method public a(DDLcom/autonavi/amap/mapcore/FPoint;)V
    .locals 3

    .prologue
    .line 2250
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aB:Z

    if-eqz v0, :cond_0

    .line 2251
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 2252
    invoke-static {p3, p4, p1, p2, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 2253
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v1, v2, v0, p5}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 2255
    :cond_0
    return-void
.end method

.method public a(DDLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 1

    .prologue
    .line 2259
    invoke-static {p3, p4, p1, p2, p5}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 2260
    return-void
.end method

.method public a(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 564
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/ba;->a(F)V

    .line 567
    :cond_0
    return-void
.end method

.method public a(FFLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 1

    .prologue
    .line 2278
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aB:Z

    if-eqz v0, :cond_0

    .line 2279
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 2281
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/ba;->a(I)V

    .line 560
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 3773
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->C:Lcom/amap/api/mapcore/a;

    if-eqz v0, :cond_0

    .line 3774
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bj:Z

    .line 3775
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->C:Lcom/amap/api/mapcore/a;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore/a;->a(II)V

    .line 3776
    iput p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bk:I

    .line 3777
    iput p2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bl:I

    .line 3779
    :cond_0
    return-void
.end method

.method public a(IIII)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1020
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aB:Z

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v1, 0x899

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 1025
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v1, 0x89a

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 1032
    :cond_0
    return-void
.end method

.method public a(IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 1

    .prologue
    .line 2218
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/autonavi/amap/mapcore/MapProjection;IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 2219
    return-void
.end method

.method public a(IILcom/autonavi/amap/mapcore/FPoint;)V
    .locals 1

    .prologue
    .line 2264
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aB:Z

    if-eqz v0, :cond_0

    .line 2265
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 2267
    :cond_0
    return-void
.end method

.method public a(IILcom/autonavi/amap/mapcore/IPoint;)V
    .locals 3

    .prologue
    .line 2233
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aB:Z

    if-eqz v0, :cond_0

    .line 2234
    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 2235
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v1, p1, p2, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 2236
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v1, v2, v0, p3}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 2238
    :cond_0
    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 576
    if-nez p1, :cond_0

    .line 612
    :goto_0
    return-void

    .line 579
    :cond_0
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 580
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 582
    :try_start_0
    iget-boolean v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aA:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ag:Lcom/amap/api/maps/LocationSource;

    if-nez v1, :cond_5

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/ba;->c()V

    .line 584
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 594
    :catch_0
    move-exception v0

    .line 595
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "showMyLocationOverlay"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 599
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/ba;->a(Landroid/location/Location;)V

    .line 601
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->O:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    if-eqz v0, :cond_4

    .line 602
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ar:Landroid/location/Location;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ar:Landroid/location/Location;

    .line 603
    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ar:Landroid/location/Location;

    .line 604
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ar:Landroid/location/Location;

    .line 605
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ar:Landroid/location/Location;

    .line 606
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4

    .line 607
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->O:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    invoke-interface {v0, p1}, Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;->onMyLocationChange(Landroid/location/Location;)V

    .line 610
    :cond_4
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ar:Landroid/location/Location;

    .line 611
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    goto :goto_0

    .line 587
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ar:Landroid/location/Location;

    if-nez v1, :cond_2

    .line 588
    :cond_6
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;

    if-nez v1, :cond_7

    .line 589
    new-instance v1, Lcom/amap/api/mapcore/ba;

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/amap/api/mapcore/ba;-><init>(Lcom/amap/api/mapcore/aa;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;

    .line 591
    :cond_7
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 592
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v1

    .line 591
    invoke-static {v0, v1}, Lcom/amap/api/mapcore/o;->a(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/mapcore/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/o;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public a(Lcom/amap/api/mapcore/ag;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x2

    const/high16 v5, -0x1000000

    const/4 v7, 0x1

    .line 2692
    .line 2693
    if-nez p1, :cond_1

    .line 2807
    :cond_0
    :goto_0
    return-void

    .line 2696
    :cond_1
    invoke-interface {p1}, Lcom/amap/api/mapcore/ag;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/amap/api/mapcore/ag;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2699
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->Z:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-eqz v0, :cond_0

    .line 2700
    invoke-virtual {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->D()V

    .line 2701
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ac:Lcom/amap/api/mapcore/ag;

    .line 2702
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aC:Z

    if-nez v0, :cond_3

    .line 2703
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->au:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/mapcore/AMapDelegateImp$2;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/AMapDelegateImp$2;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2719
    :cond_3
    new-instance v1, Lcom/amap/api/maps/model/Marker;

    invoke-direct {v1, p1}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/amap/api/mapcore/ag;)V

    .line 2720
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->Z:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$InfoWindowAdapter;->getInfoWindow(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ab:Landroid/view/View;

    .line 2723
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aq:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 2724
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    const-string v3, "infowindow_bg.9.png"

    .line 2725
    invoke-static {v0, v3}, Lcom/amap/api/mapcore/bc;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aq:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2735
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ab:Landroid/view/View;

    if-nez v0, :cond_5

    .line 2736
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->Z:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$InfoWindowAdapter;->getInfoContents(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ab:Landroid/view/View;

    .line 2738
    :cond_5
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2739
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ab:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 2740
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ab:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_6

    .line 2741
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ab:Landroid/view/View;

    iget-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aq:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2743
    :cond_6
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ab:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2759
    :goto_2
    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ab:Landroid/view/View;

    .line 2760
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ab:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2761
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ab:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2762
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ab:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 2763
    invoke-interface {p1}, Lcom/amap/api/mapcore/ag;->d()Landroid/graphics/Rect;

    .line 2764
    invoke-interface {p1}, Lcom/amap/api/mapcore/ag;->D()I

    move-result v1

    .line 2765
    invoke-interface {p1}, Lcom/amap/api/mapcore/ag;->B()I

    move-result v3

    add-int v4, v1, v3

    .line 2766
    invoke-interface {p1}, Lcom/amap/api/mapcore/ag;->E()I

    move-result v1

    .line 2767
    invoke-interface {p1}, Lcom/amap/api/mapcore/ag;->C()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v5, v1, 0x2

    .line 2770
    if-eqz v0, :cond_9

    .line 2771
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2772
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2774
    :goto_3
    new-instance v0, Lcom/amap/api/mapcore/ay$a;

    .line 2775
    invoke-interface {p1}, Lcom/amap/api/mapcore/ag;->f()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v3

    const/16 v6, 0x51

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/ay$a;-><init>(IILcom/autonavi/amap/mapcore/FPoint;III)V

    .line 2778
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ad:Lcom/amap/api/mapcore/bg;

    if-nez v1, :cond_8

    .line 2779
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ab:Landroid/view/View;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2781
    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    .line 2782
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2783
    new-instance v1, Lcom/amap/api/mapcore/AMapDelegateImp$3;

    new-instance v3, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    .line 2785
    invoke-virtual {v3, v2}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    invoke-direct {v1, p0, v2, p0}, Lcom/amap/api/mapcore/AMapDelegateImp$3;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/maps/model/MarkerOptions;Lcom/amap/api/mapcore/aa;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ad:Lcom/amap/api/mapcore/bg;

    .line 2793
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ad:Lcom/amap/api/mapcore/bg;

    invoke-interface {p1}, Lcom/amap/api/mapcore/ag;->f()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/bg;->a(Lcom/autonavi/amap/mapcore/FPoint;)V

    .line 2794
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ad:Lcom/amap/api/mapcore/bg;

    invoke-virtual {v1, v4, v5}, Lcom/amap/api/mapcore/bg;->b(II)V

    .line 2804
    :goto_4
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->I:Lcom/amap/api/mapcore/ay;

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ab:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/amap/api/mapcore/ay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2805
    invoke-interface {p1, v7}, Lcom/amap/api/mapcore/ag;->b(Z)V

    goto/16 :goto_0

    .line 2728
    :catch_0
    move-exception v0

    .line 2729
    const-string v3, "AMapDelegateImpGLSurfaceView"

    const-string v4, "showInfoWindow decodeDrawableFromAsset"

    invoke-static {v0, v3, v4}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2732
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 2746
    :cond_7
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aq:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2747
    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2748
    invoke-interface {p1}, Lcom/amap/api/mapcore/ag;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2749
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2750
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2751
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2752
    invoke-interface {p1}, Lcom/amap/api/mapcore/ag;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2753
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2754
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2755
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 2796
    :cond_8
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ad:Lcom/amap/api/mapcore/bg;

    invoke-interface {p1}, Lcom/amap/api/mapcore/ag;->f()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/bg;->a(Lcom/autonavi/amap/mapcore/FPoint;)V

    .line 2797
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ad:Lcom/amap/api/mapcore/bg;

    invoke-virtual {v1, v4, v5}, Lcom/amap/api/mapcore/bg;->b(II)V

    .line 2798
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ab:Landroid/view/View;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2800
    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    .line 2801
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2802
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ad:Lcom/amap/api/mapcore/bg;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/bg;->a(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    goto :goto_4

    :cond_9
    move v1, v2

    goto/16 :goto_3
.end method

.method public a(Lcom/amap/api/mapcore/o;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1184
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aO:Z

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->e:Lcom/amap/api/mapcore/au;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/au;->f()V

    .line 1187
    :cond_0
    iget-object v0, p1, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    sget-object v2, Lcom/amap/api/mapcore/o$a;->m:Lcom/amap/api/mapcore/o$a;

    if-ne v0, v2, :cond_1

    .line 1188
    invoke-virtual {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->m()I

    move-result v0

    if-lez v0, :cond_2

    .line 1189
    invoke-virtual {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->n()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    const-string v2, "the map must have a size"

    .line 1188
    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/au;->a(ZLjava/lang/Object;)V

    .line 1191
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->t()V

    .line 1192
    iput-boolean v1, p1, Lcom/amap/api/mapcore/o;->p:Z

    .line 1193
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bj:Z

    iput-boolean v0, p1, Lcom/amap/api/mapcore/o;->n:Z

    .line 1194
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->e:Lcom/amap/api/mapcore/au;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/au;->a(Lcom/amap/api/mapcore/o;)V

    .line 1195
    return-void

    .line 1189
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/o;JLcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1217
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    sget-object v3, Lcom/amap/api/mapcore/o$a;->m:Lcom/amap/api/mapcore/o$a;

    if-ne v2, v3, :cond_0

    .line 1218
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->m()I

    move-result v2

    if-lez v2, :cond_3

    .line 1219
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->n()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    const-string v3, "the map must have a size"

    .line 1218
    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/au;->a(ZLjava/lang/Object;)V

    .line 1221
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/n;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/n;->a(Z)V

    .line 1223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->ao:Lcom/amap/api/maps/AMap$CancelableCallback;

    if-eqz v2, :cond_1

    .line 1224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->ao:Lcom/amap/api/maps/AMap$CancelableCallback;

    invoke-interface {v2}, Lcom/amap/api/maps/AMap$CancelableCallback;->onCancel()V

    .line 1226
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->bj:Z

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/n;->b(Z)V

    .line 1227
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amap/api/mapcore/AMapDelegateImp;->ao:Lcom/amap/api/maps/AMap$CancelableCallback;

    .line 1228
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->aG:Z

    if-eqz v2, :cond_2

    .line 1229
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->aH:Z

    .line 1231
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->aF:Z

    .line 1232
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    sget-object v3, Lcom/amap/api/mapcore/o$a;->k:Lcom/amap/api/mapcore/o$a;

    if-ne v2, v3, :cond_5

    .line 1233
    move-object/from16 v0, p1

    iget v2, v0, Lcom/amap/api/mapcore/o;->b:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    move-object/from16 v0, p1

    iget v2, v0, Lcom/amap/api/mapcore/o;->c:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    .line 1235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1535
    :goto_1
    return-void

    .line 1219
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1238
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/n;->b(Z)V

    .line 1239
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v3, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 1241
    new-instance v10, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v10}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1242
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->m()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p1

    iget v4, v0, Lcom/amap/api/mapcore/o;->b:F

    float-to-int v4, v4

    add-int/2addr v3, v4

    .line 1243
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->n()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p1

    iget v5, v0, Lcom/amap/api/mapcore/o;->c:F

    float-to-int v5, v5

    add-int/2addr v4, v5

    .line 1242
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v10}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 1245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 1246
    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore/n;->a(Landroid/view/animation/Interpolator;)V

    .line 1247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    iget v4, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v5, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 1248
    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 1249
    invoke-virtual {v8}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v8

    iget v9, v10, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v11, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v9, v11

    iget v10, v10, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v10, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide/from16 v14, p2

    .line 1247
    invoke-virtual/range {v3 .. v15}, Lcom/amap/api/mapcore/n;->a(IIFFFIIFFFJ)V

    .line 1534
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    goto :goto_1

    .line 1251
    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    sget-object v3, Lcom/amap/api/mapcore/o$a;->b:Lcom/amap/api/mapcore/o$a;

    if-ne v2, v3, :cond_8

    .line 1252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v6

    .line 1253
    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v6

    invoke-static {v2}, Lcom/amap/api/mapcore/util/bk;->a(F)F

    move-result v2

    sub-float v11, v2, v6

    .line 1254
    const/4 v2, 0x0

    cmpl-float v2, v11, v2

    if-nez v2, :cond_6

    .line 1255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1258
    :cond_6
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1259
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->bj:Z

    if-eqz v3, :cond_7

    .line 1260
    move-object/from16 v0, p0

    iget v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->bk:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->bl:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 1264
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore/n;->a(Landroid/view/animation/Interpolator;)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    iget v4, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v5, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 1266
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide/from16 v14, p2

    .line 1265
    invoke-virtual/range {v3 .. v15}, Lcom/amap/api/mapcore/n;->a(IIFFFIIFFFJ)V

    goto :goto_2

    .line 1262
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v3, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    goto :goto_3

    .line 1268
    :cond_8
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    sget-object v3, Lcom/amap/api/mapcore/o$a;->h:Lcom/amap/api/mapcore/o$a;

    if-ne v2, v3, :cond_b

    .line 1269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v6

    .line 1270
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v6, v2

    invoke-static {v2}, Lcom/amap/api/mapcore/util/bk;->a(F)F

    move-result v2

    sub-float v11, v2, v6

    .line 1271
    const/4 v2, 0x0

    cmpl-float v2, v11, v2

    if-nez v2, :cond_9

    .line 1272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1275
    :cond_9
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1276
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->bj:Z

    if-eqz v3, :cond_a

    .line 1277
    move-object/from16 v0, p0

    iget v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->bk:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->bl:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 1281
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore/n;->a(Landroid/view/animation/Interpolator;)V

    .line 1282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    iget v4, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v5, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 1283
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide/from16 v14, p2

    .line 1282
    invoke-virtual/range {v3 .. v15}, Lcom/amap/api/mapcore/n;->a(IIFFFIIFFFJ)V

    goto/16 :goto_2

    .line 1279
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v3, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    goto :goto_4

    .line 1285
    :cond_b
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    sget-object v3, Lcom/amap/api/mapcore/o$a;->i:Lcom/amap/api/mapcore/o$a;

    if-ne v2, v3, :cond_e

    .line 1286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v6

    .line 1287
    move-object/from16 v0, p1

    iget v2, v0, Lcom/amap/api/mapcore/o;->d:F

    invoke-static {v2}, Lcom/amap/api/mapcore/util/bk;->a(F)F

    move-result v2

    sub-float v11, v2, v6

    .line 1289
    const/4 v2, 0x0

    cmpl-float v2, v11, v2

    if-nez v2, :cond_c

    .line 1290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1293
    :cond_c
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1294
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->bj:Z

    if-eqz v3, :cond_d

    .line 1295
    move-object/from16 v0, p0

    iget v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->bk:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->bl:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 1299
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore/n;->a(Landroid/view/animation/Interpolator;)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    iget v4, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v5, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 1301
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide/from16 v14, p2

    .line 1300
    invoke-virtual/range {v3 .. v15}, Lcom/amap/api/mapcore/n;->a(IIFFFIIFFFJ)V

    goto/16 :goto_2

    .line 1297
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v3, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    goto :goto_5

    .line 1303
    :cond_e
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    sget-object v3, Lcom/amap/api/mapcore/o$a;->j:Lcom/amap/api/mapcore/o$a;

    if-ne v2, v3, :cond_12

    .line 1304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/n;->b(Z)V

    .line 1305
    move-object/from16 v0, p1

    iget v2, v0, Lcom/amap/api/mapcore/o;->e:F

    .line 1306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v6

    .line 1307
    add-float v3, v6, v2

    invoke-static {v3}, Lcom/amap/api/mapcore/util/bk;->a(F)F

    move-result v3

    sub-float v11, v3, v6

    .line 1308
    const/4 v3, 0x0

    cmpl-float v3, v11, v3

    if-nez v3, :cond_f

    .line 1309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1312
    :cond_f
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/amap/api/mapcore/o;->m:Landroid/graphics/Point;

    .line 1313
    new-instance v5, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v5}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v4, v5}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 1315
    const/4 v9, 0x0

    .line 1316
    const/4 v10, 0x0

    .line 1317
    new-instance v4, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v4}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1318
    if-eqz v3, :cond_11

    .line 1319
    iget v7, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v3, v4}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 1320
    iget v3, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v7, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v3, v7

    .line 1321
    iget v7, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v4, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int v4, v7, v4

    .line 1322
    int-to-double v8, v3

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    float-to-double v14, v2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    div-double/2addr v8, v12

    int-to-double v12, v3

    sub-double/2addr v8, v12

    double-to-int v9, v8

    .line 1323
    int-to-double v12, v4

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    float-to-double v2, v2

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double v2, v12, v2

    int-to-double v12, v4

    sub-double/2addr v2, v12

    double-to-int v10, v2

    .line 1333
    :cond_10
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/n;->a(Landroid/view/animation/Interpolator;)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    iget v4, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v5, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 1335
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide/from16 v14, p2

    .line 1334
    invoke-virtual/range {v3 .. v15}, Lcom/amap/api/mapcore/n;->a(IIFFFIIFFFJ)V

    goto/16 :goto_2

    .line 1325
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->bj:Z

    if-eqz v3, :cond_10

    .line 1326
    move-object/from16 v0, p0

    iget v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->bk:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->bl:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7, v4}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 1327
    iget v3, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v7, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v3, v7

    .line 1328
    iget v7, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v4, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int v4, v7, v4

    .line 1329
    int-to-double v8, v3

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    float-to-double v14, v2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    div-double/2addr v8, v12

    int-to-double v12, v3

    sub-double/2addr v8, v12

    double-to-int v9, v8

    .line 1330
    int-to-double v12, v4

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    float-to-double v2, v2

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double v2, v12, v2

    int-to-double v12, v4

    sub-double/2addr v2, v12

    double-to-int v10, v2

    goto :goto_6

    .line 1337
    :cond_12
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    sget-object v3, Lcom/amap/api/mapcore/o$a;->l:Lcom/amap/api/mapcore/o$a;

    if-ne v2, v3, :cond_16

    .line 1338
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1339
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->bj:Z

    if-eqz v3, :cond_14

    .line 1340
    move-object/from16 v0, p0

    iget v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->bk:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->bl:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 1344
    :goto_7
    new-instance v3, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v3}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1345
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/amap/api/mapcore/o;->h:Lcom/amap/api/maps/model/CameraPosition;

    .line 1346
    iget-object v5, v4, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v5, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v5, v4, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget-wide v8, v5, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v6, v7, v8, v9, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v5}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v6

    .line 1349
    iget v5, v3, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v7, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int v9, v5, v7

    .line 1350
    iget v3, v3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v5, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int v10, v3, v5

    .line 1351
    iget v3, v4, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    invoke-static {v3}, Lcom/amap/api/mapcore/util/bk;->a(F)F

    move-result v3

    sub-float v11, v3, v6

    .line 1352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v7

    .line 1353
    iget v3, v4, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    const/high16 v5, 0x43b40000    # 360.0f

    rem-float/2addr v3, v5

    const/high16 v5, 0x43b40000    # 360.0f

    rem-float v5, v7, v5

    sub-float v12, v3, v5

    .line 1354
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v5, 0x43340000    # 180.0f

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_13

    .line 1355
    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v3

    const/high16 v5, 0x43b40000    # 360.0f

    mul-float/2addr v3, v5

    sub-float/2addr v12, v3

    .line 1356
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v8

    .line 1357
    iget v3, v4, Lcom/amap/api/maps/model/CameraPosition;->tilt:F

    invoke-static {v3, v6}, Lcom/amap/api/mapcore/util/bk;->a(FF)F

    move-result v3

    sub-float v13, v3, v8

    .line 1358
    if-nez v9, :cond_15

    if-nez v10, :cond_15

    const/4 v3, 0x0

    cmpl-float v3, v11, v3

    if-nez v3, :cond_15

    const/4 v3, 0x0

    cmpl-float v3, v12, v3

    if-nez v3, :cond_15

    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-nez v3, :cond_15

    .line 1360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1342
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v3, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    goto/16 :goto_7

    .line 1363
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore/n;->a(Landroid/view/animation/Interpolator;)V

    .line 1364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    iget v4, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v5, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-wide/from16 v14, p2

    invoke-virtual/range {v3 .. v15}, Lcom/amap/api/mapcore/n;->a(IIFFFIIFFFJ)V

    goto/16 :goto_2

    .line 1366
    :cond_16
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    sget-object v3, Lcom/amap/api/mapcore/o$a;->e:Lcom/amap/api/mapcore/o$a;

    if-ne v2, v3, :cond_1a

    .line 1367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v7

    .line 1368
    move-object/from16 v0, p1

    iget v2, v0, Lcom/amap/api/mapcore/o;->g:F

    const/high16 v3, 0x43b40000    # 360.0f

    rem-float/2addr v2, v3

    const/high16 v3, 0x43b40000    # 360.0f

    rem-float v3, v7, v3

    sub-float v12, v2, v3

    .line 1370
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_17

    .line 1371
    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v2

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v2, v3

    sub-float/2addr v12, v2

    .line 1372
    :cond_17
    const/4 v2, 0x0

    cmpl-float v2, v12, v2

    if-nez v2, :cond_18

    .line 1373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1376
    :cond_18
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1377
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->bj:Z

    if-eqz v3, :cond_19

    .line 1378
    move-object/from16 v0, p0

    iget v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->bk:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->bl:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 1382
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore/n;->a(Landroid/view/animation/Interpolator;)V

    .line 1383
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    iget v4, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v5, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 1384
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-wide/from16 v14, p2

    .line 1383
    invoke-virtual/range {v3 .. v15}, Lcom/amap/api/mapcore/n;->a(IIFFFIIFFFJ)V

    goto/16 :goto_2

    .line 1380
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v3, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    goto :goto_8

    .line 1386
    :cond_1a
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    sget-object v3, Lcom/amap/api/mapcore/o$a;->d:Lcom/amap/api/mapcore/o$a;

    if-ne v2, v3, :cond_1d

    .line 1387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v8

    .line 1388
    move-object/from16 v0, p1

    iget v2, v0, Lcom/amap/api/mapcore/o;->f:F

    sub-float v13, v2, v8

    .line 1389
    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-nez v2, :cond_1b

    .line 1390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1393
    :cond_1b
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1394
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->bj:Z

    if-eqz v3, :cond_1c

    .line 1395
    move-object/from16 v0, p0

    iget v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->bk:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->bl:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 1399
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore/n;->a(Landroid/view/animation/Interpolator;)V

    .line 1400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    iget v4, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v5, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 1401
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 v14, p2

    .line 1400
    invoke-virtual/range {v3 .. v15}, Lcom/amap/api/mapcore/n;->a(IIFFFIIFFFJ)V

    goto/16 :goto_2

    .line 1397
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v3, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    goto :goto_9

    .line 1403
    :cond_1d
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    sget-object v3, Lcom/amap/api/mapcore/o$a;->c:Lcom/amap/api/mapcore/o$a;

    if-ne v2, v3, :cond_20

    .line 1404
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1405
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->bj:Z

    if-eqz v3, :cond_1e

    .line 1406
    move-object/from16 v0, p0

    iget v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->bk:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->bl:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 1410
    :goto_a
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/amap/api/mapcore/o;->o:Lcom/autonavi/amap/mapcore/IPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int v9, v3, v4

    .line 1411
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/amap/api/mapcore/o;->o:Lcom/autonavi/amap/mapcore/IPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v4, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int v10, v3, v4

    .line 1412
    if-nez v9, :cond_1f

    if-nez v10, :cond_1f

    .line 1413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1408
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v3, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    goto :goto_a

    .line 1416
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 1417
    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore/n;->a(Landroid/view/animation/Interpolator;)V

    .line 1418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    iget v4, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v5, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 1419
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 1420
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide/from16 v14, p2

    .line 1418
    invoke-virtual/range {v3 .. v15}, Lcom/amap/api/mapcore/n;->a(IIFFFIIFFFJ)V

    goto/16 :goto_2

    .line 1421
    :cond_20
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    sget-object v3, Lcom/amap/api/mapcore/o$a;->m:Lcom/amap/api/mapcore/o$a;

    if-eq v2, v3, :cond_21

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    sget-object v3, Lcom/amap/api/mapcore/o$a;->n:Lcom/amap/api/mapcore/o$a;

    if-ne v2, v3, :cond_2c

    .line 1423
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/n;->b(Z)V

    .line 1426
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    sget-object v3, Lcom/amap/api/mapcore/o$a;->m:Lcom/amap/api/mapcore/o$a;

    if-ne v2, v3, :cond_23

    .line 1427
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->m()I

    move-result v3

    .line 1428
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->n()I

    move-result v2

    move v9, v2

    move v11, v3

    .line 1433
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v2

    const/high16 v3, 0x43b40000    # 360.0f

    rem-float v16, v2, v3

    .line 1434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v17

    .line 1435
    move/from16 v0, v16

    neg-float v12, v0

    .line 1436
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_22

    .line 1437
    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v2

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v2, v3

    sub-float/2addr v12, v2

    .line 1438
    :cond_22
    move/from16 v0, v17

    neg-float v13, v0

    .line 1439
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/amap/api/mapcore/o;->i:Lcom/amap/api/maps/model/LatLngBounds;

    .line 1440
    move-object/from16 v0, p1

    iget v15, v0, Lcom/amap/api/mapcore/o;->j:I

    .line 1441
    new-instance v18, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct/range {v18 .. v18}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v19

    .line 1444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/n;->a(Landroid/view/animation/Interpolator;)V

    .line 1445
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1446
    new-instance v3, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v3}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1447
    iget-object v4, v14, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v6, v14, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 1449
    iget-object v4, v14, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v6, v14, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 1451
    iget v4, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v5, v3, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int v10, v4, v5

    .line 1452
    iget v4, v3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v5, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int v20, v4, v5

    .line 1453
    if-gtz v10, :cond_24

    if-gtz v20, :cond_24

    .line 1454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1430
    :cond_23
    move-object/from16 v0, p1

    iget v3, v0, Lcom/amap/api/mapcore/o;->k:I

    .line 1431
    move-object/from16 v0, p1

    iget v2, v0, Lcom/amap/api/mapcore/o;->l:I

    move v9, v2

    move v11, v3

    goto/16 :goto_b

    .line 1458
    :cond_24
    iget v4, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v5, v3, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    add-int/2addr v4, v5

    div-int/lit8 v21, v4, 0x2

    .line 1459
    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v3, v3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    add-int/2addr v2, v3

    div-int/lit8 v22, v2, 0x2

    .line 1460
    new-instance v8, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v8}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1461
    iget-object v2, v14, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v4, v14, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v4, v2, v4

    iget-object v2, v14, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v6, v14, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps/model/LatLng;->longitude:D

    add-double/2addr v2, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v6, v2, v6

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/amap/api/mapcore/AMapDelegateImp;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 1465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->ah:Landroid/graphics/Rect;

    iget v3, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_27

    const/4 v2, 0x1

    .line 1467
    :goto_c
    if-nez v2, :cond_29

    .line 1468
    mul-int/lit8 v2, v15, 0x2

    sub-int v3, v11, v2

    .line 1469
    mul-int/lit8 v2, v15, 0x2

    sub-int v2, v9, v2

    .line 1470
    if-gtz v3, :cond_25

    const/4 v3, 0x1

    .line 1471
    :cond_25
    if-gtz v2, :cond_26

    const/4 v2, 0x1

    .line 1472
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v4, v10}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapLenWithGeo(I)F

    move-result v4

    float-to-double v4, v4

    .line 1473
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapLenWithGeo(I)F

    move-result v6

    float-to-double v6, v6

    .line 1474
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v8, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapLenWithWin(I)F

    move-result v3

    float-to-double v8, v3

    div-double v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 1476
    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v4, v8

    .line 1477
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v3, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapLenWithWin(I)F

    move-result v2

    float-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 1479
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v2, v6

    .line 1480
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 1481
    move/from16 v0, v19

    float-to-double v4, v0

    add-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/amap/api/mapcore/util/bk;->a(F)F

    move-result v2

    sub-float v11, v2, v19

    .line 1483
    move-object/from16 v0, v18

    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int v9, v21, v2

    .line 1484
    move-object/from16 v0, v18

    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int v10, v22, v2

    .line 1485
    if-nez v9, :cond_28

    if-nez v10, :cond_28

    const/4 v2, 0x0

    cmpl-float v2, v11, v2

    if-nez v2, :cond_28

    .line 1486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1465
    :cond_27
    const/4 v2, 0x0

    goto/16 :goto_c

    .line 1489
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/n;->a(Landroid/view/animation/Interpolator;)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    move-object/from16 v0, v18

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move/from16 v6, v19

    move/from16 v7, v16

    move/from16 v8, v17

    move-wide/from16 v14, p2

    invoke-virtual/range {v3 .. v15}, Lcom/amap/api/mapcore/n;->a(IIFFFIIFFFJ)V

    goto/16 :goto_2

    .line 1495
    :cond_29
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->ao:Lcom/amap/api/maps/AMap$CancelableCallback;

    .line 1496
    new-instance v2, Lcom/amap/api/mapcore/AMapDelegateImp$10;

    move-object/from16 v3, p0

    move-object v4, v14

    move v5, v11

    move v6, v9

    move v7, v15

    move-wide/from16 v8, p2

    invoke-direct/range {v2 .. v10}, Lcom/amap/api/mapcore/AMapDelegateImp$10;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/maps/model/LatLngBounds;IIIJLcom/amap/api/maps/AMap$CancelableCallback;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->ao:Lcom/amap/api/maps/AMap$CancelableCallback;

    .line 1517
    move-object/from16 v0, v18

    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    add-int v2, v2, v21

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v18

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int v20, v2, v3

    .line 1518
    move-object/from16 v0, v18

    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    add-int v2, v2, v22

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v18

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int v10, v2, v3

    .line 1519
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->k()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 1520
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->l()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    move-object/from16 v0, v18

    iget v6, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int v6, v21, v6

    .line 1521
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    move-object/from16 v0, v18

    iget v8, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int v8, v22, v8

    .line 1522
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    .line 1519
    invoke-static/range {v2 .. v9}, Lcom/amap/api/mapcore/util/bk;->a(DDDD)F

    move-result v2

    float-to-int v2, v2

    .line 1523
    if-nez v2, :cond_2b

    const/4 v11, 0x0

    .line 1524
    :goto_d
    const/4 v2, 0x0

    cmpl-float v2, v11, v2

    if-ltz v2, :cond_2a

    const/4 v11, 0x0

    .line 1525
    :cond_2a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->aF:Z

    .line 1526
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    move-object/from16 v0, v18

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v12, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v13, v2

    const-wide/16 v6, 0x2

    div-long v14, p2, v6

    move/from16 v6, v19

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v20

    invoke-virtual/range {v3 .. v15}, Lcom/amap/api/mapcore/n;->a(IIFFFIIFFFJ)V

    goto/16 :goto_2

    .line 1523
    :cond_2b
    int-to-float v2, v2

    sub-float v11, v2, v19

    goto :goto_d

    .line 1531
    :cond_2c
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/amap/api/mapcore/o;->p:Z

    .line 1532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->e:Lcom/amap/api/mapcore/au;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/au;->a(Lcom/amap/api/mapcore/o;)V

    goto/16 :goto_2
.end method

.method public a(Lcom/amap/api/mapcore/o;Lcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1208
    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/o;JLcom/amap/api/maps/AMap$CancelableCallback;)V

    .line 1210
    return-void
.end method

.method public a(Lcom/amap/api/mapcore/u;)V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aN:Lcom/amap/api/mapcore/s;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/s;->a(Lcom/amap/api/mapcore/u;)Z

    .line 467
    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/f;)V
    .locals 3

    .prologue
    .line 3954
    if-nez p1, :cond_2

    .line 3955
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v0

    const/high16 v1, 0x41880000    # 17.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->av:Lcom/amap/api/mapcore/util/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->av:Lcom/amap/api/mapcore/util/f;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/f;->l:Lcom/autonavi/amap/mapcore/IPoint;

    if-eqz v0, :cond_1

    .line 3957
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 3958
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->av:Lcom/amap/api/mapcore/util/f;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/f;->l:Lcom/autonavi/amap/mapcore/IPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->av:Lcom/amap/api/mapcore/util/f;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/f;->l:Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->b(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 3960
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ah:Landroid/graphics/Rect;

    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4004
    :cond_0
    :goto_0
    return-void

    .line 3965
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->N:Lcom/amap/api/mapcore/aq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/aq;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3966
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->av:Lcom/amap/api/mapcore/util/f;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/amap/api/mapcore/util/f;->l:Lcom/autonavi/amap/mapcore/IPoint;

    .line 3967
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/mapcore/AMapDelegateImp$5;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/AMapDelegateImp$5;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3978
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->av:Lcom/amap/api/mapcore/util/f;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->av:Lcom/amap/api/mapcore/util/f;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/f;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/mapcore/util/f;->e:Ljava/lang/String;

    .line 3979
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->N:Lcom/amap/api/mapcore/aq;

    .line 3980
    invoke-virtual {v0}, Lcom/amap/api/mapcore/aq;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3983
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->av:Lcom/amap/api/mapcore/util/f;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->av:Lcom/amap/api/mapcore/util/f;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/f;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/mapcore/util/f;->e:Ljava/lang/String;

    .line 3984
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3985
    :cond_4
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->av:Lcom/amap/api/mapcore/util/f;

    .line 3986
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->av:Lcom/amap/api/mapcore/util/f;

    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iput-object v1, v0, Lcom/amap/api/mapcore/util/f;->l:Lcom/autonavi/amap/mapcore/IPoint;

    .line 3987
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->av:Lcom/amap/api/mapcore/util/f;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/f;->l:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 3989
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/mapcore/AMapDelegateImp$6;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/AMapDelegateImp$6;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2185
    if-nez p1, :cond_0

    .line 2186
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aa:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->Z:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    .line 2190
    :goto_0
    return-void

    .line 2188
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->Z:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V
    .locals 6

    .prologue
    .line 3857
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aM:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3859
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v1, 0xa29

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 3860
    new-instance v0, Lcom/amap/api/mapcore/AMapDelegateImp$i;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/amap/api/mapcore/AMapDelegateImp$i;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;Landroid/content/Context;Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V

    .line 3862
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aM:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3863
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aM:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3870
    :cond_0
    :goto_0
    return-void

    .line 3864
    :catch_0
    move-exception v0

    .line 3865
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "removecache"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 3867
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2111
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->T:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    .line 2112
    return-void
.end method

.method public a(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2179
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->Y:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    .line 2180
    return-void
.end method

.method public a(Lcom/amap/api/maps/AMap$OnMapClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2131
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->U:Lcom/amap/api/maps/AMap$OnMapClickListener;

    .line 2132
    return-void
.end method

.method public a(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2173
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->S:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    .line 2174
    return-void
.end method

.method public a(Lcom/amap/api/maps/AMap$OnMapLongClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2149
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->X:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    .line 2150
    return-void
.end method

.method public a(Lcom/amap/api/maps/AMap$OnMapScreenShotListener;)V
    .locals 1

    .prologue
    .line 3631
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->at:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    .line 3632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aJ:Z

    .line 3633
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    .line 3634
    return-void
.end method

.method public a(Lcom/amap/api/maps/AMap$OnMapTouchListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2137
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->V:Lcom/amap/api/maps/AMap$OnMapTouchListener;

    .line 2138
    return-void
.end method

.method public a(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2155
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->P:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    .line 2156
    return-void
.end method

.method public a(Lcom/amap/api/maps/AMap$OnMarkerDragListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2167
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->R:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    .line 2168
    return-void
.end method

.method public a(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->O:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    .line 476
    return-void
.end method

.method public a(Lcom/amap/api/maps/AMap$OnPOIClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2143
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->W:Lcom/amap/api/maps/AMap$OnPOIClickListener;

    .line 2144
    return-void
.end method

.method public a(Lcom/amap/api/maps/AMap$OnPolylineClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2161
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->Q:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    .line 2162
    return-void
.end method

.method public a(Lcom/amap/api/maps/AMap$onMapPrintScreenListener;)V
    .locals 1

    .prologue
    .line 3624
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->as:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    .line 3625
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aJ:Z

    .line 3626
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    .line 3627
    return-void
.end method

.method public a(Lcom/amap/api/maps/CustomRenderer;)V
    .locals 0

    .prologue
    .line 4071
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->m:Lcom/amap/api/maps/CustomRenderer;

    .line 4072
    return-void
.end method

.method public a(Lcom/amap/api/maps/LocationSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2085
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ag:Lcom/amap/api/maps/LocationSource;

    .line 2086
    if-eqz p1, :cond_0

    .line 2087
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->K:Lcom/amap/api/mapcore/ar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/ar;->a(Z)V

    .line 2096
    :goto_0
    return-void

    .line 2089
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->K:Lcom/amap/api/mapcore/ar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/ar;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2091
    :catch_0
    move-exception v0

    .line 2092
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "setLocationSource"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method a(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 2

    .prologue
    .line 2116
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2117
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2118
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2119
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2120
    return-void
.end method

.method public a(Lcom/amap/api/maps/model/MyLocationStyle;)V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/ba;->a(Lcom/amap/api/maps/model/MyLocationStyle;)V

    .line 553
    :cond_0
    return-void
.end method

.method public a(Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;)V
    .locals 1

    .prologue
    .line 1883
    sget-object v0, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;->NORMAL:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;)V

    .line 1884
    return-void
.end method

.method public a(Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;)V
    .locals 7

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->w:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->x:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->y:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    if-ne v0, p3, :cond_0

    .line 1980
    :goto_0
    return-void

    .line 1892
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aD:Z

    if-nez v0, :cond_1

    .line 1893
    iput-object p2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->w:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    .line 1894
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->x:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    .line 1895
    iput-object p3, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->y:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    goto :goto_0

    .line 1900
    :cond_1
    iget-object v5, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->w:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    .line 1901
    iget-object v6, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->x:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    .line 1902
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->y:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    .line 1903
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aT:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aB:Z

    if-eqz v0, :cond_2

    .line 1905
    new-instance v0, Lcom/amap/api/mapcore/AMapDelegateImp$12;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/AMapDelegateImp$12;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1975
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bq:Lcom/amap/api/mapcore/AMapDelegateImp$a;

    iput-object p1, v0, Lcom/amap/api/mapcore/AMapDelegateImp$a;->d:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    .line 1976
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bq:Lcom/amap/api/mapcore/AMapDelegateImp$a;

    iput-object p2, v0, Lcom/amap/api/mapcore/AMapDelegateImp$a;->e:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    .line 1977
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bq:Lcom/amap/api/mapcore/AMapDelegateImp$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/AMapDelegateImp$a;->b:Z

    goto :goto_0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 4130
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->j:Lcom/amap/api/mapcore/ad;

    if-eqz v0, :cond_0

    .line 4131
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->j:Lcom/amap/api/mapcore/ad;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/ad;->queueEvent(Ljava/lang/Runnable;)V

    .line 4133
    :cond_0
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    .prologue
    const/16 v2, 0x1f4

    const/4 v0, 0x0

    .line 265
    iget-boolean v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aL:Z

    if-eqz v1, :cond_0

    .line 273
    :goto_0
    return-void

    .line 267
    :cond_0
    new-array v1, v2, [I

    .line 268
    invoke-interface {p1, v2, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 269
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 270
    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    aget v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 272
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aL:Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->f:Lcom/amap/api/mapcore/br;

    if-nez v0, :cond_0

    .line 623
    :goto_0
    return-void

    .line 618
    :cond_0
    if-eqz p1, :cond_1

    .line 619
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->f:Lcom/amap/api/mapcore/br;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/br;->setVisibility(I)V

    goto :goto_0

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->f:Lcom/amap/api/mapcore/br;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/br;->setVisibility(I)V

    goto :goto_0
.end method

.method protected a(ZLcom/amap/api/maps/model/CameraPosition;)V
    .locals 3

    .prologue
    .line 3697
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->T:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    if-nez v0, :cond_1

    .line 3716
    :cond_0
    :goto_0
    return-void

    .line 3700
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3703
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->j:Lcom/amap/api/mapcore/ad;

    invoke-interface {v0}, Lcom/amap/api/mapcore/ad;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3706
    if-nez p2, :cond_2

    .line 3708
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->q()Lcom/amap/api/maps/model/CameraPosition;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 3715
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->T:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    invoke-interface {v0, p2}, Lcom/amap/api/maps/AMap$OnCameraChangeListener;->onCameraChangeFinish(Lcom/amap/api/maps/model/CameraPosition;)V

    goto :goto_0

    .line 3709
    :catch_0
    move-exception v0

    .line 3710
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "cameraChangeFinish"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 3712
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2403
    iget-boolean v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bh:Z

    if-nez v2, :cond_0

    .line 2435
    :goto_0
    return v0

    .line 2407
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    .line 2408
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0x105

    if-ne v2, v3, :cond_1

    .line 2409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bd:I

    .line 2411
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->E:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2412
    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aj:Lcom/amap/api/mapcore/util/c;

    invoke-virtual {v2, p1}, Lcom/amap/api/mapcore/util/c;->a(Landroid/view/MotionEvent;)Z

    .line 2413
    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->F:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2414
    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->G:Lcom/amap/api/mapcore/util/d;

    invoke-virtual {v2, p1}, Lcom/amap/api/mapcore/util/d;->a(Landroid/view/MotionEvent;)Z

    .line 2415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 2417
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/AMapDelegateImp;->b(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2424
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 2425
    invoke-direct {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->ah()V

    .line 2427
    :cond_3
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    .line 2428
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->V:Lcom/amap/api/maps/AMap$OnMapTouchListener;

    if-eqz v0, :cond_4

    .line 2429
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bm:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2430
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bm:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2431
    iput v1, v0, Landroid/os/Message;->what:I

    .line 2432
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2433
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    move v0, v1

    .line 2435
    goto :goto_0

    .line 2418
    :catch_0
    move-exception v2

    .line 2419
    const-string v3, "AMapDelegateImpGLSurfaceView"

    const-string v4, "onDragMarker"

    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 816
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    .line 817
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->h:Lcom/amap/api/mapcore/v;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/v;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(F)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2199
    invoke-static {p1}, Lcom/amap/api/mapcore/util/bk;->a(F)F

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->n:I

    return v0
.end method

.method public b(DDLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 5

    .prologue
    .line 2290
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aB:Z

    if-eqz v0, :cond_0

    .line 2291
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 2292
    new-instance v1, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 2293
    invoke-static {p3, p4, p1, p2, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 2294
    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 2295
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    iget v2, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v0, v2, v1, p5}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 2297
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1863
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1864
    :try_start_0
    sget-object v0, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;->NORAML:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    sget-object v1, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;->DAY:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;)V

    .line 1874
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    .line 1880
    :goto_1
    return-void

    .line 1865
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1866
    sget-object v0, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;->SATELLITE:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    sget-object v1, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;->DAY:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1875
    :catch_0
    move-exception v0

    .line 1876
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "setMaptype"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1867
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 1868
    :try_start_1
    sget-object v0, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;->NORAML:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    sget-object v1, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;->NIGHT:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    sget-object v2, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;->NAVI_CAR:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;)V

    goto :goto_0

    .line 1870
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1871
    sget-object v0, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;->NORAML:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    sget-object v1, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;->DAY:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    sget-object v2, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;->NAVI_CAR:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public b(IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 0

    .prologue
    .line 2285
    invoke-static {p1, p2, p3}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 2286
    return-void
.end method

.method public b(IILcom/autonavi/amap/mapcore/FPoint;)V
    .locals 1

    .prologue
    .line 2271
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aB:Z

    if-eqz v0, :cond_0

    .line 2272
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v0, p2, p1, p3}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 2274
    :cond_0
    return-void
.end method

.method public b(IILcom/autonavi/amap/mapcore/IPoint;)V
    .locals 3

    .prologue
    .line 2241
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aB:Z

    if-eqz v0, :cond_0

    .line 2242
    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 2243
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v1, p1, p2, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 2244
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v1, v2, v0, p3}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 2246
    :cond_0
    return-void
.end method

.method public b(Lcom/amap/api/mapcore/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1201
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/o;Lcom/amap/api/maps/AMap$CancelableCallback;)V

    .line 1202
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->K:Lcom/amap/api/mapcore/ar;

    if-nez v0, :cond_0

    .line 744
    :goto_0
    return-void

    .line 739
    :cond_0
    if-eqz p1, :cond_1

    .line 740
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->K:Lcom/amap/api/mapcore/ar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/ar;->setVisibility(I)V

    goto :goto_0

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->K:Lcom/amap/api/mapcore/ar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/ar;->setVisibility(I)V

    goto :goto_0
.end method

.method public c(I)F
    .locals 1

    .prologue
    .line 2204
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aB:Z

    if-eqz v0, :cond_0

    .line 2205
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapLenWithWin(I)F

    move-result v0

    .line 2207
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/autonavi/amap/mapcore/MapProjection;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->getMapstate()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    return-object v0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 748
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->L:Lcom/amap/api/mapcore/q;

    if-nez v0, :cond_0

    .line 757
    :goto_0
    return-void

    .line 750
    :cond_0
    if-eqz p1, :cond_1

    .line 751
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->L:Lcom/amap/api/mapcore/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/q;->setVisibility(I)V

    .line 752
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->L:Lcom/amap/api/mapcore/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/q;->b()V

    goto :goto_0

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->L:Lcom/amap/api/mapcore/q;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/q;->setVisibility(I)V

    goto :goto_0
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 480
    sget-object v0, Lcom/amap/api/mapcore/util/bf;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onResume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 482
    invoke-direct {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->ad()V

    .line 483
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->C:Lcom/amap/api/mapcore/a;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->C:Lcom/amap/api/mapcore/a;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/a;->onResume(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 485
    invoke-virtual {p0, v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->g:Lcom/amap/api/mapcore/bn;

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->g:Lcom/amap/api/mapcore/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/bn;->e()V

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;

    if-eqz v0, :cond_2

    .line 492
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/ba;->b()V

    .line 495
    :cond_2
    iput-boolean v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aO:Z

    .line 496
    return-void
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 3649
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->J:Lcom/amap/api/mapcore/bq;

    if-eqz v0, :cond_0

    .line 3650
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->J:Lcom/amap/api/mapcore/bq;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/bq;->a(I)V

    .line 3651
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->J:Lcom/amap/api/mapcore/bq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/bq;->invalidate()V

    .line 3652
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->M:Lcom/amap/api/mapcore/bi;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/bi;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3653
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->M:Lcom/amap/api/mapcore/bi;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/bi;->invalidate()V

    .line 3656
    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 765
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->M:Lcom/amap/api/mapcore/bi;

    if-nez v0, :cond_0

    .line 775
    :goto_0
    return-void

    .line 767
    :cond_0
    if-eqz p1, :cond_1

    .line 768
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->M:Lcom/amap/api/mapcore/bi;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/bi;->setVisibility(I)V

    .line 769
    invoke-virtual {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->h()V

    goto :goto_0

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->M:Lcom/amap/api/mapcore/bi;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bi;->a(Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->M:Lcom/amap/api/mapcore/bi;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/bi;->a(I)V

    .line 773
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->M:Lcom/amap/api/mapcore/bi;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bi;->setVisibility(I)V

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 500
    sget-object v0, Lcom/amap/api/mapcore/util/bf;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onPause "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aO:Z

    .line 503
    invoke-direct {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->ae()V

    .line 505
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->C:Lcom/amap/api/mapcore/a;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->C:Lcom/amap/api/mapcore/a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/a;->onPause()V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->g:Lcom/amap/api/mapcore/bn;

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->g:Lcom/amap/api/mapcore/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/bn;->d()V

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;

    if-eqz v0, :cond_2

    .line 513
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/ba;->a()V

    .line 517
    :cond_2
    invoke-static {}, Lcom/autonavi/amap/mapcore/VMapDataCache;->getInstance()Lcom/autonavi/amap/mapcore/VMapDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/VMapDataCache;->reset()V

    .line 518
    return-void
.end method

.method public e(I)V
    .locals 3

    .prologue
    .line 3660
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->f:Lcom/amap/api/mapcore/br;

    if-eqz v0, :cond_1

    .line 3661
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->f:Lcom/amap/api/mapcore/br;

    .line 3662
    invoke-virtual {v0}, Lcom/amap/api/mapcore/br;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/ay$a;

    .line 3663
    if-nez p1, :cond_2

    .line 3664
    const/16 v1, 0x10

    iput v1, v0, Lcom/amap/api/mapcore/ay$a;->d:I

    .line 3668
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->I:Lcom/amap/api/mapcore/ay;

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->f:Lcom/amap/api/mapcore/br;

    invoke-virtual {v1, v2, v0}, Lcom/amap/api/mapcore/ay;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3670
    :cond_1
    return-void

    .line 3665
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 3666
    const/16 v1, 0x50

    iput v1, v0, Lcom/amap/api/mapcore/ay$a;->d:I

    goto :goto_0
.end method

.method public declared-synchronized e(Z)V
    .locals 4

    .prologue
    .line 847
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 848
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aP:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aQ:Z

    if-nez v0, :cond_0

    .line 849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aQ:Z

    .line 850
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aR:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aS:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 855
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aQ:Z

    .line 856
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aR:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aS:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 857
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aP:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 847
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()V
    .locals 5

    .prologue
    const/16 v4, 0x6f

    .line 627
    sget-object v0, Lcom/amap/api/mapcore/util/bf;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " destroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 629
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aI:Ljava/lang/Boolean;

    .line 632
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->ae()V

    .line 633
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 635
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->q:Landroid/graphics/Bitmap;

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->p:Landroid/graphics/Bitmap;

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->k:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 642
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 643
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->k:Ljava/lang/Runnable;

    .line 645
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aR:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 646
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aR:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aS:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 649
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ay:Lcom/amap/api/mapcore/AMapDelegateImp$TimeChangedReceiver;

    if-eqz v0, :cond_4

    .line 650
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ay:Lcom/amap/api/mapcore/AMapDelegateImp$TimeChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 652
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->f:Lcom/amap/api/mapcore/br;

    if-eqz v0, :cond_5

    .line 653
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->f:Lcom/amap/api/mapcore/br;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/br;->a()V

    .line 655
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->M:Lcom/amap/api/mapcore/bi;

    if-eqz v0, :cond_6

    .line 656
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->M:Lcom/amap/api/mapcore/bi;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/bi;->a()V

    .line 658
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->J:Lcom/amap/api/mapcore/bq;

    if-eqz v0, :cond_7

    .line 659
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->J:Lcom/amap/api/mapcore/bq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/bq;->a()V

    .line 661
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->K:Lcom/amap/api/mapcore/ar;

    if-eqz v0, :cond_8

    .line 662
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->K:Lcom/amap/api/mapcore/ar;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/ar;->a()V

    .line 664
    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->L:Lcom/amap/api/mapcore/q;

    if-eqz v0, :cond_9

    .line 665
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->L:Lcom/amap/api/mapcore/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/q;->a()V

    .line 667
    :cond_9
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->g:Lcom/amap/api/mapcore/bn;

    if-eqz v0, :cond_a

    .line 668
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->g:Lcom/amap/api/mapcore/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/bn;->b()V

    .line 669
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->g:Lcom/amap/api/mapcore/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/bn;->f()V

    .line 671
    :cond_a
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->h:Lcom/amap/api/mapcore/v;

    if-eqz v0, :cond_b

    .line 672
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->h:Lcom/amap/api/mapcore/v;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/v;->a()V

    .line 674
    :cond_b
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    if-eqz v0, :cond_c

    .line 675
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/av;->e()V

    .line 677
    :cond_c
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->N:Lcom/amap/api/mapcore/aq;

    if-eqz v0, :cond_d

    .line 678
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->N:Lcom/amap/api/mapcore/aq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/aq;->b()V

    .line 681
    :cond_d
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bf:Ljava/lang/Thread;

    if-eqz v0, :cond_e

    .line 682
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bf:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bf:Ljava/lang/Thread;

    .line 685
    :cond_e
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->C:Lcom/amap/api/mapcore/a;

    if-eqz v0, :cond_f

    .line 686
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->C:Lcom/amap/api/mapcore/a;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/a;->OnMapDestory(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 687
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapCallback(Lcom/autonavi/amap/mapcore/IMapCallback;)V

    .line 688
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->C:Lcom/amap/api/mapcore/a;

    .line 691
    :cond_f
    invoke-virtual {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->D()V

    .line 693
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aq:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/graphics/drawable/Drawable;)V

    .line 695
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_10

    .line 696
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 699
    :cond_10
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_11

    .line 700
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 703
    :cond_11
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    if-eqz v0, :cond_12

    .line 704
    new-instance v0, Lcom/amap/api/mapcore/AMapDelegateImp$9;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/AMapDelegateImp$9;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Ljava/lang/Runnable;)V

    .line 717
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 720
    :cond_12
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->I:Lcom/amap/api/mapcore/ay;

    if-eqz v0, :cond_13

    .line 721
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->I:Lcom/amap/api/mapcore/ay;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/ay;->removeAllViews()V

    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->I:Lcom/amap/api/mapcore/ay;

    .line 724
    :cond_13
    invoke-static {}, Lcom/amap/api/mapcore/util/ca;->c()V

    .line 725
    const-string v0, "amap"

    const-string v1, "\u5b8c\u5168\u91ca\u653e"

    const/16 v2, 0x71

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    :goto_0
    return-void

    .line 726
    :catch_0
    move-exception v0

    .line 727
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v1, "amap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6ca1\u6709\u5b8c\u5168\u91ca\u653e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 731
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public f(I)V
    .locals 3

    .prologue
    .line 3719
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3720
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3721
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 3723
    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->j:Lcom/amap/api/mapcore/ad;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/ad;->setZOrderOnTop(Z)V

    .line 1163
    return-void
.end method

.method g()V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 761
    return-void
.end method

.method public g(I)V
    .locals 0

    .prologue
    .line 3788
    iput p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ap:I

    .line 3789
    return-void
.end method

.method public g(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1811
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->D()V

    .line 1814
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;

    if-eqz v1, :cond_1

    .line 1815
    if-eqz p1, :cond_0

    .line 1816
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/ba;->d()Ljava/lang/String;

    move-result-object v1

    .line 1817
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/ba;->e()Ljava/lang/String;

    move-result-object v0

    .line 1822
    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->h:Lcom/amap/api/mapcore/v;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/v;->b(Ljava/lang/String;)V

    .line 1823
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->g:Lcom/amap/api/mapcore/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/bn;->b()V

    .line 1824
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/av;->a(Ljava/lang/String;)V

    .line 1825
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    .line 1833
    :goto_1
    return-void

    .line 1819
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/ba;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v1, v0

    goto :goto_0

    .line 1826
    :catch_0
    move-exception v0

    .line 1827
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "clear"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    const-string v1, "amapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AMapDelegateImpGLSurfaceView clear erro"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1830
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1829
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method h()V
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 779
    return-void
.end method

.method public h(I)V
    .locals 1

    .prologue
    .line 3950
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->j:Lcom/amap/api/mapcore/ad;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/ad;->setVisibility(I)V

    .line 3951
    return-void
.end method

.method public h(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1997
    iput-boolean p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aU:Z

    .line 1998
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->e:Lcom/amap/api/mapcore/au;

    new-instance v1, Lcom/amap/api/mapcore/at;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/amap/api/mapcore/at;-><init>(I)V

    .line 1999
    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore/at;->a(Z)Lcom/amap/api/mapcore/at;

    move-result-object v1

    .line 1998
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/au;->a(Lcom/amap/api/mapcore/at;)V

    .line 2000
    return-void
.end method

.method i()V
    .locals 12

    .prologue
    const-wide v10, 0x400921fb54442d18L    # Math.PI

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 782
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->M:Lcom/amap/api/mapcore/bi;

    if-nez v0, :cond_0

    .line 806
    :goto_0
    return-void

    .line 788
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->q()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    iget-object v1, v0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    .line 789
    iget v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->a:F

    .line 790
    iget-boolean v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aB:Z

    if-eqz v2, :cond_1

    .line 791
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v0

    .line 793
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 794
    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    mul-double/2addr v4, v10

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    mul-double/2addr v4, v10

    const-wide v6, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    float-to-double v10, v0

    .line 795
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    double-to-float v1, v4

    float-to-double v4, v1

    .line 796
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->t:[I

    float-to-int v3, v0

    aget v1, v1, v3

    int-to-double v6, v1

    div-double v4, v6, v4

    float-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 797
    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->t:[I

    float-to-int v0, v0

    aget v0, v2, v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bk;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 798
    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->M:Lcom/amap/api/mapcore/bi;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore/bi;->a(I)V

    .line 799
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->M:Lcom/amap/api/mapcore/bi;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/bi;->a(Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->M:Lcom/amap/api/mapcore/bi;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/bi;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 801
    :catch_0
    move-exception v0

    .line 802
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "changeScaleState"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public i(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2004
    new-instance v0, Lcom/amap/api/mapcore/AMapDelegateImp$13;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/AMapDelegateImp$13;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;Z)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Ljava/lang/Runnable;)V

    .line 2011
    return-void
.end method

.method public j()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ah:Landroid/graphics/Rect;

    return-object v0
.end method

.method public j(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x402

    const/4 v3, 0x0

    .line 2020
    if-eqz p1, :cond_0

    .line 2021
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    const/4 v2, 0x1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 2032
    :goto_0
    return-void

    .line 2023
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    move v2, v3

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 2024
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/mapcore/AMapDelegateImp$14;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/AMapDelegateImp$14;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ah:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public k(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2042
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ag:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_4

    .line 2043
    if-eqz p1, :cond_2

    .line 2044
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ag:Lcom/amap/api/maps/LocationSource;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ai:Lcom/amap/api/mapcore/l;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/LocationSource;->activate(Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;)V

    .line 2045
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->K:Lcom/amap/api/mapcore/ar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/ar;->a(Z)V

    .line 2046
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;

    if-nez v0, :cond_0

    .line 2047
    new-instance v0, Lcom/amap/api/mapcore/ba;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->B:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/ba;-><init>(Lcom/amap/api/mapcore/aa;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;

    .line 2061
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 2062
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->af:Lcom/amap/api/mapcore/ap;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/ap;->d(Z)V

    .line 2064
    :cond_1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aA:Z

    .line 2065
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    .line 2071
    :goto_1
    return-void

    .line 2051
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;

    if-eqz v0, :cond_3

    .line 2052
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/ba;->c()V

    .line 2053
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ak:Lcom/amap/api/mapcore/ba;

    .line 2055
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ar:Landroid/location/Location;

    .line 2056
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ag:Lcom/amap/api/maps/LocationSource;

    invoke-interface {v0}, Lcom/amap/api/maps/LocationSource;->deactivate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2066
    :catch_0
    move-exception v0

    .line 2067
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "setMyLocationEnabled"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 2059
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->K:Lcom/amap/api/mapcore/ar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/ar;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ah:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public l(Z)Lcom/amap/api/maps/model/CameraPosition;
    .locals 7

    .prologue
    .line 2317
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aB:Z

    if-eqz v0, :cond_1

    .line 2319
    if-eqz p1, :cond_0

    .line 2320
    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 2321
    iget v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bk:I

    iget v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bl:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 2322
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 2326
    :goto_0
    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 2327
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 2328
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->D:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 2329
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    .line 2331
    :goto_1
    return-object v0

    .line 2324
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->ag()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    goto :goto_0

    .line 2331
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public m()I
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->j:Lcom/amap/api/mapcore/ad;

    invoke-interface {v0}, Lcom/amap/api/mapcore/ad;->getWidth()I

    move-result v0

    return v0
.end method

.method m(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3691
    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    const/16 v3, 0x14

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3692
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3693
    return-void

    :cond_0
    move v0, v1

    .line 3691
    goto :goto_0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->j:Lcom/amap/api/mapcore/ad;

    invoke-interface {v0}, Lcom/amap/api/mapcore/ad;->getHeight()I

    move-result v0

    return v0
.end method

.method public n(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3843
    new-instance v0, Lcom/amap/api/mapcore/AMapDelegateImp$4;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/AMapDelegateImp$4;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;Z)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Ljava/lang/Runnable;)V

    .line 3850
    return-void
.end method

.method public o()I
    .locals 1

    .prologue
    .line 1122
    iget v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->o:I

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    .prologue
    .line 865
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aI:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aO:Z

    if-eqz v0, :cond_1

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bp:Z

    if-eqz v0, :cond_2

    .line 873
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bp:Z

    .line 874
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/AMapDelegateImp;->c(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 885
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 886
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 887
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapCore;->setGL(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 888
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->A:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapCore;->drawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 889
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 890
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->g:Lcom/amap/api/mapcore/bn;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/bn;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 891
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->h:Lcom/amap/api/mapcore/v;

    const/4 v1, 0x0

    iget v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ap:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/amap/api/mapcore/v;->a(Ljavax/microedition/khronos/opengles/GL10;ZI)V

    .line 892
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/av;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 893
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aN:Lcom/amap/api/mapcore/s;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/s;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 894
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ad:Lcom/amap/api/mapcore/bg;

    if-eqz v0, :cond_3

    .line 895
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ad:Lcom/amap/api/mapcore/bg;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/bg;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 897
    :cond_3
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aJ:Z

    if-eqz v0, :cond_4

    .line 898
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->m()I

    move-result v2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/AMapDelegateImp;->n()I

    move-result v3

    invoke-static {v0, v1, v2, v3, p1}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(IIIILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 899
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 900
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aJ:Z

    .line 902
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/n;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 903
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 905
    :cond_5
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aC:Z

    if-nez v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 907
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aC:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 909
    :catch_0
    move-exception v0

    .line 910
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4192
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ah:Landroid/graphics/Rect;

    .line 4194
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4198
    :goto_0
    return-void

    .line 4195
    :catch_0
    move-exception v0

    .line 4196
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    .prologue
    .line 4178
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->j:Lcom/amap/api/mapcore/ad;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/ad;->setRenderMode(I)V

    .line 4180
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/AMapDelegateImp;->b(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4185
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->m:Lcom/amap/api/maps/CustomRenderer;

    if-eqz v0, :cond_0

    .line 4186
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->m:Lcom/amap/api/maps/CustomRenderer;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/maps/CustomRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 4188
    :cond_0
    return-void

    .line 4181
    :catch_0
    move-exception v0

    .line 4182
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public p()V
    .locals 6

    .prologue
    .line 1128
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ab:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ac:Lcom/amap/api/mapcore/ag;

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ab:Landroid/view/View;

    .line 1131
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/ay$a;

    .line 1132
    if-eqz v0, :cond_2

    .line 1133
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ac:Lcom/amap/api/mapcore/ag;

    invoke-interface {v1}, Lcom/amap/api/mapcore/ag;->d()Landroid/graphics/Rect;

    move-result-object v1

    .line 1134
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-nez v1, :cond_1

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1137
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ac:Lcom/amap/api/mapcore/ag;

    invoke-interface {v1}, Lcom/amap/api/mapcore/ag;->D()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ac:Lcom/amap/api/mapcore/ag;

    .line 1138
    invoke-interface {v2}, Lcom/amap/api/mapcore/ag;->B()I

    move-result v2

    add-int/2addr v1, v2

    .line 1139
    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ac:Lcom/amap/api/mapcore/ag;

    invoke-interface {v2}, Lcom/amap/api/mapcore/ag;->E()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ac:Lcom/amap/api/mapcore/ag;

    .line 1140
    invoke-interface {v3}, Lcom/amap/api/mapcore/ag;->C()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    .line 1141
    iget-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ac:Lcom/amap/api/mapcore/ag;

    invoke-interface {v3}, Lcom/amap/api/mapcore/ag;->f()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/mapcore/ay$a;->a:Lcom/autonavi/amap/mapcore/FPoint;

    .line 1142
    iput v1, v0, Lcom/amap/api/mapcore/ay$a;->b:I

    .line 1143
    iput v2, v0, Lcom/amap/api/mapcore/ay$a;->c:I

    .line 1144
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ad:Lcom/amap/api/mapcore/bg;

    if-eqz v0, :cond_2

    .line 1145
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ad:Lcom/amap/api/mapcore/bg;

    iget-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ac:Lcom/amap/api/mapcore/ag;

    .line 1146
    invoke-interface {v3}, Lcom/amap/api/mapcore/ag;->f()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v3

    .line 1145
    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore/bg;->a(Lcom/autonavi/amap/mapcore/FPoint;)V

    .line 1147
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ad:Lcom/amap/api/mapcore/bg;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/bg;->b(II)V

    .line 1150
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->I:Lcom/amap/api/mapcore/ay;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore/ay;->onLayout(ZIIII)V

    .line 1151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1153
    :catch_0
    move-exception v0

    .line 1154
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "redrawInfoWindow"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public q()Lcom/amap/api/maps/model/CameraPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1167
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->bj:Z

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->l(Z)Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public r()F
    .locals 1

    .prologue
    .line 1172
    const/high16 v0, 0x41980000    # 19.0f

    return v0
.end method

.method public s()F
    .locals 1

    .prologue
    .line 1177
    const/high16 v0, 0x40400000    # 3.0f

    return v0
.end method

.method public t()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1539
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/n;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1540
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->al:Lcom/amap/api/mapcore/n;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/n;->a(Z)V

    .line 1541
    invoke-virtual {p0, v2, v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(ZLcom/amap/api/maps/model/CameraPosition;)V

    .line 1542
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ao:Lcom/amap/api/maps/AMap$CancelableCallback;

    if-eqz v0, :cond_0

    .line 1543
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ao:Lcom/amap/api/maps/AMap$CancelableCallback;

    invoke-interface {v0}, Lcom/amap/api/maps/AMap$CancelableCallback;->onCancel()V

    .line 1545
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ab:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ad:Lcom/amap/api/mapcore/bg;

    if-eqz v0, :cond_1

    .line 1546
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ab:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1548
    :cond_1
    iput-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ao:Lcom/amap/api/maps/AMap$CancelableCallback;

    .line 1550
    :cond_2
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    .line 1551
    return-void
.end method

.method public u()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1798
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->g(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1806
    :goto_0
    return-void

    .line 1799
    :catch_0
    move-exception v0

    .line 1800
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "clear"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    const-string v1, "amapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AMapDelegateImpGLSurfaceView clear erro"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1803
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1802
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public v()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1854
    iget v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->z:I

    return v0
.end method

.method public w()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1987
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aU:Z

    return v0
.end method

.method public x()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2036
    iget-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->aA:Z

    return v0
.end method

.method public y()Landroid/location/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ag:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_0

    .line 2076
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->ai:Lcom/amap/api/mapcore/l;

    iget-object v0, v0, Lcom/amap/api/mapcore/l;->a:Landroid/location/Location;

    .line 2078
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public z()Lcom/amap/api/mapcore/ap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp;->af:Lcom/amap/api/mapcore/ap;

    return-object v0
.end method
