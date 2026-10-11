.class Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperViewListLifeCycleListener;
.super Ljava/lang/Object;
.source "StickyListHeadersListView.java"

# interfaces
.implements Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList$LifeCycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrapperViewListLifeCycleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;


# direct methods
.method private constructor <init>(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperViewListLifeCycleListener;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;
    .param p2, "x1"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$1;

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperViewListLifeCycleListener;-><init>(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)V

    return-void
.end method


# virtual methods
.method public onDispatchDrawOccurred(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide/16 v4, 0x0

    .line 532
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 533
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperViewListLifeCycleListener;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperViewListLifeCycleListener;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    invoke-static {v1}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->access$800(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getFixedFirstVisibleItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->access$900(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;I)V

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperViewListLifeCycleListener;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    invoke-static {v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->access$200(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperViewListLifeCycleListener;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    invoke-static {v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->access$1000(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 537
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 538
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperViewListLifeCycleListener;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    invoke-static {v1}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->access$1100(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)I

    move-result v1

    iget-object v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperViewListLifeCycleListener;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperViewListLifeCycleListener;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    invoke-virtual {v3}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->getBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 539
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperViewListLifeCycleListener;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperViewListLifeCycleListener;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    invoke-static {v1}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->access$200(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, p1, v1, v4, v5}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->access$1200(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 540
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 545
    :cond_1
    :goto_0
    return-void

    .line 542
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperViewListLifeCycleListener;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperViewListLifeCycleListener;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    invoke-static {v1}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->access$200(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, p1, v1, v4, v5}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->access$1300(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method
