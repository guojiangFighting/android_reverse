.class public Lcom/dodonew/online/widget/picker/SexPicker;
.super Lcom/dodonew/online/widget/picker/OptionPicker;
.source "SexPicker.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u7537"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u5973"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/widget/picker/OptionPicker;-><init>(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public onlyMaleAndFemale()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dodonew/online/widget/picker/SexPicker;->options:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dodonew/online/widget/picker/SexPicker;->options:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 28
    return-void
.end method
