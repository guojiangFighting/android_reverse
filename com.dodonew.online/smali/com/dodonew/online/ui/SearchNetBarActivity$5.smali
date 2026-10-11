.class Lcom/dodonew/online/ui/SearchNetBarActivity$5;
.super Ljava/lang/Object;
.source "SearchNetBarActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/SearchNetBarActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/SearchNetBarActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/SearchNetBarActivity;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$5;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$5;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 2
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 257
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$5;->val$cmd:Ljava/lang/String;

    const-string v1, "oth/hot/operater"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$5;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/NetBars;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/NetBars;->getNetbars()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$800(Lcom/dodonew/online/ui/SearchNetBarActivity;Ljava/util/List;)V

    .line 260
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$5;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$900(Lcom/dodonew/online/ui/SearchNetBarActivity;)V

    .line 267
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$5;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->dissProgress()V

    .line 268
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$5;->val$cmd:Ljava/lang/String;

    const-string v1, "oth/netbarList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$5;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/NetBars;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/NetBars;->getNetbars()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$1000(Lcom/dodonew/online/ui/SearchNetBarActivity;Ljava/util/List;)V

    goto :goto_0

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$5;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 254
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/SearchNetBarActivity$5;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
