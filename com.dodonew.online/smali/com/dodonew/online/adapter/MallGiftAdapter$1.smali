.class Lcom/dodonew/online/adapter/MallGiftAdapter$1;
.super Ljava/lang/Object;
.source "MallGiftAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/adapter/MallGiftAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/adapter/MallGiftAdapter;

.field final synthetic val$gift:Lcom/dodonew/online/bean/Gift;

.field final synthetic val$position:I

.field final synthetic val$score:I


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/MallGiftAdapter;Lcom/dodonew/online/bean/Gift;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/MallGiftAdapter;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/dodonew/online/adapter/MallGiftAdapter$1;->this$0:Lcom/dodonew/online/adapter/MallGiftAdapter;

    iput-object p2, p0, Lcom/dodonew/online/adapter/MallGiftAdapter$1;->val$gift:Lcom/dodonew/online/bean/Gift;

    iput p3, p0, Lcom/dodonew/online/adapter/MallGiftAdapter$1;->val$score:I

    iput p4, p0, Lcom/dodonew/online/adapter/MallGiftAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/User;->getScore()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/adapter/MallGiftAdapter$1;->val$gift:Lcom/dodonew/online/bean/Gift;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/Gift;->getScore()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/dodonew/online/adapter/MallGiftAdapter$1;->this$0:Lcom/dodonew/online/adapter/MallGiftAdapter;

    iget-object v0, v0, Lcom/dodonew/online/adapter/MallGiftAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/dodonew/online/base/ProgressActivity;

    const-string v1, "\u79ef\u5206\u4e0d\u8db3."

    invoke-virtual {v0, v1}, Lcom/dodonew/online/base/ProgressActivity;->showToast(Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/adapter/MallGiftAdapter$1;->this$0:Lcom/dodonew/online/adapter/MallGiftAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u82b1\u8d39 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dodonew/online/adapter/MallGiftAdapter$1;->val$score:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5151\u6362?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dodonew/online/widget/dialog/InformationDialog;->newInstance(Ljava/lang/String;)Lcom/dodonew/online/widget/dialog/InformationDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/adapter/MallGiftAdapter;->access$002(Lcom/dodonew/online/adapter/MallGiftAdapter;Lcom/dodonew/online/widget/dialog/InformationDialog;)Lcom/dodonew/online/widget/dialog/InformationDialog;

    .line 90
    iget-object v0, p0, Lcom/dodonew/online/adapter/MallGiftAdapter$1;->this$0:Lcom/dodonew/online/adapter/MallGiftAdapter;

    invoke-static {v0}, Lcom/dodonew/online/adapter/MallGiftAdapter;->access$100(Lcom/dodonew/online/adapter/MallGiftAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/dodonew/online/adapter/MallGiftAdapter$1;->this$0:Lcom/dodonew/online/adapter/MallGiftAdapter;

    invoke-static {v0}, Lcom/dodonew/online/adapter/MallGiftAdapter;->access$000(Lcom/dodonew/online/adapter/MallGiftAdapter;)Lcom/dodonew/online/widget/dialog/InformationDialog;

    move-result-object v0

    new-instance v1, Lcom/dodonew/online/adapter/MallGiftAdapter$1$1;

    invoke-direct {v1, p0, p1}, Lcom/dodonew/online/adapter/MallGiftAdapter$1$1;-><init>(Lcom/dodonew/online/adapter/MallGiftAdapter$1;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/dialog/InformationDialog;->setOnOkClickListener(Lcom/dodonew/online/widget/dialog/InformationDialog$OnOkClickListener;)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/adapter/MallGiftAdapter$1;->this$0:Lcom/dodonew/online/adapter/MallGiftAdapter;

    invoke-static {v0}, Lcom/dodonew/online/adapter/MallGiftAdapter;->access$000(Lcom/dodonew/online/adapter/MallGiftAdapter;)Lcom/dodonew/online/widget/dialog/InformationDialog;

    move-result-object v1

    iget-object v0, p0, Lcom/dodonew/online/adapter/MallGiftAdapter$1;->this$0:Lcom/dodonew/online/adapter/MallGiftAdapter;

    iget-object v0, v0, Lcom/dodonew/online/adapter/MallGiftAdapter;->context:Landroid/content/Context;

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "InformationDialog"

    invoke-virtual {v1, v0, v2}, Lcom/dodonew/online/widget/dialog/InformationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
