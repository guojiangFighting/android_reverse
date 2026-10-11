.class Lcom/dodonew/online/view/GuessDetailView$3;
.super Ljava/lang/Object;
.source "GuessDetailView.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/GuessDetailView;->sendGuess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/dodonew/online/bean/ScoreStr;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/GuessDetailView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/GuessDetailView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/GuessDetailView;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/dodonew/online/view/GuessDetailView$3;->this$0:Lcom/dodonew/online/view/GuessDetailView;

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
            "Lcom/dodonew/online/bean/ScoreStr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "requestResult":Lcom/dodonew/online/bean/RequestResult;, "Lcom/dodonew/online/bean/RequestResult<Lcom/dodonew/online/bean/ScoreStr;>;"
    const/4 v2, -0x1

    .line 151
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/dodonew/online/view/GuessDetailView$3;->this$0:Lcom/dodonew/online/view/GuessDetailView;

    invoke-static {v0}, Lcom/dodonew/online/view/GuessDetailView;->access$100(Lcom/dodonew/online/view/GuessDetailView;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 154
    iget-object v1, p0, Lcom/dodonew/online/view/GuessDetailView$3;->this$0:Lcom/dodonew/online/view/GuessDetailView;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/ScoreStr;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/ScoreStr;->getScore()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dodonew/online/view/GuessDetailView;->access$202(Lcom/dodonew/online/view/GuessDetailView;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/dodonew/online/view/GuessDetailView$3;->this$0:Lcom/dodonew/online/view/GuessDetailView;

    invoke-static {v0}, Lcom/dodonew/online/view/GuessDetailView;->access$300(Lcom/dodonew/online/view/GuessDetailView;)Lcom/dodonew/online/adapter/GuessDetailAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/GuessDetailAdapter;->setOkPos(Z)V

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/view/GuessDetailView$3;->this$0:Lcom/dodonew/online/view/GuessDetailView;

    invoke-static {v0}, Lcom/dodonew/online/view/GuessDetailView;->access$400(Lcom/dodonew/online/view/GuessDetailView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/base/BaseActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/base/BaseActivity;->dissProgress()V

    .line 161
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/GuessDetailView$3;->this$0:Lcom/dodonew/online/view/GuessDetailView;

    invoke-static {v0}, Lcom/dodonew/online/view/GuessDetailView;->access$100(Lcom/dodonew/online/view/GuessDetailView;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 158
    iget-object v0, p0, Lcom/dodonew/online/view/GuessDetailView$3;->this$0:Lcom/dodonew/online/view/GuessDetailView;

    invoke-static {v0}, Lcom/dodonew/online/view/GuessDetailView;->access$300(Lcom/dodonew/online/view/GuessDetailView;)Lcom/dodonew/online/adapter/GuessDetailAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/GuessDetailAdapter;->setOkPos(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 148
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/view/GuessDetailView$3;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
