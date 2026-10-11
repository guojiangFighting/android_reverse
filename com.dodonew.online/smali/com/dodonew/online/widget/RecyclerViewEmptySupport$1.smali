.class Lcom/dodonew/online/widget/RecyclerViewEmptySupport$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerViewEmptySupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/RecyclerViewEmptySupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/RecyclerViewEmptySupport;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/RecyclerViewEmptySupport;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/RecyclerViewEmptySupport;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/dodonew/online/widget/RecyclerViewEmptySupport$1;->this$0:Lcom/dodonew/online/widget/RecyclerViewEmptySupport;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 19
    iget-object v1, p0, Lcom/dodonew/online/widget/RecyclerViewEmptySupport$1;->this$0:Lcom/dodonew/online/widget/RecyclerViewEmptySupport;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/RecyclerViewEmptySupport;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 20
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<*>;"
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dodonew/online/widget/RecyclerViewEmptySupport$1;->this$0:Lcom/dodonew/online/widget/RecyclerViewEmptySupport;

    invoke-static {v1}, Lcom/dodonew/online/widget/RecyclerViewEmptySupport;->access$000(Lcom/dodonew/online/widget/RecyclerViewEmptySupport;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 22
    iget-object v1, p0, Lcom/dodonew/online/widget/RecyclerViewEmptySupport$1;->this$0:Lcom/dodonew/online/widget/RecyclerViewEmptySupport;

    invoke-static {v1}, Lcom/dodonew/online/widget/RecyclerViewEmptySupport;->access$000(Lcom/dodonew/online/widget/RecyclerViewEmptySupport;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object v1, p0, Lcom/dodonew/online/widget/RecyclerViewEmptySupport$1;->this$0:Lcom/dodonew/online/widget/RecyclerViewEmptySupport;

    invoke-virtual {v1, v3}, Lcom/dodonew/online/widget/RecyclerViewEmptySupport;->setVisibility(I)V

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/widget/RecyclerViewEmptySupport$1;->this$0:Lcom/dodonew/online/widget/RecyclerViewEmptySupport;

    invoke-static {v1}, Lcom/dodonew/online/widget/RecyclerViewEmptySupport;->access$000(Lcom/dodonew/online/widget/RecyclerViewEmptySupport;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v1, p0, Lcom/dodonew/online/widget/RecyclerViewEmptySupport$1;->this$0:Lcom/dodonew/online/widget/RecyclerViewEmptySupport;

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/RecyclerViewEmptySupport;->setVisibility(I)V

    goto :goto_0
.end method
