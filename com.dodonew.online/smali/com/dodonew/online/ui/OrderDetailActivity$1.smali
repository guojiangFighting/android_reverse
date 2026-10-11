.class Lcom/dodonew/online/ui/OrderDetailActivity$1;
.super Ljava/lang/Object;
.source "OrderDetailActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/OrderDetailActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/ui/OrderDetailActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/OrderDetailActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/OrderDetailActivity;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/dodonew/online/ui/OrderDetailActivity$1;->this$0:Lcom/dodonew/online/ui/OrderDetailActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/OrderDetailActivity$1;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 2
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 100
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderDetailActivity$1;->val$cmd:Ljava/lang/String;

    const-string v1, "oth/bookPay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderDetailActivity$1;->this$0:Lcom/dodonew/online/ui/OrderDetailActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/OrderDetailActivity;->dissProgress()V

    .line 108
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 97
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/OrderDetailActivity$1;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
