.class Lcom/dodonew/online/ui/ShopActivity$13;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ShopActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ShopActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/ShopActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/ShopActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/ShopActivity;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/dodonew/online/ui/ShopActivity$13;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 445
    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity$13;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/ShopActivity;->access$1400(Lcom/dodonew/online/ui/ShopActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity$13;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/ShopActivity;->access$1700(Lcom/dodonew/online/ui/ShopActivity;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 449
    .local v1, "pos":I
    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity$13;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/ShopActivity;->access$1900(Lcom/dodonew/online/ui/ShopActivity;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 452
    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity$13;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/ShopActivity;->access$2000(Lcom/dodonew/online/ui/ShopActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/bean/Menu;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/Menu;->getMenuTypeId()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "id":Ljava/lang/String;
    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity$13;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/ShopActivity;->access$2100(Lcom/dodonew/online/ui/ShopActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 456
    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity$13;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v2, v0}, Lcom/dodonew/online/ui/ShopActivity;->access$2200(Lcom/dodonew/online/ui/ShopActivity;Ljava/lang/String;)I

    move-result v1

    .line 457
    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity$13;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/ShopActivity;->access$1800(Lcom/dodonew/online/ui/ShopActivity;)Lcom/dodonew/online/adapter/MenuTypeAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/dodonew/online/adapter/MenuTypeAdapter;->setPos(I)V

    .line 458
    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity$13;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/ShopActivity;->access$2300(Lcom/dodonew/online/ui/ShopActivity;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 459
    const-string v2, "yang"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    sdd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
