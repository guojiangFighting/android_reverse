.class Lcom/dodonew/online/view/NetbarWelfareView$5;
.super Ljava/lang/Object;
.source "NetbarWelfareView.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/NetbarWelfareView;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/view/NetbarWelfareView;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/NetbarWelfareView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/NetbarWelfareView;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/dodonew/online/view/NetbarWelfareView$5;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    iput-object p2, p0, Lcom/dodonew/online/view/NetbarWelfareView$5;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 3
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 211
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView$5;->val$cmd:Ljava/lang/String;

    const-string v1, "oth/ticket/list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView$5;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/Ticketes;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Ticketes;->getResult()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dodonew/online/view/NetbarWelfareView;->access$1200(Lcom/dodonew/online/view/NetbarWelfareView;Ljava/util/List;)V

    .line 214
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView$5;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarWelfareView;->access$300(Lcom/dodonew/online/view/NetbarWelfareView;)V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView$5;->val$cmd:Ljava/lang/String;

    const-string v1, "oth/onlineplay/list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView$5;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/MyActiveResult;

    iget-object v0, v0, Lcom/dodonew/online/bean/MyActiveResult;->result:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/dodonew/online/view/NetbarWelfareView;->access$1300(Lcom/dodonew/online/view/NetbarWelfareView;Ljava/util/List;)V

    goto :goto_0

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView$5;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarWelfareView;->access$1400(Lcom/dodonew/online/view/NetbarWelfareView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 208
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/view/NetbarWelfareView$5;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
