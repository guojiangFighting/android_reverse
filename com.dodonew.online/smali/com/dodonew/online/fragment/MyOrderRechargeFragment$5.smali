.class Lcom/dodonew/online/fragment/MyOrderRechargeFragment$5;
.super Ljava/lang/Object;
.source "MyOrderRechargeFragment.java"

# interfaces
.implements Lcom/dodonew/online/interfaces/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->setOrderSeatAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/MyOrderRechargeFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$5;->this$0:Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 207
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$5;->this$0:Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    invoke-virtual {v1}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "orderRecharge"

    iget-object v1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$5;->this$0:Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    invoke-static {v1}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->access$700(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 209
    iget-object v1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$5;->this$0:Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    invoke-virtual {v1, v0}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->startActivity(Landroid/content/Intent;)V

    .line 210
    return-void
.end method
