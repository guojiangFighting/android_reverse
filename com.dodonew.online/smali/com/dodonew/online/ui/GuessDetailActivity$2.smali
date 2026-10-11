.class Lcom/dodonew/online/ui/GuessDetailActivity$2;
.super Ljava/lang/Object;
.source "GuessDetailActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/GuessDetailActivity;->queryGuessDetail(Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/dodonew/online/bean/Guess;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/GuessDetailActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/GuessDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/GuessDetailActivity;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/dodonew/online/ui/GuessDetailActivity$2;->this$0:Lcom/dodonew/online/ui/GuessDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dodonew/online/bean/RequestResult",
            "<",
            "Lcom/dodonew/online/bean/Guess;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "requestResult":Lcom/dodonew/online/bean/RequestResult;, "Lcom/dodonew/online/bean/RequestResult<Lcom/dodonew/online/bean/Guess;>;"
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/dodonew/online/ui/GuessDetailActivity$2;->this$0:Lcom/dodonew/online/ui/GuessDetailActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/Guess;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/GuessDetailActivity;->access$000(Lcom/dodonew/online/ui/GuessDetailActivity;Lcom/dodonew/online/bean/Guess;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessDetailActivity$2;->this$0:Lcom/dodonew/online/ui/GuessDetailActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/GuessDetailActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 92
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/GuessDetailActivity$2;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
