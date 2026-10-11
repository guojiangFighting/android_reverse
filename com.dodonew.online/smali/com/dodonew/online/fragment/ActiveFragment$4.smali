.class Lcom/dodonew/online/fragment/ActiveFragment$4;
.super Ljava/lang/Object;
.source "ActiveFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/ActiveFragment;->queryActiveData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/ActiveFragment;

.field final synthetic val$page:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/ActiveFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/ActiveFragment;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/dodonew/online/fragment/ActiveFragment$4;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    iput-object p2, p0, Lcom/dodonew/online/fragment/ActiveFragment$4;->val$page:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 175
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment$4;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    invoke-virtual {v0}, Lcom/dodonew/online/fragment/ActiveFragment;->onFinishRefresh()V

    .line 176
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment$4;->val$page:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment$4;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/ActiveFragment;->access$1000(Lcom/dodonew/online/fragment/ActiveFragment;)Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment$4;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/ActiveFragment;->access$900(Lcom/dodonew/online/fragment/ActiveFragment;)Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment$4;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/ActiveFragment;->access$900(Lcom/dodonew/online/fragment/ActiveFragment;)Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/dodonew/online/interfaces/OnNetworkResponseListener;->onResponse(Z)V

    .line 183
    :cond_1
    return-void
.end method
