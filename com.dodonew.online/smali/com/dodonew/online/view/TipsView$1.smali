.class Lcom/dodonew/online/view/TipsView$1;
.super Ljava/lang/Object;
.source "TipsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/TipsView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/TipsView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/TipsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/TipsView;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/dodonew/online/view/TipsView$1;->this$0:Lcom/dodonew/online/view/TipsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v1, p0, Lcom/dodonew/online/view/TipsView$1;->this$0:Lcom/dodonew/online/view/TipsView;

    invoke-static {v1}, Lcom/dodonew/online/view/TipsView;->access$000(Lcom/dodonew/online/view/TipsView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dodonew/online/view/TipsView$1;->this$0:Lcom/dodonew/online/view/TipsView;

    invoke-static {v1}, Lcom/dodonew/online/view/TipsView;->access$100(Lcom/dodonew/online/view/TipsView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dodonew/online/ui/FunctionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "memberNo"

    iget-object v2, p0, Lcom/dodonew/online/view/TipsView$1;->this$0:Lcom/dodonew/online/view/TipsView;

    invoke-static {v2}, Lcom/dodonew/online/view/TipsView;->access$200(Lcom/dodonew/online/view/TipsView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "netBar"

    iget-object v2, p0, Lcom/dodonew/online/view/TipsView$1;->this$0:Lcom/dodonew/online/view/TipsView;

    invoke-static {v2}, Lcom/dodonew/online/view/TipsView;->access$300(Lcom/dodonew/online/view/TipsView;)Lcom/dodonew/online/bean/NetBar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/dodonew/online/view/TipsView$1;->this$0:Lcom/dodonew/online/view/TipsView;

    invoke-static {v1}, Lcom/dodonew/online/view/TipsView;->access$100(Lcom/dodonew/online/view/TipsView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 61
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
