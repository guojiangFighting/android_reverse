.class Lcom/dodonew/online/view/PopView$1;
.super Ljava/lang/Object;
.source "PopView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/PopView;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/PopView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/PopView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/PopView;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/dodonew/online/view/PopView$1;->this$0:Lcom/dodonew/online/view/PopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/dodonew/online/view/PopView$1;->this$0:Lcom/dodonew/online/view/PopView;

    invoke-static {v0}, Lcom/dodonew/online/view/PopView;->access$000(Lcom/dodonew/online/view/PopView;)Lcom/dodonew/online/view/PopView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/dodonew/online/view/PopView$1;->this$0:Lcom/dodonew/online/view/PopView;

    invoke-static {v0}, Lcom/dodonew/online/view/PopView;->access$000(Lcom/dodonew/online/view/PopView;)Lcom/dodonew/online/view/PopView$OnItemClickListener;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/dodonew/online/view/PopView$OnItemClickListener;->itemClick(I)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/PopView$1;->this$0:Lcom/dodonew/online/view/PopView;

    invoke-virtual {v0}, Lcom/dodonew/online/view/PopView;->dissPop()V

    .line 97
    return-void
.end method
