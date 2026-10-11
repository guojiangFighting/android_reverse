.class Lcom/autonavi/amap/mapcore/GLMapResManager$2;
.super Ljava/lang/Object;
.source "GLMapResManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amap/mapcore/GLMapResManager;->setTrafficTexture(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:[B

.field final synthetic c:[B

.field final synthetic d:[B

.field final synthetic e:[B

.field final synthetic f:Lcom/autonavi/amap/mapcore/GLMapResManager;


# direct methods
.method constructor <init>(Lcom/autonavi/amap/mapcore/GLMapResManager;[B[B[B[B[B)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$2;->f:Lcom/autonavi/amap/mapcore/GLMapResManager;

    iput-object p2, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$2;->a:[B

    iput-object p3, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$2;->b:[B

    iput-object p4, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$2;->c:[B

    iput-object p5, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$2;->d:[B

    iput-object p6, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$2;->e:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$2;->f:Lcom/autonavi/amap/mapcore/GLMapResManager;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/GLMapResManager;->access$000(Lcom/autonavi/amap/mapcore/GLMapResManager;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$2;->a:[B

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 306
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$2;->f:Lcom/autonavi/amap/mapcore/GLMapResManager;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/GLMapResManager;->access$000(Lcom/autonavi/amap/mapcore/GLMapResManager;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$2;->b:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 307
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$2;->f:Lcom/autonavi/amap/mapcore/GLMapResManager;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/GLMapResManager;->access$000(Lcom/autonavi/amap/mapcore/GLMapResManager;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$2;->c:[B

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 308
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$2;->f:Lcom/autonavi/amap/mapcore/GLMapResManager;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/GLMapResManager;->access$000(Lcom/autonavi/amap/mapcore/GLMapResManager;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$2;->d:[B

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 309
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$2;->f:Lcom/autonavi/amap/mapcore/GLMapResManager;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/GLMapResManager;->access$000(Lcom/autonavi/amap/mapcore/GLMapResManager;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/GLMapResManager$2;->e:[B

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 310
    return-void
.end method
