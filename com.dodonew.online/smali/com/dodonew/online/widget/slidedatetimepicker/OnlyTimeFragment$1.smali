.class Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$1;
.super Ljava/lang/Object;
.source "OnlyTimeFragment.java"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 139
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$1;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minutes"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$1;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    invoke-static {v0, p2}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->access$002(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;I)I

    .line 145
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$1;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    invoke-static {v0, p3}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->access$102(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;I)I

    .line 146
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$1;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->access$200(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;)Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$TimeChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$1;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    invoke-static {v1}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->access$100(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;)I

    move-result v1

    invoke-interface {v0, p2, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$TimeChangedListener;->onTimeChanged(II)V

    .line 147
    return-void
.end method
