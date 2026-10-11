.class Lcom/amap/api/mapcore/bl;
.super Ljava/lang/Object;
.source "TextDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/bk;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/bk;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/amap/api/mapcore/bl;->a:Lcom/amap/api/mapcore/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amap/api/mapcore/bl;->a:Lcom/amap/api/mapcore/bk;

    invoke-static {v0}, Lcom/amap/api/mapcore/bk;->a(Lcom/amap/api/mapcore/bk;)V

    .line 75
    iget-object v0, p0, Lcom/amap/api/mapcore/bl;->a:Lcom/amap/api/mapcore/bk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/bk;->a(Lcom/amap/api/mapcore/bk;Z)Z

    .line 76
    iget-object v0, p0, Lcom/amap/api/mapcore/bl;->a:Lcom/amap/api/mapcore/bk;

    invoke-static {v0}, Lcom/amap/api/mapcore/bk;->b(Lcom/amap/api/mapcore/bk;)V

    .line 77
    return-void
.end method
