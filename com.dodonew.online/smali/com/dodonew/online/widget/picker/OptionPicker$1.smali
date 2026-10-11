.class Lcom/dodonew/online/widget/picker/OptionPicker$1;
.super Ljava/lang/Object;
.source "OptionPicker.java"

# interfaces
.implements Lcom/dodonew/online/widget/WheelView$OnWheelViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/picker/OptionPicker;->makeCenterView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/picker/OptionPicker;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/picker/OptionPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/picker/OptionPicker;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/dodonew/online/widget/picker/OptionPicker$1;->this$0:Lcom/dodonew/online/widget/picker/OptionPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(ZILjava/lang/String;)V
    .locals 1
    .param p1, "isUserScroll"    # Z
    .param p2, "selectedIndex"    # I
    .param p3, "item"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dodonew/online/widget/picker/OptionPicker$1;->this$0:Lcom/dodonew/online/widget/picker/OptionPicker;

    invoke-static {v0, p3}, Lcom/dodonew/online/widget/picker/OptionPicker;->access$002(Lcom/dodonew/online/widget/picker/OptionPicker;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    return-void
.end method
