.class Lcom/amap/api/mapcore/util/w;
.super Ljava/lang/Object;
.source "DTFileInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/w;->a:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/w;->b:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/w;->a:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/w;->b:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/amap/api/mapcore/util/w;->a:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/amap/api/mapcore/util/w;->b:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->b:Ljava/lang/String;

    return-object v0
.end method
