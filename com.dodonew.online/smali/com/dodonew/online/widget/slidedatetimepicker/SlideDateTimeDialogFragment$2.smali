.class Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$2;
.super Ljava/lang/Object;
.source "SlideDateTimeDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->initButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$2;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 251
    invoke-static {}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->access$000()Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Listener no longer exists for mCancelButton"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    invoke-static {}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->access$000()Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;->onDateTimeCancel()V

    .line 258
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$2;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->dismiss()V

    .line 259
    return-void
.end method
