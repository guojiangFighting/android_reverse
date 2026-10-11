.class public Lcom/dodonew/online/widget/picker/ConstellationPicker;
.super Lcom/dodonew/online/widget/picker/OptionPicker;
.source "ConstellationPicker.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 19
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u6c34\u74f6"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u53cc\u9c7c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u767d\u7f8a"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u91d1\u725b"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u53cc\u5b50"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u5de8\u87f9"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u72ee\u5b50"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u5904\u5973"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u5929\u79e4"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u5929\u874e"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u5c04\u624b"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u6469\u7faf"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/widget/picker/OptionPicker;-><init>(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 33
    const-string v0, "\u5ea7"

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/picker/ConstellationPicker;->setLabel(Ljava/lang/String;)V

    .line 34
    return-void
.end method
