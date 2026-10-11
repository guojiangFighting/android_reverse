.class Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper$2;
.super Ljava/lang/Object;
.source "AdapterWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;->configureHeader(Lcom/dodonew/online/widget/sticklistheaderview/WrapperView;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper$2;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    iput p2, p0, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper$2;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    invoke-static {v2}, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;->access$300(Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;)Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper$OnHeaderClickListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper$2;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    iget-object v2, v2, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;->mDelegate:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersAdapter;

    iget v3, p0, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper$2;->val$position:I

    invoke-interface {v2, v3}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v0

    .line 140
    .local v0, "headerId":J
    iget-object v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper$2;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    invoke-static {v2}, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;->access$300(Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;)Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper$OnHeaderClickListener;

    move-result-object v2

    iget v3, p0, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper$2;->val$position:I

    invoke-interface {v2, p1, v3, v0, v1}, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper$OnHeaderClickListener;->onHeaderClick(Landroid/view/View;IJ)V

    .line 142
    .end local v0    # "headerId":J
    :cond_0
    return-void
.end method
