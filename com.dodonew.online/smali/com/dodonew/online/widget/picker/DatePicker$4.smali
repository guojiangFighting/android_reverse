.class Lcom/dodonew/online/widget/picker/DatePicker$4;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/dodonew/online/widget/WheelView$OnWheelViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/picker/DatePicker;->makeCenterView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/picker/DatePicker;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/picker/DatePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/picker/DatePicker;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/dodonew/online/widget/picker/DatePicker$4;->this$0:Lcom/dodonew/online/widget/picker/DatePicker;

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
    .line 298
    iget-object v0, p0, Lcom/dodonew/online/widget/picker/DatePicker$4;->this$0:Lcom/dodonew/online/widget/picker/DatePicker;

    invoke-static {v0, p2}, Lcom/dodonew/online/widget/picker/DatePicker;->access$502(Lcom/dodonew/online/widget/picker/DatePicker;I)I

    .line 299
    return-void
.end method
