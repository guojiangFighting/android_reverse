.class Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$2;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$2;->this$0:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$2;->this$0:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->setDragState(I)V

    .line 337
    return-void
.end method
