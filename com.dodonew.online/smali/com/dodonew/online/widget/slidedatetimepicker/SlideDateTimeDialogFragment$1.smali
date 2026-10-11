.class Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$1;
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
    .line 232
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$1;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 236
    invoke-static {}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->access$000()Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Listener no longer exists for mOkButton"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    invoke-static {}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->access$000()Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$1;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    invoke-static {v2}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->access$100(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;->onDateTimeSet(Ljava/util/Date;)V

    .line 243
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$1;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->dismiss()V

    .line 244
    return-void
.end method
