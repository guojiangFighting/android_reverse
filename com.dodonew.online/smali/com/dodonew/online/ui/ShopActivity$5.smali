.class Lcom/dodonew/online/ui/ShopActivity$5;
.super Ljava/lang/Object;
.source "ShopActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ShopActivity;->queryMenuType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/ShopActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/ShopActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/ShopActivity;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/dodonew/online/ui/ShopActivity$5;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 188
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 189
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity$5;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ShopActivity;->access$800(Lcom/dodonew/online/ui/ShopActivity;)Lcom/dodonew/online/widget/MultiStateView;

    move-result-object v0

    const-string v1, "\u8bbf\u95ee\u51fa\u9519."

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 190
    return-void
.end method
