.class Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$2;
.super Ljava/lang/Object;
.source "OnlyTimeFragment.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->fixTimePickerBug18982()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$2;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

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

    .line 201
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 203
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$2;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->access$300(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;)Landroid/widget/TimePicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 204
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$2;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->access$300(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;)Landroid/widget/TimePicker;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$2;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    invoke-static {v1}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->access$300(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;)Landroid/widget/TimePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 212
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$2;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->access$200(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;)Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$TimeChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$2;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    .line 213
    invoke-static {v1}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->access$300(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;)Landroid/widget/TimePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$2;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    .line 214
    invoke-static {v2}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->access$300(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;)Landroid/widget/TimePicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 212
    invoke-interface {v0, v1, v2}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$TimeChangedListener;->onTimeChanged(II)V

    .line 215
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$2;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->access$300(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;)Landroid/widget/TimePicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v2, :cond_0

    .line 209
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$2;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->access$300(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;)Landroid/widget/TimePicker;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$2;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    invoke-static {v1}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->access$300(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;)Landroid/widget/TimePicker;

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
