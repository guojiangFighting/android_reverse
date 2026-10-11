.class Lcom/dodonew/online/view/NetbarDetailTopView$6;
.super Ljava/lang/Object;
.source "NetbarDetailTopView.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/NetbarDetailTopView;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;Z)V
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
.field final synthetic this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

.field final synthetic val$cmd:Ljava/lang/String;

.field final synthetic val$isShow:Z


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/NetbarDetailTopView;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/NetbarDetailTopView;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/dodonew/online/view/NetbarDetailTopView$6;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    iput-object p2, p0, Lcom/dodonew/online/view/NetbarDetailTopView$6;->val$cmd:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/dodonew/online/view/NetbarDetailTopView$6;->val$isShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 2
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 252
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 253
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView$6;->val$cmd:Ljava/lang/String;

    const-string v1, "oth/ticket/list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarDetailTopView$6;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/Ticketes;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Ticketes;->getResult()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dodonew/online/view/NetbarDetailTopView;->access$900(Lcom/dodonew/online/view/NetbarDetailTopView;Ljava/util/List;)V

    .line 272
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView$6;->val$isShow:Z

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView$6;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    iget-object v0, v0, Lcom/dodonew/online/view/NetbarDetailTopView;->context:Landroid/content/Context;

    check-cast v0, Lcom/dodonew/online/base/ProgressActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/base/ProgressActivity;->dissProgress()V

    .line 275
    :cond_1
    return-void

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView$6;->val$cmd:Ljava/lang/String;

    const-string v1, "collect/add"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView$6;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    iget-object v0, v0, Lcom/dodonew/online/view/NetbarDetailTopView;->context:Landroid/content/Context;

    check-cast v0, Lcom/dodonew/online/base/ProgressActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/base/ProgressActivity;->showToast(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView$6;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarDetailTopView$6;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    invoke-static {v1}, Lcom/dodonew/online/view/NetbarDetailTopView;->access$1000(Lcom/dodonew/online/view/NetbarDetailTopView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/view/NetbarDetailTopView;->access$1002(Lcom/dodonew/online/view/NetbarDetailTopView;I)I

    .line 258
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView$6;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarDetailTopView;->access$1100(Lcom/dodonew/online/view/NetbarDetailTopView;)V

    goto :goto_0

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView$6;->val$cmd:Ljava/lang/String;

    const-string v1, "collect/close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView$6;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    iget-object v0, v0, Lcom/dodonew/online/view/NetbarDetailTopView;->context:Landroid/content/Context;

    check-cast v0, Lcom/dodonew/online/base/ProgressActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/base/ProgressActivity;->showToast(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView$6;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarDetailTopView$6;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    invoke-static {v1}, Lcom/dodonew/online/view/NetbarDetailTopView;->access$1000(Lcom/dodonew/online/view/NetbarDetailTopView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/view/NetbarDetailTopView;->access$1002(Lcom/dodonew/online/view/NetbarDetailTopView;I)I

    .line 262
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView$6;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarDetailTopView;->access$1100(Lcom/dodonew/online/view/NetbarDetailTopView;)V

    goto :goto_0

    .line 265
    :cond_4
    iget-boolean v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView$6;->val$isShow:Z

    if-eqz v0, :cond_5

    .line 266
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView$6;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    iget-object v0, v0, Lcom/dodonew/online/view/NetbarDetailTopView;->context:Landroid/content/Context;

    check-cast v0, Lcom/dodonew/online/base/ProgressActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/base/ProgressActivity;->showToast(Ljava/lang/String;)V

    .line 268
    :cond_5
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView$6;->val$cmd:Ljava/lang/String;

    const-string v1, "collect/exist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView$6;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dodonew/online/view/NetbarDetailTopView;->access$1200(Lcom/dodonew/online/view/NetbarDetailTopView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 249
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/view/NetbarDetailTopView$6;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
