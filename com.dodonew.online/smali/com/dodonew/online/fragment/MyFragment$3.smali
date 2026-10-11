.class Lcom/dodonew/online/fragment/MyFragment$3;
.super Ljava/lang/Object;
.source "MyFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/MyFragment;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/MyFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/MyFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/MyFragment;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/dodonew/online/fragment/MyFragment$3;->this$0:Lcom/dodonew/online/fragment/MyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 149
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 150
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyFragment$3;->this$0:Lcom/dodonew/online/fragment/MyFragment;

    invoke-virtual {v0}, Lcom/dodonew/online/fragment/MyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/base/ProgressActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/base/ProgressActivity;->dissProgress()V

    .line 151
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyFragment$3;->this$0:Lcom/dodonew/online/fragment/MyFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/MyFragment;->access$100(Lcom/dodonew/online/fragment/MyFragment;)V

    .line 152
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyFragment$3;->this$0:Lcom/dodonew/online/fragment/MyFragment;

    invoke-virtual {v0}, Lcom/dodonew/online/fragment/MyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/base/ProgressActivity;

    const-string v1, "\u51fa\u73b0\u9519\u8bef,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {v0, v1}, Lcom/dodonew/online/base/ProgressActivity;->showToast(Ljava/lang/String;)V

    .line 153
    return-void
.end method
