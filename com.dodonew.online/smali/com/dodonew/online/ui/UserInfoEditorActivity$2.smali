.class Lcom/dodonew/online/ui/UserInfoEditorActivity$2;
.super Ljava/lang/Object;
.source "UserInfoEditorActivity.java"

# interfaces
.implements Lcom/dodonew/online/widget/picker/DatePicker$OnYearMonthDayPickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/UserInfoEditorActivity;->showBirthPicker()V
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
    .line 144
    iput-object p1, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity$2;->this$0:Lcom/dodonew/online/ui/UserInfoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDatePicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "year"    # Ljava/lang/String;
    .param p2, "month"    # Ljava/lang/String;
    .param p3, "day"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity$2;->this$0:Lcom/dodonew/online/ui/UserInfoEditorActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->access$100(Lcom/dodonew/online/ui/UserInfoEditorActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method
