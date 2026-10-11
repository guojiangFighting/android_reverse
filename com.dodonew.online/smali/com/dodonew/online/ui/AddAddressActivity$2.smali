.class Lcom/dodonew/online/ui/AddAddressActivity$2;
.super Ljava/lang/Object;
.source "AddAddressActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/AddAddressActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/ui/AddAddressActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/AddAddressActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/AddAddressActivity;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/dodonew/online/ui/AddAddressActivity$2;->this$0:Lcom/dodonew/online/ui/AddAddressActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/AddAddressActivity$2;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 2
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity$2;->this$0:Lcom/dodonew/online/ui/AddAddressActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/AddAddressActivity;->dissProgress()V

    .line 111
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity$2;->val$cmd:Ljava/lang/String;

    const-string v1, "gift/addAddress"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity$2;->this$0:Lcom/dodonew/online/ui/AddAddressActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/AddAddressActivity;->access$000(Lcom/dodonew/online/ui/AddAddressActivity;)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity$2;->this$0:Lcom/dodonew/online/ui/AddAddressActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/AddAddressActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 107
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/AddAddressActivity$2;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
