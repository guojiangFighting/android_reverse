.class Lcom/dodonew/online/ui/MyOrderActivity$1;
.super Ljava/lang/Object;
.source "MyOrderActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/MyOrderActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/ui/MyOrderActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/MyOrderActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/MyOrderActivity;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/dodonew/online/ui/MyOrderActivity$1;->this$0:Lcom/dodonew/online/ui/MyOrderActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/MyOrderActivity$1;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 2
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 84
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/dodonew/online/ui/MyOrderActivity$1;->val$cmd:Ljava/lang/String;

    const-string v1, "oth/bookOrderDetail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/MyOrderActivity$1;->this$0:Lcom/dodonew/online/ui/MyOrderActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/MyOrderActivity;->dissProgress()V

    .line 92
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/MyOrderActivity$1;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
