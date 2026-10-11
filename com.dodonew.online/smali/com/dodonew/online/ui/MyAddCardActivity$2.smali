.class Lcom/dodonew/online/ui/MyAddCardActivity$2;
.super Ljava/lang/Object;
.source "MyAddCardActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/MyAddCardActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/ui/MyAddCardActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/MyAddCardActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/MyAddCardActivity;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/dodonew/online/ui/MyAddCardActivity$2;->this$0:Lcom/dodonew/online/ui/MyAddCardActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/MyAddCardActivity$2;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 2
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 146
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity$2;->val$cmd:Ljava/lang/String;

    const-string v1, "netCard/addcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lcom/dodonew/online/ui/MyAddCardActivity$2;->this$0:Lcom/dodonew/online/ui/MyAddCardActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/Card;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/MyAddCardActivity;->access$000(Lcom/dodonew/online/ui/MyAddCardActivity;Lcom/dodonew/online/bean/Card;)V

    .line 154
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity$2;->this$0:Lcom/dodonew/online/ui/MyAddCardActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/MyAddCardActivity;->dissProgress()V

    .line 155
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/MyAddCardActivity$2;->this$0:Lcom/dodonew/online/ui/MyAddCardActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/MyAddCardActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 143
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/MyAddCardActivity$2;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
