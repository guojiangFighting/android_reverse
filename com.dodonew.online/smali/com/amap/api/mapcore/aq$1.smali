.class Lcom/amap/api/mapcore/aq$1;
.super Ljava/lang/Object;
.source "IndoorFloorSwitchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/aq;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/aq;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/aq;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/amap/api/mapcore/aq$1;->a:Lcom/amap/api/mapcore/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amap/api/mapcore/aq$1;->a:Lcom/amap/api/mapcore/aq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/aq;->getScrollY()I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/amap/api/mapcore/aq$1;->a:Lcom/amap/api/mapcore/aq;

    invoke-static {v1}, Lcom/amap/api/mapcore/aq;->a(Lcom/amap/api/mapcore/aq;)I

    move-result v1

    sub-int v0, v1, v0

    if-nez v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/amap/api/mapcore/aq$1;->a:Lcom/amap/api/mapcore/aq;

    invoke-static {v0}, Lcom/amap/api/mapcore/aq;->a(Lcom/amap/api/mapcore/aq;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/aq$1;->a:Lcom/amap/api/mapcore/aq;

    invoke-static {v1}, Lcom/amap/api/mapcore/aq;->b(Lcom/amap/api/mapcore/aq;)I

    move-result v1

    rem-int/2addr v0, v1

    .line 119
    iget-object v1, p0, Lcom/amap/api/mapcore/aq$1;->a:Lcom/amap/api/mapcore/aq;

    invoke-static {v1}, Lcom/amap/api/mapcore/aq;->a(Lcom/amap/api/mapcore/aq;)I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/aq$1;->a:Lcom/amap/api/mapcore/aq;

    invoke-static {v2}, Lcom/amap/api/mapcore/aq;->b(Lcom/amap/api/mapcore/aq;)I

    move-result v2

    div-int/2addr v1, v2

    .line 120
    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/amap/api/mapcore/aq$1;->a:Lcom/amap/api/mapcore/aq;

    iget-object v2, p0, Lcom/amap/api/mapcore/aq$1;->a:Lcom/amap/api/mapcore/aq;

    invoke-static {v2}, Lcom/amap/api/mapcore/aq;->c(Lcom/amap/api/mapcore/aq;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/amap/api/mapcore/aq;->b:I

    .line 123
    iget-object v0, p0, Lcom/amap/api/mapcore/aq$1;->a:Lcom/amap/api/mapcore/aq;

    invoke-static {v0}, Lcom/amap/api/mapcore/aq;->d(Lcom/amap/api/mapcore/aq;)V

    .line 155
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore/aq$1;->a:Lcom/amap/api/mapcore/aq;

    invoke-static {v2}, Lcom/amap/api/mapcore/aq;->b(Lcom/amap/api/mapcore/aq;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/amap/api/mapcore/aq$1;->a:Lcom/amap/api/mapcore/aq;

    new-instance v3, Lcom/amap/api/mapcore/aq$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/amap/api/mapcore/aq$1$1;-><init>(Lcom/amap/api/mapcore/aq$1;II)V

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/aq;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/aq$1;->a:Lcom/amap/api/mapcore/aq;

    new-instance v3, Lcom/amap/api/mapcore/aq$1$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/amap/api/mapcore/aq$1$2;-><init>(Lcom/amap/api/mapcore/aq$1;II)V

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/aq;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/aq$1;->a:Lcom/amap/api/mapcore/aq;

    iget-object v1, p0, Lcom/amap/api/mapcore/aq$1;->a:Lcom/amap/api/mapcore/aq;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/aq;->getScrollY()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/aq;->a(Lcom/amap/api/mapcore/aq;I)I

    .line 152
    iget-object v0, p0, Lcom/amap/api/mapcore/aq$1;->a:Lcom/amap/api/mapcore/aq;

    iget-object v1, p0, Lcom/amap/api/mapcore/aq$1;->a:Lcom/amap/api/mapcore/aq;

    invoke-static {v1}, Lcom/amap/api/mapcore/aq;->e(Lcom/amap/api/mapcore/aq;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/aq$1;->a:Lcom/amap/api/mapcore/aq;

    .line 153
    invoke-static {v2}, Lcom/amap/api/mapcore/aq;->f(Lcom/amap/api/mapcore/aq;)I

    move-result v2

    int-to-long v2, v2

    .line 152
    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/api/mapcore/aq;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
