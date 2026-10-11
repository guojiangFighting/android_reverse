.class Lcom/dodonew/online/ui/AddressActivity$3;
.super Ljava/lang/Object;
.source "AddressActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/AddressActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/ui/AddressActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/AddressActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/AddressActivity;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/dodonew/online/ui/AddressActivity$3;->this$0:Lcom/dodonew/online/ui/AddressActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/AddressActivity$3;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 2
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 123
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity$3;->val$cmd:Ljava/lang/String;

    const-string v1, "gift/queryAddress"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v1, p0, Lcom/dodonew/online/ui/AddressActivity$3;->this$0:Lcom/dodonew/online/ui/AddressActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/AddressResult;

    iget-object v0, v0, Lcom/dodonew/online/bean/AddressResult;->addresses:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/AddressActivity;->access$000(Lcom/dodonew/online/ui/AddressActivity;Ljava/util/List;)V

    .line 126
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity$3;->this$0:Lcom/dodonew/online/ui/AddressActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/AddressActivity;->access$100(Lcom/dodonew/online/ui/AddressActivity;)V

    .line 134
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity$3;->this$0:Lcom/dodonew/online/ui/AddressActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/AddressActivity;->access$400(Lcom/dodonew/online/ui/AddressActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity$3;->this$0:Lcom/dodonew/online/ui/AddressActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/AddressActivity;->dissProgress()V

    .line 137
    :cond_1
    return-void

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity$3;->val$cmd:Ljava/lang/String;

    const-string v1, "gift/delAddress"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity$3;->this$0:Lcom/dodonew/online/ui/AddressActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/AddressActivity;->access$300(Lcom/dodonew/online/ui/AddressActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/ui/AddressActivity$3;->this$0:Lcom/dodonew/online/ui/AddressActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/AddressActivity;->access$200(Lcom/dodonew/online/ui/AddressActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity$3;->this$0:Lcom/dodonew/online/ui/AddressActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/AddressActivity;->access$100(Lcom/dodonew/online/ui/AddressActivity;)V

    goto :goto_0

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity$3;->this$0:Lcom/dodonew/online/ui/AddressActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/AddressActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 120
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/AddressActivity$3;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
