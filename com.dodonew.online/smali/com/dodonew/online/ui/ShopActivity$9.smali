.class Lcom/dodonew/online/ui/ShopActivity$9;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "ShopActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ShopActivity;->setMenuAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/ShopActivity;

.field final synthetic val$headersDecor:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/ShopActivity;Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/ShopActivity;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/dodonew/online/ui/ShopActivity$9;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/ShopActivity$9;->val$headersDecor:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity$9;->val$headersDecor:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->invalidateHeaders()V

    .line 314
    return-void
.end method
