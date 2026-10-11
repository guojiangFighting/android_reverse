.class Lcom/dodonew/online/fragment/HomeFragment$6;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/HomeFragment;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/fragment/HomeFragment;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/HomeFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/HomeFragment;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/dodonew/online/fragment/HomeFragment$6;->this$0:Lcom/dodonew/online/fragment/HomeFragment;

    iput-object p2, p0, Lcom/dodonew/online/fragment/HomeFragment$6;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 3
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 300
    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment$6;->val$cmd:Ljava/lang/String;

    const-string v2, "oth/online/state"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    iget-object v2, p0, Lcom/dodonew/online/fragment/HomeFragment$6;->this$0:Lcom/dodonew/online/fragment/HomeFragment;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v1, Lcom/dodonew/online/bean/OnlineState;

    invoke-static {v2, v1}, Lcom/dodonew/online/fragment/HomeFragment;->access$200(Lcom/dodonew/online/fragment/HomeFragment;Lcom/dodonew/online/bean/OnlineState;)V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment$6;->val$cmd:Ljava/lang/String;

    const-string v2, "oth/netbarList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 304
    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v1, Lcom/dodonew/online/bean/NetBars;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/NetBars;->getNetbars()Ljava/util/List;

    move-result-object v0

    .line 305
    .local v0, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/NetBar;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 306
    iget-object v2, p0, Lcom/dodonew/online/fragment/HomeFragment$6;->this$0:Lcom/dodonew/online/fragment/HomeFragment;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/NetBar;

    invoke-static {v2, v1}, Lcom/dodonew/online/fragment/HomeFragment;->access$300(Lcom/dodonew/online/fragment/HomeFragment;Lcom/dodonew/online/bean/NetBar;)V

    goto :goto_0

    .line 308
    .end local v0    # "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/NetBar;>;"
    :cond_2
    iget-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment$6;->val$cmd:Ljava/lang/String;

    const-string v2, "netCard/cards"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v2, p0, Lcom/dodonew/online/fragment/HomeFragment$6;->this$0:Lcom/dodonew/online/fragment/HomeFragment;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v2, v1}, Lcom/dodonew/online/fragment/HomeFragment;->access$400(Lcom/dodonew/online/fragment/HomeFragment;Ljava/util/List;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 297
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/fragment/HomeFragment$6;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
