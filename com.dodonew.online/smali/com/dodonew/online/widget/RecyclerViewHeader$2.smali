.class Lcom/dodonew/online/widget/RecyclerViewHeader$2;
.super Ljava/lang/Object;
.source "RecyclerViewHeader.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/RecyclerViewHeader;->setupHeader(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/RecyclerViewHeader;

.field final synthetic val$recycler:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/RecyclerViewHeader;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/RecyclerViewHeader;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/dodonew/online/widget/RecyclerViewHeader$2;->this$0:Lcom/dodonew/online/widget/RecyclerViewHeader;

    iput-object p2, p0, Lcom/dodonew/online/widget/RecyclerViewHeader$2;->val$recycler:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 170
    iget-object v2, p0, Lcom/dodonew/online/widget/RecyclerViewHeader$2;->this$0:Lcom/dodonew/online/widget/RecyclerViewHeader;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/RecyclerViewHeader;->getHeight()I

    move-result v0

    .line 171
    .local v0, "height":I
    if-lez v0, :cond_1

    .line 172
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 173
    iget-object v2, p0, Lcom/dodonew/online/widget/RecyclerViewHeader$2;->this$0:Lcom/dodonew/online/widget/RecyclerViewHeader;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/RecyclerViewHeader;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 178
    :goto_0
    iget-object v2, p0, Lcom/dodonew/online/widget/RecyclerViewHeader$2;->this$0:Lcom/dodonew/online/widget/RecyclerViewHeader;

    invoke-static {v2}, Lcom/dodonew/online/widget/RecyclerViewHeader;->access$100(Lcom/dodonew/online/widget/RecyclerViewHeader;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/dodonew/online/widget/RecyclerViewHeader$2;->this$0:Lcom/dodonew/online/widget/RecyclerViewHeader;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/RecyclerViewHeader;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 180
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v2

    .line 181
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    .line 184
    .end local v1    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/dodonew/online/widget/RecyclerViewHeader$2;->val$recycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/dodonew/online/widget/RecyclerViewHeader$HeaderItemDecoration;

    iget-object v4, p0, Lcom/dodonew/online/widget/RecyclerViewHeader$2;->this$0:Lcom/dodonew/online/widget/RecyclerViewHeader;

    iget-object v5, p0, Lcom/dodonew/online/widget/RecyclerViewHeader$2;->val$recycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/dodonew/online/widget/RecyclerViewHeader$HeaderItemDecoration;-><init>(Lcom/dodonew/online/widget/RecyclerViewHeader;Landroid/support/v7/widget/RecyclerView$LayoutManager;I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;I)V

    .line 186
    :cond_1
    return-void

    .line 175
    :cond_2
    iget-object v2, p0, Lcom/dodonew/online/widget/RecyclerViewHeader$2;->this$0:Lcom/dodonew/online/widget/RecyclerViewHeader;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/RecyclerViewHeader;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
