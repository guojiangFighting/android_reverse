.class Lcom/dodonew/online/ui/OrderRechargeDetailActivity$2;
.super Ljava/lang/Object;
.source "OrderRechargeDetailActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/ui/OrderRechargeDetailActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/OrderRechargeDetailActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/OrderRechargeDetailActivity;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity$2;->this$0:Lcom/dodonew/online/ui/OrderRechargeDetailActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity$2;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 2
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 87
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity$2;->val$cmd:Ljava/lang/String;

    const-string v1, "pay/detail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity$2;->this$0:Lcom/dodonew/online/ui/OrderRechargeDetailActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/OrderRechargeResult;

    iget-object v0, v0, Lcom/dodonew/online/bean/OrderRechargeResult;->result:Lcom/dodonew/online/bean/OrderRecharge;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->access$000(Lcom/dodonew/online/ui/OrderRechargeDetailActivity;Lcom/dodonew/online/bean/OrderRecharge;)V

    .line 94
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity$2;->this$0:Lcom/dodonew/online/ui/OrderRechargeDetailActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->dissProgress()V

    .line 95
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity$2;->this$0:Lcom/dodonew/online/ui/OrderRechargeDetailActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 84
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/OrderRechargeDetailActivity$2;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
