.class Lcom/dodonew/online/view/NetbarView$6;
.super Ljava/lang/Object;
.source "NetbarView.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/NetbarView;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/NetbarView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/NetbarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/NetbarView;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/dodonew/online/view/NetbarView$6;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 276
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 277
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$6;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarView;->access$1800(Lcom/dodonew/online/view/NetbarView;)Lcom/dodonew/online/widget/MultiStateView;

    move-result-object v0

    const-string v1, "\u51fa\u73b0\u9519\u8bef,\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 279
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$6;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarView;->access$600(Lcom/dodonew/online/view/NetbarView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$6;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarView;->access$700(Lcom/dodonew/online/view/NetbarView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/base/ProgressActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/base/ProgressActivity;->dissProgress()V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$6;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarView;->access$700(Lcom/dodonew/online/view/NetbarView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/base/ProgressActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/base/ProgressActivity;->dissProgress()V

    .line 283
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$6;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarView;->access$2000(Lcom/dodonew/online/view/NetbarView;)V

    .line 284
    return-void
.end method
