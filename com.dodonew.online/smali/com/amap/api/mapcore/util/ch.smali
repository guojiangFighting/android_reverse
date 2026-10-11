.class Lcom/amap/api/mapcore/util/ch;
.super Lcom/amap/api/mapcore/util/cl;
.source "ExceptionLogWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/ch$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/mapcore/util/ch$a;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cl;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    return v0
.end method

.method protected a(Lcom/amap/api/mapcore/util/cv;)Lcom/amap/api/mapcore/util/dh;
    .locals 1

    .prologue
    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ch;->a:Lcom/amap/api/mapcore/util/ch$a;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/amap/api/mapcore/util/ch$a;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/ch$a;-><init>(Lcom/amap/api/mapcore/util/ch;Lcom/amap/api/mapcore/util/cv;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ch;->a:Lcom/amap/api/mapcore/util/ch$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ch;->a:Lcom/amap/api/mapcore/util/ch$a;

    return-object v0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-static {p1}, Lcom/amap/api/mapcore/util/bs;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    return-object v0
.end method

.method protected a(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/bv;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/amap/api/mapcore/util/ci;->b:Ljava/lang/String;

    return-object v0
.end method
