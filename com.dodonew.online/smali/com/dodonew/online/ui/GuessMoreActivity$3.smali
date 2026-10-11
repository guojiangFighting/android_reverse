.class Lcom/dodonew/online/ui/GuessMoreActivity$3;
.super Ljava/lang/Object;
.source "GuessMoreActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/GuessMoreActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/ui/GuessMoreActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/GuessMoreActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/GuessMoreActivity;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/dodonew/online/ui/GuessMoreActivity$3;->this$0:Lcom/dodonew/online/ui/GuessMoreActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/GuessMoreActivity$3;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 2
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 180
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity$3;->val$cmd:Ljava/lang/String;

    const-string v1, "guess/more"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v1, p0, Lcom/dodonew/online/ui/GuessMoreActivity$3;->this$0:Lcom/dodonew/online/ui/GuessMoreActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/RacePage;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/RacePage;->getResults()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/GuessMoreActivity;->access$600(Lcom/dodonew/online/ui/GuessMoreActivity;Ljava/util/List;)V

    .line 183
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity$3;->this$0:Lcom/dodonew/online/ui/GuessMoreActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/GuessMoreActivity;->access$700(Lcom/dodonew/online/ui/GuessMoreActivity;)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity$3;->this$0:Lcom/dodonew/online/ui/GuessMoreActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/GuessMoreActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 177
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/GuessMoreActivity$3;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
