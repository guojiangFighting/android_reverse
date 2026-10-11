.class Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperListScrollListener;
.super Ljava/lang/Object;
.source "StickyListHeadersListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrapperListScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;


# direct methods
.method private constructor <init>(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperListScrollListener;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;
    .param p2, "x1"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$1;

    .prologue
    .line 504
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperListScrollListener;-><init>(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 509
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperListScrollListener;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    invoke-static {v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->access$700(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperListScrollListener;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    invoke-static {v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->access$700(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperListScrollListener;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperListScrollListener;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    invoke-static {v1}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->access$800(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getFixedFirstVisibleItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->access$900(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;I)V

    .line 514
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 518
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperListScrollListener;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    invoke-static {v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->access$700(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperListScrollListener;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    invoke-static {v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->access$700(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 522
    :cond_0
    return-void
.end method
