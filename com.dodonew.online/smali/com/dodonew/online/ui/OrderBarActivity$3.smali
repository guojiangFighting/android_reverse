.class Lcom/dodonew/online/ui/OrderBarActivity$3;
.super Ljava/lang/Object;
.source "OrderBarActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/OrderBarActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/ui/OrderBarActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/OrderBarActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/OrderBarActivity;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/dodonew/online/ui/OrderBarActivity$3;->this$0:Lcom/dodonew/online/ui/OrderBarActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/OrderBarActivity$3;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 2
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 186
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity$3;->val$cmd:Ljava/lang/String;

    const-string v1, "oth/bookEntrence"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity$3;->this$0:Lcom/dodonew/online/ui/OrderBarActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/OrderBarActivity;->access$000(Lcom/dodonew/online/ui/OrderBarActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "queryTableArea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v1, p0, Lcom/dodonew/online/ui/OrderBarActivity$3;->this$0:Lcom/dodonew/online/ui/OrderBarActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/TableAreaResult;

    iget-object v0, v0, Lcom/dodonew/online/bean/TableAreaResult;->center:Lcom/dodonew/online/bean/TableAreaResult$Center;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/OrderBarActivity;->access$100(Lcom/dodonew/online/ui/OrderBarActivity;Lcom/dodonew/online/bean/TableAreaResult$Center;)V

    .line 197
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity$3;->this$0:Lcom/dodonew/online/ui/OrderBarActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/OrderBarActivity;->dissProgress()V

    .line 198
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity$3;->this$0:Lcom/dodonew/online/ui/OrderBarActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/OrderBarActivity;->access$000(Lcom/dodonew/online/ui/OrderBarActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "order"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v1, p0, Lcom/dodonew/online/ui/OrderBarActivity$3;->this$0:Lcom/dodonew/online/ui/OrderBarActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/OrderResult;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/OrderBarActivity;->access$200(Lcom/dodonew/online/ui/OrderBarActivity;Lcom/dodonew/online/bean/OrderResult;)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity$3;->this$0:Lcom/dodonew/online/ui/OrderBarActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/OrderBarActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 183
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/OrderBarActivity$3;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
