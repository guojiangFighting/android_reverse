.class Lcom/dodonew/online/fragment/MyOrderRechargeFragment$3;
.super Ljava/lang/Object;
.source "MyOrderRechargeFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/dodonew/online/bean/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$3;->this$0:Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    iput-object p2, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$3;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 3
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 155
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$3;->val$cmd:Ljava/lang/String;

    const-string v1, "user/getUserOrders"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$3;->this$0:Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->access$402(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;Z)Z

    .line 158
    iget-object v1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$3;->this$0:Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/MyOrderRechargeResult;

    invoke-static {v1, v0}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->access$500(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;Lcom/dodonew/online/bean/MyOrderRechargeResult;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$3;->this$0:Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->access$600(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;)Lcom/dodonew/online/widget/MultiStateView;

    move-result-object v0

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 152
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$3;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
