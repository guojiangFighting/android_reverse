.class Lcom/dodonew/online/fragment/ActiveFragment$3;
.super Ljava/lang/Object;
.source "ActiveFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/ActiveFragment;->queryActiveData(Ljava/lang/String;)V
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
        "Lcom/dodonew/online/bean/RequestResult",
        "<",
        "Lcom/dodonew/online/bean/ActivePage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/ActiveFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/ActiveFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/ActiveFragment;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/dodonew/online/fragment/ActiveFragment$3;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dodonew/online/bean/RequestResult",
            "<",
            "Lcom/dodonew/online/bean/ActivePage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "requestResult":Lcom/dodonew/online/bean/RequestResult;, "Lcom/dodonew/online/bean/RequestResult<Lcom/dodonew/online/bean/ActivePage;>;"
    const/4 v2, 0x1

    .line 159
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment$3;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    invoke-static {v0, v2}, Lcom/dodonew/online/fragment/ActiveFragment;->access$602(Lcom/dodonew/online/fragment/ActiveFragment;Z)Z

    .line 160
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v1, p0, Lcom/dodonew/online/fragment/ActiveFragment$3;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/ActivePage;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/ActivePage;->getResult()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dodonew/online/fragment/ActiveFragment;->access$700(Lcom/dodonew/online/fragment/ActiveFragment;Ljava/util/List;)V

    .line 162
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment$3;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/ActiveFragment;->access$800(Lcom/dodonew/online/fragment/ActiveFragment;)V

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment$3;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/ActiveFragment;->access$900(Lcom/dodonew/online/fragment/ActiveFragment;)Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment$3;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/ActiveFragment;->access$900(Lcom/dodonew/online/fragment/ActiveFragment;)Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/dodonew/online/interfaces/OnNetworkResponseListener;->onResponse(Z)V

    .line 170
    :cond_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment$3;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/fragment/ActiveFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 156
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/fragment/ActiveFragment$3;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
