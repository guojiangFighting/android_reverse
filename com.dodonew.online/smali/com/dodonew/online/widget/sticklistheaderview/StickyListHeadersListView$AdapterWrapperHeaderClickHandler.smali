.class Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$AdapterWrapperHeaderClickHandler;
.super Ljava/lang/Object;
.source "StickyListHeadersListView.java"

# interfaces
.implements Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper$OnHeaderClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterWrapperHeaderClickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;


# direct methods
.method private constructor <init>(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$AdapterWrapperHeaderClickHandler;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;
    .param p2, "x1"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$1;

    .prologue
    .line 549
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$AdapterWrapperHeaderClickHandler;-><init>(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)V

    return-void
.end method


# virtual methods
.method public onHeaderClick(Landroid/view/View;IJ)V
    .locals 7
    .param p1, "header"    # Landroid/view/View;
    .param p2, "itemPosition"    # I
    .param p3, "headerId"    # J

    .prologue
    .line 554
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$AdapterWrapperHeaderClickHandler;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    invoke-static {v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->access$500(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnHeaderClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$AdapterWrapperHeaderClickHandler;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnHeaderClickListener;->onHeaderClick(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;Landroid/view/View;IJZ)V

    .line 557
    return-void
.end method
