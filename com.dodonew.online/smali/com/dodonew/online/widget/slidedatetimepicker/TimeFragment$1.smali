.class Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$1;
.super Ljava/lang/Object;
.source "TimeFragment.java"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$1;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$1;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->access$000(Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;)Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$TimeChangedListener;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$TimeChangedListener;->onTimeChanged(II)V

    .line 131
    return-void
.end method
