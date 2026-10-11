.class Lcom/amap/api/mapcore/v$a;
.super Ljava/lang/Object;
.source "GLOverlayLayer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 66
    check-cast p1, Lcom/amap/api/mapcore/ai;

    .line 67
    check-cast p2, Lcom/amap/api/mapcore/ai;

    .line 69
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 70
    :try_start_0
    invoke-interface {p1}, Lcom/amap/api/mapcore/ai;->d()F

    move-result v0

    invoke-interface {p2}, Lcom/amap/api/mapcore/ai;->d()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 71
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    .line 72
    :cond_0
    invoke-interface {p1}, Lcom/amap/api/mapcore/ai;->d()F

    move-result v0

    invoke-interface {p2}, Lcom/amap/api/mapcore/ai;->d()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 73
    const/4 v0, -0x1

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    const-string v1, "GLOverlayLayer"

    const-string v2, "compare"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
