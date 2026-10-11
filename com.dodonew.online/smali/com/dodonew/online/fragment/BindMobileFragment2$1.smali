.class Lcom/dodonew/online/fragment/BindMobileFragment2$1;
.super Ljava/lang/Object;
.source "BindMobileFragment2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/BindMobileFragment2;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/BindMobileFragment2;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/BindMobileFragment2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/BindMobileFragment2;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/dodonew/online/fragment/BindMobileFragment2$1;->this$0:Lcom/dodonew/online/fragment/BindMobileFragment2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dodonew/online/fragment/BindMobileFragment2$1;->this$0:Lcom/dodonew/online/fragment/BindMobileFragment2;

    invoke-static {v0}, Lcom/dodonew/online/fragment/BindMobileFragment2;->access$000(Lcom/dodonew/online/fragment/BindMobileFragment2;)Lcom/dodonew/online/util/TimeCountUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/util/TimeCountUtil;->start()Landroid/os/CountDownTimer;

    .line 68
    iget-object v0, p0, Lcom/dodonew/online/fragment/BindMobileFragment2$1;->this$0:Lcom/dodonew/online/fragment/BindMobileFragment2;

    invoke-static {v0}, Lcom/dodonew/online/fragment/BindMobileFragment2;->access$100(Lcom/dodonew/online/fragment/BindMobileFragment2;)Lcom/dodonew/online/interfaces/OnGetCodeListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/fragment/BindMobileFragment2$1;->this$0:Lcom/dodonew/online/fragment/BindMobileFragment2;

    invoke-static {v0}, Lcom/dodonew/online/fragment/BindMobileFragment2;->access$100(Lcom/dodonew/online/fragment/BindMobileFragment2;)Lcom/dodonew/online/interfaces/OnGetCodeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/dodonew/online/interfaces/OnGetCodeListener;->onGetCode()V

    goto :goto_0
.end method
