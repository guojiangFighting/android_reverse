.class Lcom/dodonew/online/view/GameDataView$5;
.super Ljava/lang/Object;
.source "GameDataView.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/GameDataView;->requestNetwork(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/GameDataView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/GameDataView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/GameDataView;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/dodonew/online/view/GameDataView$5;->this$0:Lcom/dodonew/online/view/GameDataView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 160
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 161
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView$5;->this$0:Lcom/dodonew/online/view/GameDataView;

    invoke-static {v0}, Lcom/dodonew/online/view/GameDataView;->access$400(Lcom/dodonew/online/view/GameDataView;)Lcom/dodonew/online/widget/MultiStateView;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->ERROR:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 162
    return-void
.end method
