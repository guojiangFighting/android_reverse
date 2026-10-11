.class Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$2;
.super Ljava/lang/Object;
.source "StickyListHeadersListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->setOnHeaderClickListener(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnHeaderClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$2;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 643
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$2;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    invoke-static {v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->access$500(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnHeaderClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$2;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    iget-object v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$2;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    .line 644
    invoke-static {v2}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->access$200(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$2;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    .line 645
    invoke-static {v3}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->access$300(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$2;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    invoke-static {v4}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->access$400(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x1

    .line 643
    invoke-interface/range {v0 .. v6}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnHeaderClickListener;->onHeaderClick(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;Landroid/view/View;IJZ)V

    .line 646
    return-void
.end method
