.class Lcom/amap/api/mapcore/util/ch$a;
.super Ljava/lang/Object;
.source "ExceptionLogWriter.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/dh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/ch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/ch;

.field private b:Lcom/amap/api/mapcore/util/cv;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/ch;Lcom/amap/api/mapcore/util/cv;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ch$a;->a:Lcom/amap/api/mapcore/util/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/amap/api/mapcore/util/ch$a;->b:Lcom/amap/api/mapcore/util/cv;

    .line 54
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ch$a;->b:Lcom/amap/api/mapcore/util/cv;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ch$a;->a:Lcom/amap/api/mapcore/util/ch;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ch;->a()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/amap/api/mapcore/util/cv;->b(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
