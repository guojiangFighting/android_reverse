.class Lcom/dodonew/online/ui/FunctionActivity$4;
.super Ljava/lang/Object;
.source "FunctionActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/FunctionActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/FunctionActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/FunctionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/FunctionActivity;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/dodonew/online/ui/FunctionActivity$4;->this$0:Lcom/dodonew/online/ui/FunctionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 145
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity$4;->this$0:Lcom/dodonew/online/ui/FunctionActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/FunctionActivity;->access$200(Lcom/dodonew/online/ui/FunctionActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u51fa\u73b0\u9519\u8bef,\u8bf7\u7a0d\u540e\u518d\u8bd5."

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 146
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity$4;->this$0:Lcom/dodonew/online/ui/FunctionActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/FunctionActivity;->dissProgress()V

    .line 147
    return-void
.end method
