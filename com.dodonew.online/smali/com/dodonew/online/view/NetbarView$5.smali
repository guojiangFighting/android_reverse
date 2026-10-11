.class Lcom/dodonew/online/view/NetbarView$5;
.super Ljava/lang/Object;
.source "NetbarView.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/NetbarView;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/view/NetbarView;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/NetbarView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/NetbarView;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/dodonew/online/view/NetbarView$5;->this$0:Lcom/dodonew/online/view/NetbarView;

    iput-object p2, p0, Lcom/dodonew/online/view/NetbarView$5;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 6
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 253
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$5;->val$cmd:Ljava/lang/String;

    const-string v1, "oth/districts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView$5;->this$0:Lcom/dodonew/online/view/NetbarView;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/Districts;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Districts;->getDistricts()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dodonew/online/view/NetbarView;->access$1500(Lcom/dodonew/online/view/NetbarView;Ljava/util/List;)V

    .line 268
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$5;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarView;->access$600(Lcom/dodonew/online/view/NetbarView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$5;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarView;->access$700(Lcom/dodonew/online/view/NetbarView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/base/ProgressActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/base/ProgressActivity;->dissProgress()V

    .line 272
    :cond_1
    return-void

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$5;->val$cmd:Ljava/lang/String;

    const-string v1, "oth/netbarList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView$5;->this$0:Lcom/dodonew/online/view/NetbarView;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/NetBars;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/NetBars;->getNetbars()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dodonew/online/view/NetbarView;->access$1600(Lcom/dodonew/online/view/NetbarView;Ljava/util/List;)V

    .line 258
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$5;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarView;->access$1700(Lcom/dodonew/online/view/NetbarView;)V

    goto :goto_0

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$5;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarView;->access$1800(Lcom/dodonew/online/view/NetbarView;)Lcom/dodonew/online/widget/MultiStateView;

    move-result-object v0

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 262
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$5;->val$cmd:Ljava/lang/String;

    const-string v1, "oth/districts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 263
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$5;->this$0:Lcom/dodonew/online/view/NetbarView;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView$5;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v1}, Lcom/dodonew/online/view/NetbarView;->access$900(Lcom/dodonew/online/view/NetbarView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u561f\u561f\u725b\u7f51\u5427"

    iget-object v3, p0, Lcom/dodonew/online/view/NetbarView$5;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v3}, Lcom/dodonew/online/view/NetbarView;->access$400(Lcom/dodonew/online/view/NetbarView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/view/NetbarView$5;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v4}, Lcom/dodonew/online/view/NetbarView;->access$1000(Lcom/dodonew/online/view/NetbarView;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-static/range {v0 .. v5}, Lcom/dodonew/online/view/NetbarView;->access$1100(Lcom/dodonew/online/view/NetbarView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_4
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$5;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarView;->access$1900(Lcom/dodonew/online/view/NetbarView;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 250
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/view/NetbarView$5;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
