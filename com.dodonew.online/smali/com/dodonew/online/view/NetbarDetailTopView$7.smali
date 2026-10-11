.class Lcom/dodonew/online/view/NetbarDetailTopView$7;
.super Ljava/lang/Object;
.source "NetbarDetailTopView.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/NetbarDetailTopView;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

.field final synthetic val$isShow:Z


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/NetbarDetailTopView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/NetbarDetailTopView;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/dodonew/online/view/NetbarDetailTopView$7;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    iput-boolean p2, p0, Lcom/dodonew/online/view/NetbarDetailTopView$7;->val$isShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 279
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 280
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView$7;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    iget-object v0, v0, Lcom/dodonew/online/view/NetbarDetailTopView;->context:Landroid/content/Context;

    check-cast v0, Lcom/dodonew/online/base/ProgressActivity;

    const-string v1, "\u51fa\u73b0\u9519\u8bef,\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-virtual {v0, v1}, Lcom/dodonew/online/base/ProgressActivity;->showToast(Ljava/lang/String;)V

    .line 281
    iget-boolean v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView$7;->val$isShow:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView$7;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    iget-object v0, v0, Lcom/dodonew/online/view/NetbarDetailTopView;->context:Landroid/content/Context;

    check-cast v0, Lcom/dodonew/online/base/ProgressActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/base/ProgressActivity;->dissProgress()V

    .line 284
    :cond_0
    return-void
.end method
