.class Lcom/dodonew/online/fragment/MyFragment$2;
.super Ljava/lang/Object;
.source "MyFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/MyFragment;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/fragment/MyFragment;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/MyFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/MyFragment;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/dodonew/online/fragment/MyFragment$2;->this$0:Lcom/dodonew/online/fragment/MyFragment;

    iput-object p2, p0, Lcom/dodonew/online/fragment/MyFragment$2;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 2
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 136
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyFragment$2;->val$cmd:Ljava/lang/String;

    const-string v1, "user/selecUser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/dodonew/online/fragment/MyFragment$2;->this$0:Lcom/dodonew/online/fragment/MyFragment;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/User;

    invoke-static {v1, v0}, Lcom/dodonew/online/fragment/MyFragment;->access$000(Lcom/dodonew/online/fragment/MyFragment;Lcom/dodonew/online/bean/User;)V

    .line 144
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyFragment$2;->this$0:Lcom/dodonew/online/fragment/MyFragment;

    invoke-virtual {v0}, Lcom/dodonew/online/fragment/MyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/base/ProgressActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/base/ProgressActivity;->dissProgress()V

    .line 145
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyFragment$2;->this$0:Lcom/dodonew/online/fragment/MyFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/MyFragment;->access$100(Lcom/dodonew/online/fragment/MyFragment;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 133
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/fragment/MyFragment$2;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
