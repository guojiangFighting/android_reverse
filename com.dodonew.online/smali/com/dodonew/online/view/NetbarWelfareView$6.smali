.class Lcom/dodonew/online/view/NetbarWelfareView$6;
.super Ljava/lang/Object;
.source "NetbarWelfareView.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/NetbarWelfareView;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/NetbarWelfareView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/NetbarWelfareView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/NetbarWelfareView;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/dodonew/online/view/NetbarWelfareView$6;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 225
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 226
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView$6;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarWelfareView;->access$1400(Lcom/dodonew/online/view/NetbarWelfareView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u51fa\u73b0\u9519\u8bef,\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 227
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView$6;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarWelfareView;->access$1500(Lcom/dodonew/online/view/NetbarWelfareView;)V

    .line 228
    return-void
.end method
