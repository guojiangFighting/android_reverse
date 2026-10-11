.class Lcom/autonavi/amap/mapcore/GLMapResManager$1;
.super Ljava/lang/Object;
.source "GLMapResManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amap/mapcore/GLMapResManager;->setIconsData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:[B

.field final synthetic c:[B

.field final synthetic d:Lcom/autonavi/amap/mapcore/GLMapResManager;


# direct methods
.method constructor <init>(Lcom/autonavi/amap/mapcore/GLMapResManager;[B[B[B)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$1;->d:Lcom/autonavi/amap/mapcore/GLMapResManager;

    iput-object p2, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$1;->a:[B

    iput-object p3, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$1;->b:[B

    iput-object p4, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$1;->c:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$1;->d:Lcom/autonavi/amap/mapcore/GLMapResManager;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/GLMapResManager;->access$000(Lcom/autonavi/amap/mapcore/GLMapResManager;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$1;->a:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 152
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$1;->d:Lcom/autonavi/amap/mapcore/GLMapResManager;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/GLMapResManager;->access$000(Lcom/autonavi/amap/mapcore/GLMapResManager;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$1;->b:[B

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 154
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$1;->d:Lcom/autonavi/amap/mapcore/GLMapResManager;

    iget-boolean v0, v0, Lcom/autonavi/amap/mapcore/GLMapResManager;->isBigIcon:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$1;->d:Lcom/autonavi/amap/mapcore/GLMapResManager;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/GLMapResManager;->access$000(Lcom/autonavi/amap/mapcore/GLMapResManager;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$1;->c:[B

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 157
    :cond_0
    return-void
.end method
