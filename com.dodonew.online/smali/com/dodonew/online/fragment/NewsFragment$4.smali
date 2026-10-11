.class Lcom/dodonew/online/fragment/NewsFragment$4;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/NewsFragment;->queryNewsData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/NewsFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/NewsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/NewsFragment;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/dodonew/online/fragment/NewsFragment$4;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 179
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment$4;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/NewsFragment;->access$900(Lcom/dodonew/online/fragment/NewsFragment;)Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment$4;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/NewsFragment;->access$900(Lcom/dodonew/online/fragment/NewsFragment;)Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/dodonew/online/interfaces/OnNetworkResponseListener;->onResponse(Z)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment$4;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/NewsFragment;->access$000(Lcom/dodonew/online/fragment/NewsFragment;)I

    move-result v0

    if-nez v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment$4;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/NewsFragment;->access$1000(Lcom/dodonew/online/fragment/NewsFragment;)Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment$4;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    invoke-virtual {v0}, Lcom/dodonew/online/fragment/NewsFragment;->onFinishRefresh()V

    .line 187
    return-void
.end method
