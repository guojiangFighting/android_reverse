.class Lcom/dodonew/online/fragment/NewsFragment$3;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/NewsFragment;->queryNewsData(Ljava/lang/String;)V
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
        "Lcom/dodonew/online/bean/News;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/NewsFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/NewsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/NewsFragment;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/dodonew/online/fragment/NewsFragment$3;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

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
            "Lcom/dodonew/online/bean/News;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "requestResult":Lcom/dodonew/online/bean/RequestResult;, "Lcom/dodonew/online/bean/RequestResult<Ljava/util/List<Lcom/dodonew/online/bean/News;>;>;"
    const/4 v2, 0x1

    .line 163
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment$3;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    invoke-static {v0, v2}, Lcom/dodonew/online/fragment/NewsFragment;->access$602(Lcom/dodonew/online/fragment/NewsFragment;Z)Z

    .line 164
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v1, p0, Lcom/dodonew/online/fragment/NewsFragment$3;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/dodonew/online/fragment/NewsFragment;->access$700(Lcom/dodonew/online/fragment/NewsFragment;Ljava/util/List;)V

    .line 166
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment$3;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/NewsFragment;->access$800(Lcom/dodonew/online/fragment/NewsFragment;)V

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment$3;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/NewsFragment;->access$900(Lcom/dodonew/online/fragment/NewsFragment;)Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment$3;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/NewsFragment;->access$900(Lcom/dodonew/online/fragment/NewsFragment;)Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/dodonew/online/interfaces/OnNetworkResponseListener;->onResponse(Z)V

    .line 174
    :cond_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment$3;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/fragment/NewsFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 160
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/fragment/NewsFragment$3;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
