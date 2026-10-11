.class Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog$1;
.super Ljava/lang/Object;
.source "ChooseNetbarDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog$1;->this$0:Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

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
    .line 103
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog$1;->this$0:Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

    invoke-static {v0}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->access$000(Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;)Lcom/dodonew/online/interfaces/OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog$1;->this$0:Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

    invoke-static {v0}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->access$000(Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;)Lcom/dodonew/online/interfaces/OnItemClickListener;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/dodonew/online/interfaces/OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 106
    :cond_0
    return-void
.end method
