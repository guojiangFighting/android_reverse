.class Lcom/amap/api/mapcore/AMapDelegateImp$8;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/AMapDelegateImp;->a(Ljavax/microedition/khronos/opengles/GL10;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/AMapDelegateImp;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V
    .locals 0

    .prologue
    .line 4271
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$8;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4274
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$8;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4275
    return-void
.end method
