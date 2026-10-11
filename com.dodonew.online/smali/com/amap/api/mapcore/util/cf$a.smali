.class Lcom/amap/api/mapcore/util/cf$a;
.super Ljava/lang/Object;
.source "CrashLogWriter.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/dh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/cf;

.field private b:Lcom/amap/api/mapcore/util/cv;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/cf;Lcom/amap/api/mapcore/util/cv;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/amap/api/mapcore/util/cf$a;->a:Lcom/amap/api/mapcore/util/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/amap/api/mapcore/util/cf$a;->b:Lcom/amap/api/mapcore/util/cv;

    .line 43
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cf$a;->b:Lcom/amap/api/mapcore/util/cv;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cf$a;->a:Lcom/amap/api/mapcore/util/cf;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/cf;->a()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/amap/api/mapcore/util/cv;->b(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
