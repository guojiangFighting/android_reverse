.class public Lcom/amap/api/mapcore/r;
.super Ljava/lang/Object;
.source "ConfigableConst.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/r$a;
    }
.end annotation


# static fields
.field public static a:F

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Lcom/amap/api/mapcore/r$a;

.field public static volatile f:Lcom/amap/api/mapcore/util/bv;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 12
    const v0, 0x3f666666    # 0.9f

    sput v0, Lcom/amap/api/mapcore/r;->a:F

    .line 13
    const-string v0, "3dmap"

    sput-object v0, Lcom/amap/api/mapcore/r;->b:Ljava/lang/String;

    .line 14
    const-string v0, ""

    sput-object v0, Lcom/amap/api/mapcore/r;->c:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AMAP SDK Android Map "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "3.2.0"

    const/4 v2, 0x0

    const-string v3, "3.2.0"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/r;->d:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/amap/api/mapcore/r$a;->a:Lcom/amap/api/mapcore/r$a;

    sput-object v0, Lcom/amap/api/mapcore/r;->e:Lcom/amap/api/mapcore/r$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method
