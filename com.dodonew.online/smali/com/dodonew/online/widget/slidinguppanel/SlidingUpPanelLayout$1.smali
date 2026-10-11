.class Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$1;
.super Ljava/lang/Object;
.source "SlidingUpPanelLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$1;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 547
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$1;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$1;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->isTouchEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$1;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$100(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->EXPANDED:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$1;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$100(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->ANCHORED:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-eq v0, v1, :cond_3

    .line 549
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$1;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$200(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 550
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$1;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    sget-object v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->ANCHORED:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->setPanelState(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;)V

    goto :goto_0

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$1;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    sget-object v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->EXPANDED:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->setPanelState(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;)V

    goto :goto_0

    .line 555
    :cond_3
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$1;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    sget-object v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->setPanelState(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;)V

    goto :goto_0
.end method
