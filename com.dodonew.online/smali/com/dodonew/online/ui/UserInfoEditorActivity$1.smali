.class Lcom/dodonew/online/ui/UserInfoEditorActivity$1;
.super Ljava/lang/Object;
.source "UserInfoEditorActivity.java"

# interfaces
.implements Lcom/dodonew/online/widget/picker/OptionPicker$OnOptionPickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/UserInfoEditorActivity;->showSexPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/UserInfoEditorActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/UserInfoEditorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/UserInfoEditorActivity;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity$1;->this$0:Lcom/dodonew/online/ui/UserInfoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionPicked(Ljava/lang/String;)V
    .locals 1
    .param p1, "option"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity$1;->this$0:Lcom/dodonew/online/ui/UserInfoEditorActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->access$000(Lcom/dodonew/online/ui/UserInfoEditorActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method
