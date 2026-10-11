.class Lcom/dodonew/online/fragment/GuessFragment$3;
.super Ljava/lang/Object;
.source "GuessFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/GuessFragment;->queryGuessData()V
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
        "Ljava/util/List",
        "<",
        "Lcom/dodonew/online/bean/Category;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/GuessFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/GuessFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/GuessFragment;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/dodonew/online/fragment/GuessFragment$3;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

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
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Category;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "requestResult":Lcom/dodonew/online/bean/RequestResult;, "Lcom/dodonew/online/bean/RequestResult<Ljava/util/List<Lcom/dodonew/online/bean/Category;>;>;"
    const/4 v2, 0x1

    .line 126
    iget-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment$3;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    invoke-static {v0, v2}, Lcom/dodonew/online/fragment/GuessFragment;->access$102(Lcom/dodonew/online/fragment/GuessFragment;Z)Z

    .line 127
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v1, p0, Lcom/dodonew/online/fragment/GuessFragment$3;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/dodonew/online/fragment/GuessFragment;->access$200(Lcom/dodonew/online/fragment/GuessFragment;Ljava/util/List;)V

    .line 129
    iget-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment$3;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/GuessFragment;->access$300(Lcom/dodonew/online/fragment/GuessFragment;)V

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment$3;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/GuessFragment;->access$400(Lcom/dodonew/online/fragment/GuessFragment;)Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment$3;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/GuessFragment;->access$400(Lcom/dodonew/online/fragment/GuessFragment;)Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/dodonew/online/interfaces/OnNetworkResponseListener;->onResponse(Z)V

    .line 140
    :cond_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment$3;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/GuessFragment;->access$400(Lcom/dodonew/online/fragment/GuessFragment;)Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment$3;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/GuessFragment;->access$400(Lcom/dodonew/online/fragment/GuessFragment;)Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/dodonew/online/interfaces/OnNetworkResponseListener;->isDataEmpty(Z)V

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment$3;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/fragment/GuessFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 123
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/fragment/GuessFragment$3;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
