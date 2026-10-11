.class Lcom/dodonew/online/ui/NetbarDetailActivity$6;
.super Ljava/lang/Object;
.source "NetbarDetailActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/NetbarDetailActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/NetbarDetailActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/NetbarDetailActivity;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 6
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 190
    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 191
    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->val$cmd:Ljava/lang/String;

    const-string v2, "oth/onlineplay/list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    iget-object v2, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v1, Lcom/dodonew/online/bean/OnlinePlays;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/OnlinePlays;->getResult()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$600(Lcom/dodonew/online/ui/NetbarDetailActivity;Ljava/util/List;)V

    .line 193
    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$700(Lcom/dodonew/online/ui/NetbarDetailActivity;)V

    .line 194
    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$500(Lcom/dodonew/online/ui/NetbarDetailActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$800(Lcom/dodonew/online/ui/NetbarDetailActivity;)Lcom/dodonew/online/view/NetbarDetailTopView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$800(Lcom/dodonew/online/ui/NetbarDetailActivity;)Lcom/dodonew/online/view/NetbarDetailTopView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dodonew/online/view/NetbarDetailTopView;->setEmptyView()V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->val$cmd:Ljava/lang/String;

    const-string v2, "oth/netbarList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 202
    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v1, Lcom/dodonew/online/bean/NetBars;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/NetBars;->getNetbars()Ljava/util/List;

    move-result-object v0

    .line 203
    .local v0, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/NetBar;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 204
    iget-object v2, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/NetBar;

    invoke-static {v2, v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$902(Lcom/dodonew/online/ui/NetbarDetailActivity;Lcom/dodonew/online/bean/NetBar;)Lcom/dodonew/online/bean/NetBar;

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$900(Lcom/dodonew/online/ui/NetbarDetailActivity;)Lcom/dodonew/online/bean/NetBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    new-instance v2, Lcom/dodonew/online/view/NetbarDetailTopView;

    iget-object v3, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    iget-object v4, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v4}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$1000(Lcom/dodonew/online/ui/NetbarDetailActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/dodonew/online/view/NetbarDetailTopView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {v1, v2}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$802(Lcom/dodonew/online/ui/NetbarDetailActivity;Lcom/dodonew/online/view/NetbarDetailTopView;)Lcom/dodonew/online/view/NetbarDetailTopView;

    .line 208
    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$800(Lcom/dodonew/online/ui/NetbarDetailActivity;)Lcom/dodonew/online/view/NetbarDetailTopView;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$900(Lcom/dodonew/online/ui/NetbarDetailActivity;)Lcom/dodonew/online/bean/NetBar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dodonew/online/view/NetbarDetailTopView;->setNetBar(Lcom/dodonew/online/bean/NetBar;)V

    .line 210
    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$1000(Lcom/dodonew/online/ui/NetbarDetailActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$800(Lcom/dodonew/online/ui/NetbarDetailActivity;)Lcom/dodonew/online/view/NetbarDetailTopView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 211
    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    iget-object v2, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$900(Lcom/dodonew/online/ui/NetbarDetailActivity;)Lcom/dodonew/online/bean/NetBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dodonew/online/bean/NetBar;->getDomainId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v3}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$900(Lcom/dodonew/online/ui/NetbarDetailActivity;)Lcom/dodonew/online/bean/NetBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dodonew/online/bean/NetBar;->getNetBarId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v5}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$100(Lcom/dodonew/online/ui/NetbarDetailActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$400(Lcom/dodonew/online/ui/NetbarDetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$900(Lcom/dodonew/online/ui/NetbarDetailActivity;)Lcom/dodonew/online/bean/NetBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dodonew/online/bean/NetBar;->getIsSupportPayByPhone()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 213
    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$1100(Lcom/dodonew/online/ui/NetbarDetailActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$1100(Lcom/dodonew/online/ui/NetbarDetailActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 214
    :cond_3
    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$1200(Lcom/dodonew/online/ui/NetbarDetailActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    :cond_4
    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$800(Lcom/dodonew/online/ui/NetbarDetailActivity;)Lcom/dodonew/online/view/NetbarDetailTopView;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$1100(Lcom/dodonew/online/ui/NetbarDetailActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dodonew/online/view/NetbarDetailTopView;->setCards(Ljava/util/List;)V

    .line 217
    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$1300(Lcom/dodonew/online/ui/NetbarDetailActivity;)Lcom/dodonew/online/widget/MultiStateView;

    move-result-object v1

    sget-object v2, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto/16 :goto_0

    .line 220
    :cond_5
    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$1300(Lcom/dodonew/online/ui/NetbarDetailActivity;)Lcom/dodonew/online/widget/MultiStateView;

    move-result-object v1

    sget-object v2, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto/16 :goto_0

    .line 223
    .end local v0    # "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/NetBar;>;"
    :cond_6
    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->val$cmd:Ljava/lang/String;

    const-string v2, "netCard/cards"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v2, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v2, v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$1400(Lcom/dodonew/online/ui/NetbarDetailActivity;Ljava/util/List;)V

    .line 225
    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$1300(Lcom/dodonew/online/ui/NetbarDetailActivity;)Lcom/dodonew/online/widget/MultiStateView;

    move-result-object v1

    sget-object v2, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto/16 :goto_0

    .line 228
    :cond_7
    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    iget-object v2, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dodonew/online/ui/NetbarDetailActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 187
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/NetbarDetailActivity$6;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
