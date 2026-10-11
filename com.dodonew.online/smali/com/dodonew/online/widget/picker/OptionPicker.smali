.class public Lcom/dodonew/online/widget/picker/OptionPicker;
.super Lcom/dodonew/online/widget/picker/WheelPicker;
.source "OptionPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/picker/OptionPicker$OnOptionPickListener;
    }
.end annotation


# instance fields
.field private label:Ljava/lang/String;

.field private onOptionPickListener:Lcom/dodonew/online/widget/picker/OptionPicker$OnOptionPickListener;

.field protected options:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedOption:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # [Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/picker/WheelPicker;-><init>(Landroid/app/Activity;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->options:Ljava/util/ArrayList;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->selectedOption:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->label:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->options:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    return-void
.end method

.method static synthetic access$002(Lcom/dodonew/online/widget/picker/OptionPicker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/picker/OptionPicker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->selectedOption:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getSelectedOption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->selectedOption:Ljava/lang/String;

    return-object v0
.end method

.method protected makeCenterView()Landroid/view/View;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v5, -0x2

    .line 84
    iget-object v3, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->options:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 85
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "please initial options at first, can\'t be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 87
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 88
    .local v1, "layout":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 89
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 90
    new-instance v2, Lcom/dodonew/online/widget/WheelView;

    iget-object v3, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/dodonew/online/widget/WheelView;-><init>(Landroid/content/Context;)V

    .line 91
    .local v2, "optionView":Lcom/dodonew/online/widget/WheelView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/dodonew/online/widget/WheelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget v3, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->textSize:I

    invoke-virtual {v2, v3}, Lcom/dodonew/online/widget/WheelView;->setTextSize(I)V

    .line 93
    iget v3, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->textColorNormal:I

    iget v4, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->textColorFocus:I

    invoke-virtual {v2, v3, v4}, Lcom/dodonew/online/widget/WheelView;->setTextColor(II)V

    .line 94
    iget-boolean v3, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->lineVisible:Z

    invoke-virtual {v2, v3}, Lcom/dodonew/online/widget/WheelView;->setLineVisible(Z)V

    .line 95
    iget v3, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->lineColor:I

    invoke-virtual {v2, v3}, Lcom/dodonew/online/widget/WheelView;->setLineColor(I)V

    .line 96
    iget v3, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->offset:I

    invoke-virtual {v2, v3}, Lcom/dodonew/online/widget/WheelView;->setOffset(I)V

    .line 97
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->activity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, "labelView":Landroid/widget/TextView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget v3, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->textColorFocus:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    iget v3, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->textSize:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 102
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    iget-object v3, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->label:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 104
    iget-object v3, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->label:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_1
    iget-object v3, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->selectedOption:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    iget-object v3, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->options:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/dodonew/online/widget/WheelView;->setItems(Ljava/util/List;)V

    .line 111
    :goto_0
    new-instance v3, Lcom/dodonew/online/widget/picker/OptionPicker$1;

    invoke-direct {v3, p0}, Lcom/dodonew/online/widget/picker/OptionPicker$1;-><init>(Lcom/dodonew/online/widget/picker/OptionPicker;)V

    invoke-virtual {v2, v3}, Lcom/dodonew/online/widget/WheelView;->setOnWheelViewListener(Lcom/dodonew/online/widget/WheelView$OnWheelViewListener;)V

    .line 117
    return-object v1

    .line 109
    :cond_2
    iget-object v3, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->options:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->selectedOption:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/dodonew/online/widget/WheelView;->setItems(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSubmit()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->onOptionPickListener:Lcom/dodonew/online/widget/picker/OptionPicker$OnOptionPickListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->onOptionPickListener:Lcom/dodonew/online/widget/picker/OptionPicker$OnOptionPickListener;

    iget-object v1, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->selectedOption:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/dodonew/online/widget/picker/OptionPicker$OnOptionPickListener;->onOptionPicked(Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->label:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setOnOptionPickListener(Lcom/dodonew/online/widget/picker/OptionPicker$OnOptionPickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/dodonew/online/widget/picker/OptionPicker$OnOptionPickListener;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->onOptionPickListener:Lcom/dodonew/online/widget/picker/OptionPicker$OnOptionPickListener;

    .line 79
    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->options:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 56
    if-ne p1, v0, :cond_1

    .line 57
    iget-object v1, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->options:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->selectedOption:Ljava/lang/String;

    .line 61
    :cond_0
    return-void

    .line 55
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setSelectedItem(Ljava/lang/String;)V
    .locals 0
    .param p1, "option"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/dodonew/online/widget/picker/OptionPicker;->selectedOption:Ljava/lang/String;

    .line 70
    return-void
.end method
