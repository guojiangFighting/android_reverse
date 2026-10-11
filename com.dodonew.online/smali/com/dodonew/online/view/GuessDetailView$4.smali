.class Lcom/dodonew/online/view/GuessDetailView$4;
.super Ljava/lang/Object;
.source "GuessDetailView.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/GuessDetailView;->sendGuess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/GuessDetailView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/GuessDetailView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/GuessDetailView;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/dodonew/online/view/GuessDetailView$4;->this$0:Lcom/dodonew/online/view/GuessDetailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 165
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 166
    iget-object v0, p0, Lcom/dodonew/online/view/GuessDetailView$4;->this$0:Lcom/dodonew/online/view/GuessDetailView;

    invoke-static {v0}, Lcom/dodonew/online/view/GuessDetailView;->access$400(Lcom/dodonew/online/view/GuessDetailView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/base/BaseActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/base/BaseActivity;->dissProgress()V

    .line 167
    iget-object v0, p0, Lcom/dodonew/online/view/GuessDetailView$4;->this$0:Lcom/dodonew/online/view/GuessDetailView;

    invoke-static {v0}, Lcom/dodonew/online/view/GuessDetailView;->access$300(Lcom/dodonew/online/view/GuessDetailView;)Lcom/dodonew/online/adapter/GuessDetailAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/GuessDetailAdapter;->setOkPos(Z)V

    .line 168
    iget-object v0, p0, Lcom/dodonew/online/view/GuessDetailView$4;->this$0:Lcom/dodonew/online/view/GuessDetailView;

    invoke-static {v0}, Lcom/dodonew/online/view/GuessDetailView;->access$100(Lcom/dodonew/online/view/GuessDetailView;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const-string v1, "\u51fa\u73b0\u9519\u8bef."

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 169
    return-void
.end method
