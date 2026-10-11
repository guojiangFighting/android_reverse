.class Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$2;
.super Ljava/lang/Object;
.source "TimeFragment.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->fixTimePickerBug18982()V
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
    .line 178
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$2;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 3
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v2, 0xc

    .line 183
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$2;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->access$100(Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;)Landroid/widget/TimePicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 186
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$2;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->access$100(Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;)Landroid/widget/TimePicker;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$2;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;

    invoke-static {v1}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->access$100(Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;)Landroid/widget/TimePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 194
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$2;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->access$000(Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;)Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$TimeChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$2;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;

    .line 195
    invoke-static {v1}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->access$100(Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;)Landroid/widget/TimePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$2;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;

    .line 196
    invoke-static {v2}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->access$100(Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;)Landroid/widget/TimePicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 194
    invoke-interface {v0, v1, v2}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$TimeChangedListener;->onTimeChanged(II)V

    .line 197
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$2;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->access$100(Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;)Landroid/widget/TimePicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v2, :cond_0

    .line 191
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$2;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->access$100(Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;)Landroid/widget/TimePicker;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$2;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;

    invoke-static {v1}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->access$100(Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;)Landroid/widget/TimePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    goto :goto_0
.end method
