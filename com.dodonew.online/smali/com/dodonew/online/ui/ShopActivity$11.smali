.class Lcom/dodonew/online/ui/ShopActivity$11;
.super Ljava/lang/Object;
.source "ShopActivity.java"

# interfaces
.implements Lcom/dodonew/online/interfaces/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ShopActivity;->initMenutypeEvent()V
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
    .line 411
    iput-object p1, p0, Lcom/dodonew/online/ui/ShopActivity$11;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 414
    iget-object v3, p0, Lcom/dodonew/online/ui/ShopActivity$11;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity$11;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/ShopActivity;->access$1300(Lcom/dodonew/online/ui/ShopActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/bean/MenuType;

    invoke-static {v3, v2}, Lcom/dodonew/online/ui/ShopActivity;->access$1202(Lcom/dodonew/online/ui/ShopActivity;Lcom/dodonew/online/bean/MenuType;)Lcom/dodonew/online/bean/MenuType;

    .line 415
    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity$11;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/dodonew/online/ui/ShopActivity;->access$1402(Lcom/dodonew/online/ui/ShopActivity;Z)Z

    .line 416
    add-int/lit8 v2, p2, -0x1

    if-ltz v2, :cond_1

    .line 417
    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity$11;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/ShopActivity;->access$1300(Lcom/dodonew/online/ui/ShopActivity;)Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, p2, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/bean/MenuType;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/MenuType;->getMenuTypeID()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "id":Ljava/lang/String;
    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity$11;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/ShopActivity;->access$1500(Lcom/dodonew/online/ui/ShopActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    .end local v0    # "id":Ljava/lang/String;
    :goto_0
    return-void

    .line 421
    .restart local v0    # "id":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity$11;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v2, v0}, Lcom/dodonew/online/ui/ShopActivity;->access$1600(Lcom/dodonew/online/ui/ShopActivity;Ljava/lang/String;)I

    move-result v1

    .line 422
    .local v1, "pos":I
    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity$11;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/ShopActivity;->access$1700(Lcom/dodonew/online/ui/ShopActivity;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 423
    const-string v2, "yang"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "     lll"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "pos":I
    :goto_1
    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity$11;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/ShopActivity;->access$1800(Lcom/dodonew/online/ui/ShopActivity;)Lcom/dodonew/online/adapter/MenuTypeAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/dodonew/online/adapter/MenuTypeAdapter;->setPos(I)V

    goto :goto_0

    .line 425
    :cond_1
    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity$11;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/ShopActivity;->access$1700(Lcom/dodonew/online/ui/ShopActivity;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1
.end method
