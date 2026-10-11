.class Lcom/dodonew/online/ui/ActiveDetailActivity$3;
.super Ljava/lang/Object;
.source "ActiveDetailActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ActiveDetailActivity;->queryActiveDetail(Ljava/lang/String;)V
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
        "Lcom/dodonew/online/bean/ActiveResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/ActiveDetailActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/ActiveDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/ActiveDetailActivity;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/dodonew/online/ui/ActiveDetailActivity$3;->this$0:Lcom/dodonew/online/ui/ActiveDetailActivity;

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
            "Lcom/dodonew/online/bean/ActiveResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "requestResult":Lcom/dodonew/online/bean/RequestResult;, "Lcom/dodonew/online/bean/RequestResult<Lcom/dodonew/online/bean/ActiveResult;>;"
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/dodonew/online/ui/ActiveDetailActivity$3;->this$0:Lcom/dodonew/online/ui/ActiveDetailActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/ActiveResult;

    iget-object v0, v0, Lcom/dodonew/online/bean/ActiveResult;->result:Lcom/dodonew/online/bean/Active;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/ActiveDetailActivity;->access$100(Lcom/dodonew/online/ui/ActiveDetailActivity;Lcom/dodonew/online/bean/Active;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/ActiveDetailActivity$3;->this$0:Lcom/dodonew/online/ui/ActiveDetailActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/ActiveDetailActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 73
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/ActiveDetailActivity$3;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
