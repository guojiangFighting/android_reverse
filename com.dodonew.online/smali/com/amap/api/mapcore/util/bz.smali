.class public Lcom/amap/api/mapcore/util/bz;
.super Ljava/lang/Object;
.source "WrapperConstConfig.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "9aj&#k81"

    sput-object v0, Lcom/amap/api/mapcore/util/bz;->a:Ljava/lang/String;

    .line 29
    const-string v0, "http://logs.amap.com/ws/log/upload?product=%s&type=%s&platform=%s&channel=%s&sign=%s"

    sput-object v0, Lcom/amap/api/mapcore/util/bz;->b:Ljava/lang/String;

    .line 43
    const-string v0, "9aj&#k81"

    sput-object v0, Lcom/amap/api/mapcore/util/bz;->a:Ljava/lang/String;

    .line 44
    const-string v0, "http://logs.amap.com/ws/log/upload?product=%s&type=%s&platform=%s&channel=%s&sign=%s"

    sput-object v0, Lcom/amap/api/mapcore/util/bz;->b:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
