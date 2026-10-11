.class Lcom/dodonew/online/ui/PayActivity$6;
.super Ljava/lang/Object;
.source "PayActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/PayActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/ui/PayActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/PayActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/PayActivity;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/dodonew/online/ui/PayActivity$6;->this$0:Lcom/dodonew/online/ui/PayActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/PayActivity$6;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 2
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 276
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity$6;->val$cmd:Ljava/lang/String;

    const-string v1, "pay/order/discount"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity$6;->this$0:Lcom/dodonew/online/ui/PayActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/Recharge;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/PayActivity;->access$300(Lcom/dodonew/online/ui/PayActivity;Lcom/dodonew/online/bean/Recharge;)V

    .line 279
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity$6;->this$0:Lcom/dodonew/online/ui/PayActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/PayActivity;->access$400(Lcom/dodonew/online/ui/PayActivity;)V

    .line 293
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity$6;->this$0:Lcom/dodonew/online/ui/PayActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/PayActivity;->dissProgress()V

    .line 294
    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity$6;->val$cmd:Ljava/lang/String;

    const-string v1, "pay/order"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity$6;->this$0:Lcom/dodonew/online/ui/PayActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/PayActivity;->access$500(Lcom/dodonew/online/ui/PayActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity$6;->this$0:Lcom/dodonew/online/ui/PayActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/WXPay;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/WXPay;->getResult()Lcom/dodonew/online/bean/WXPay$WXPayResult;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/PayActivity;->access$600(Lcom/dodonew/online/ui/PayActivity;Lcom/dodonew/online/bean/WXPay$WXPayResult;)V

    goto :goto_0

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity$6;->this$0:Lcom/dodonew/online/ui/PayActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/PayActivity;->access$500(Lcom/dodonew/online/ui/PayActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZFB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity$6;->this$0:Lcom/dodonew/online/ui/PayActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/ZFBPay;

    iget-object v0, v0, Lcom/dodonew/online/bean/ZFBPay;->result:Lcom/dodonew/online/bean/ZFBPay$ZFBPayResult;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/PayActivity;->access$700(Lcom/dodonew/online/ui/PayActivity;Lcom/dodonew/online/bean/ZFBPay$ZFBPayResult;)V

    goto :goto_0

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity$6;->val$cmd:Ljava/lang/String;

    const-string v1, "pay/order/discount"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 289
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity$6;->this$0:Lcom/dodonew/online/ui/PayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/PayActivity;->access$300(Lcom/dodonew/online/ui/PayActivity;Lcom/dodonew/online/bean/Recharge;)V

    .line 291
    :cond_4
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity$6;->this$0:Lcom/dodonew/online/ui/PayActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/PayActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 273
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/PayActivity$6;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
