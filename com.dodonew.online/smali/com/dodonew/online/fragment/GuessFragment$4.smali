.class Lcom/dodonew/online/fragment/GuessFragment$4;
.super Ljava/lang/Object;
.source "GuessFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/GuessFragment;->queryGuessData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/GuessFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/GuessFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/GuessFragment;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/dodonew/online/fragment/GuessFragment$4;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 145
    iget-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment$4;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    invoke-virtual {v0}, Lcom/dodonew/online/fragment/GuessFragment;->finishRefresh()V

    .line 146
    iget-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment$4;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/GuessFragment;->access$500(Lcom/dodonew/online/fragment/GuessFragment;)Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 147
    iget-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment$4;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/GuessFragment;->access$400(Lcom/dodonew/online/fragment/GuessFragment;)Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment$4;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/GuessFragment;->access$400(Lcom/dodonew/online/fragment/GuessFragment;)Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/dodonew/online/interfaces/OnNetworkResponseListener;->onResponse(Z)V

    .line 150
    :cond_0
    return-void
.end method
