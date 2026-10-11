.class Lcom/dodonew/online/ui/BindCardProvinceActivity$4;
.super Ljava/lang/Object;
.source "BindCardProvinceActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/BindCardProvinceActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/BindCardProvinceActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/BindCardProvinceActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/BindCardProvinceActivity;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$4;->this$0:Lcom/dodonew/online/ui/BindCardProvinceActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$4;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 130
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 131
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$4;->this$0:Lcom/dodonew/online/ui/BindCardProvinceActivity;

    const-string v1, "\u51fa\u73b0\u9519\u8bef,\u8bf7\u7a0d\u540e\u518d\u8bd5."

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->showToast(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$4;->val$cmd:Ljava/lang/String;

    const-string v1, "netCard/provices"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$4;->this$0:Lcom/dodonew/online/ui/BindCardProvinceActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->access$300(Lcom/dodonew/online/ui/BindCardProvinceActivity;)Lcom/dodonew/online/widget/MultiStateView;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->ERROR:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$4;->this$0:Lcom/dodonew/online/ui/BindCardProvinceActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->dissProgress()V

    goto :goto_0
.end method
