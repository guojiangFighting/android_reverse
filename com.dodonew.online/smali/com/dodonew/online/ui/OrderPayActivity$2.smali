.class Lcom/dodonew/online/ui/OrderPayActivity$2;
.super Ljava/lang/Object;
.source "OrderPayActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/OrderPayActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/ui/OrderPayActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/OrderPayActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/OrderPayActivity;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/dodonew/online/ui/OrderPayActivity$2;->this$0:Lcom/dodonew/online/ui/OrderPayActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/OrderPayActivity$2;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 2
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 101
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderPayActivity$2;->val$cmd:Ljava/lang/String;

    const-string v1, "oth/bookPay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderPayActivity$2;->this$0:Lcom/dodonew/online/ui/OrderPayActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/OrderPayActivity;->access$000(Lcom/dodonew/online/ui/OrderPayActivity;)V

    .line 108
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderPayActivity$2;->this$0:Lcom/dodonew/online/ui/OrderPayActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/OrderPayActivity;->dissProgress()V

    .line 109
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderPayActivity$2;->this$0:Lcom/dodonew/online/ui/OrderPayActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/OrderPayActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 98
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/OrderPayActivity$2;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
