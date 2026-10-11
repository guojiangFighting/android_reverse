.class Lcom/amap/api/mapcore/x$m;
.super Lcom/amap/api/mapcore/x$b;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "m"
.end annotation


# instance fields
.field final synthetic j:Lcom/amap/api/mapcore/x;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/x;Z)V
    .locals 8

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 879
    iput-object p1, p0, Lcom/amap/api/mapcore/x$m;->j:Lcom/amap/api/mapcore/x;

    .line 880
    if-eqz p2, :cond_0

    const/16 v6, 0x10

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/amap/api/mapcore/x$b;-><init>(Lcom/amap/api/mapcore/x;IIIIII)V

    .line 881
    return-void

    :cond_0
    move v6, v5

    .line 880
    goto :goto_0
.end method
