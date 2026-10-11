.class Lcom/dodonew/online/fragment/FindStepFargment2$1;
.super Ljava/lang/Object;
.source "FindStepFargment2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/FindStepFargment2;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/FindStepFargment2;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/FindStepFargment2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/FindStepFargment2;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/dodonew/online/fragment/FindStepFargment2$1;->this$0:Lcom/dodonew/online/fragment/FindStepFargment2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dodonew/online/fragment/FindStepFargment2$1;->this$0:Lcom/dodonew/online/fragment/FindStepFargment2;

    invoke-static {v0}, Lcom/dodonew/online/fragment/FindStepFargment2;->access$000(Lcom/dodonew/online/fragment/FindStepFargment2;)Lcom/dodonew/online/util/TimeCountUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/util/TimeCountUtil;->start()Landroid/os/CountDownTimer;

    .line 61
    iget-object v0, p0, Lcom/dodonew/online/fragment/FindStepFargment2$1;->this$0:Lcom/dodonew/online/fragment/FindStepFargment2;

    invoke-static {v0}, Lcom/dodonew/online/fragment/FindStepFargment2;->access$100(Lcom/dodonew/online/fragment/FindStepFargment2;)Lcom/dodonew/online/fragment/FindStepFargment2$OnGetCodeListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/fragment/FindStepFargment2$1;->this$0:Lcom/dodonew/online/fragment/FindStepFargment2;

    invoke-static {v0}, Lcom/dodonew/online/fragment/FindStepFargment2;->access$100(Lcom/dodonew/online/fragment/FindStepFargment2;)Lcom/dodonew/online/fragment/FindStepFargment2$OnGetCodeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/dodonew/online/fragment/FindStepFargment2$OnGetCodeListener;->onGetCode()V

    goto :goto_0
.end method
