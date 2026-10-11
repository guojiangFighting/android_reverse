.class Lcom/dodonew/online/ui/OnlineDetailActivity$5;
.super Ljava/lang/Object;
.source "OnlineDetailActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/OnlineDetailActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/ui/OnlineDetailActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/OnlineDetailActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/OnlineDetailActivity;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity$5;->this$0:Lcom/dodonew/online/ui/OnlineDetailActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/OnlineDetailActivity$5;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 3
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 148
    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    iget-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity$5;->val$cmd:Ljava/lang/String;

    const-string v2, "oth/onlineplay/info"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    iget-object v2, p0, Lcom/dodonew/online/ui/OnlineDetailActivity$5;->this$0:Lcom/dodonew/online/ui/OnlineDetailActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v1, Lcom/dodonew/online/bean/OnlinePlayResult;

    iget-object v1, v1, Lcom/dodonew/online/bean/OnlinePlayResult;->result:Lcom/dodonew/online/bean/OnlinePlay;

    invoke-static {v2, v1}, Lcom/dodonew/online/ui/OnlineDetailActivity;->access$100(Lcom/dodonew/online/ui/OnlineDetailActivity;Lcom/dodonew/online/bean/OnlinePlay;)V

    .line 166
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity$5;->this$0:Lcom/dodonew/online/ui/OnlineDetailActivity;

    invoke-virtual {v1}, Lcom/dodonew/online/ui/OnlineDetailActivity;->dissProgress()V

    .line 167
    return-void

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity$5;->val$cmd:Ljava/lang/String;

    const-string v2, "oth/onlineplay/onelist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    iget-object v2, p0, Lcom/dodonew/online/ui/OnlineDetailActivity$5;->this$0:Lcom/dodonew/online/ui/OnlineDetailActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v1, Lcom/dodonew/online/bean/Participaties;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/Participaties;->getResult()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/dodonew/online/ui/OnlineDetailActivity;->access$200(Lcom/dodonew/online/ui/OnlineDetailActivity;Ljava/util/List;)V

    .line 153
    iget-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity$5;->this$0:Lcom/dodonew/online/ui/OnlineDetailActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/OnlineDetailActivity;->access$300(Lcom/dodonew/online/ui/OnlineDetailActivity;)V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity$5;->val$cmd:Ljava/lang/String;

    const-string v2, "oth/onlineplay/addrecord"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    new-instance v0, Lcom/dodonew/online/bean/Participate;

    invoke-direct {v0}, Lcom/dodonew/online/bean/Participate;-><init>()V

    .line 156
    .local v0, "participate":Lcom/dodonew/online/bean/Participate;
    sget-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/User;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/bean/Participate;->setUserIconUrl(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity$5;->this$0:Lcom/dodonew/online/ui/OnlineDetailActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/OnlineDetailActivity;->access$400(Lcom/dodonew/online/ui/OnlineDetailActivity;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 158
    iget-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity$5;->this$0:Lcom/dodonew/online/ui/OnlineDetailActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/OnlineDetailActivity;->access$300(Lcom/dodonew/online/ui/OnlineDetailActivity;)V

    .line 159
    iget-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity$5;->this$0:Lcom/dodonew/online/ui/OnlineDetailActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/OnlineDetailActivity;->access$500(Lcom/dodonew/online/ui/OnlineDetailActivity;)Landroid/widget/Button;

    move-result-object v1

    const-string v2, "\u5df2\u53c2\u4e0e"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity$5;->this$0:Lcom/dodonew/online/ui/OnlineDetailActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/OnlineDetailActivity;->access$500(Lcom/dodonew/online/ui/OnlineDetailActivity;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f02005e

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 161
    iget-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity$5;->this$0:Lcom/dodonew/online/ui/OnlineDetailActivity;

    iget-object v2, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dodonew/online/ui/OnlineDetailActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    .end local v0    # "participate":Lcom/dodonew/online/bean/Participate;
    :cond_3
    iget-object v1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity$5;->this$0:Lcom/dodonew/online/ui/OnlineDetailActivity;

    iget-object v2, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dodonew/online/ui/OnlineDetailActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 145
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/OnlineDetailActivity$5;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
