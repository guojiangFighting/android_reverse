.class Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$AdapterWrapperDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "StickyListHeadersListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterWrapperDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;


# direct methods
.method private constructor <init>(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$AdapterWrapperDataSetObserver;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;
    .param p2, "x1"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$1;

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$AdapterWrapperDataSetObserver;-><init>(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$AdapterWrapperDataSetObserver;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    invoke-static {v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->access$600(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)V

    .line 495
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$AdapterWrapperDataSetObserver;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    invoke-static {v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->access$600(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)V

    .line 500
    return-void
.end method
