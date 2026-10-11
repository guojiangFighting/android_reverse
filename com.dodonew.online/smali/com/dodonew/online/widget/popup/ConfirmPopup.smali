.class public abstract Lcom/dodonew/online/widget/popup/ConfirmPopup;
.super Lcom/dodonew/online/widget/popup/BottomPopup;
.source "ConfirmPopup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/dodonew/online/widget/popup/BottomPopup",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field protected cancelText:Ljava/lang/CharSequence;

.field protected cancelTextColor:I

.field protected cancelVisible:Z

.field protected submitText:Ljava/lang/CharSequence;

.field protected submitTextColor:I

.field protected titleText:Ljava/lang/CharSequence;

.field protected titleTextColor:I

.field protected topBackgroundColor:I

.field protected topLineColor:I

.field protected topLineVisible:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .local p0, "this":Lcom/dodonew/online/widget/popup/ConfirmPopup;, "Lcom/dodonew/online/widget/popup/ConfirmPopup<TV;>;"
    const/4 v2, 0x1

    const/high16 v1, -0x1000000

    .line 41
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/popup/BottomPopup;-><init>(Landroid/app/Activity;)V

    .line 24
    iput-boolean v2, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->topLineVisible:Z

    .line 25
    const v0, -0x222223

    iput v0, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->topLineColor:I

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->topBackgroundColor:I

    .line 27
    iput-boolean v2, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->cancelVisible:Z

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->cancelText:Ljava/lang/CharSequence;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->submitText:Ljava/lang/CharSequence;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->titleText:Ljava/lang/CharSequence;

    .line 31
    iput v1, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->cancelTextColor:I

    .line 32
    const v0, -0xfc560c

    iput v0, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->submitTextColor:I

    .line 33
    iput v1, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->titleTextColor:I

    .line 42
    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->cancelText:Ljava/lang/CharSequence;

    .line 43
    const v0, 0x104000a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->submitText:Ljava/lang/CharSequence;

    .line 44
    return-void
.end method


# virtual methods
.method protected abstract makeCenterView()Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method protected final makeContentView()Landroid/view/View;
    .locals 9

    .prologue
    .local p0, "this":Lcom/dodonew/online/widget/popup/ConfirmPopup;, "Lcom/dodonew/online/widget/popup/ConfirmPopup<TV;>;"
    const/4 v5, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 170
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 171
    .local v3, "rootLayout":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 173
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 174
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 175
    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 176
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 177
    invoke-virtual {p0}, Lcom/dodonew/online/widget/popup/ConfirmPopup;->makeHeaderView()Landroid/view/View;

    move-result-object v1

    .line 178
    .local v1, "headerView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    :cond_0
    iget-boolean v4, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->topLineVisible:Z

    if-eqz v4, :cond_1

    .line 182
    new-instance v2, Landroid/view/View;

    iget-object v4, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->activity:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 183
    .local v2, "lineView":Landroid/view/View;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget v4, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->topLineColor:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 185
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    .end local v2    # "lineView":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/dodonew/online/widget/popup/ConfirmPopup;->makeCenterView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v8, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    invoke-virtual {p0}, Lcom/dodonew/online/widget/popup/ConfirmPopup;->makeFooterView()Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, "footerView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 190
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    :cond_2
    return-object v3
.end method

.method protected makeFooterView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 283
    .local p0, "this":Lcom/dodonew/online/widget/popup/ConfirmPopup;, "Lcom/dodonew/online/widget/popup/ConfirmPopup<TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected makeHeaderView()Landroid/view/View;
    .locals 12
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lcom/dodonew/online/widget/popup/ConfirmPopup;, "Lcom/dodonew/online/widget/popup/ConfirmPopup<TV;>;"
    new-instance v7, Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->activity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 203
    .local v7, "topButtonLayout":Landroid/widget/RelativeLayout;
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x1

    iget-object v10, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->activity:Landroid/app/Activity;

    const/high16 v11, 0x42200000    # 40.0f

    invoke-static {v10, v11}, Lcom/dodonew/online/util/ConvertUtils;->toPx(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget v8, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->topBackgroundColor:I

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 205
    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 207
    new-instance v0, Landroid/widget/Button;

    iget-object v8, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->activity:Landroid/app/Activity;

    invoke-direct {v0, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 208
    .local v0, "cancelButton":Landroid/widget/Button;
    iget-boolean v8, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->cancelVisible:Z

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 209
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v1, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 210
    .local v1, "cancelButtonLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0x9

    const/4 v9, -0x1

    invoke-virtual {v1, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 211
    const/16 v8, 0xf

    const/4 v9, -0x1

    invoke-virtual {v1, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 212
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 214
    const/16 v8, 0x11

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setGravity(I)V

    .line 215
    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setTextSize(F)V

    .line 216
    iget-object v8, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->cancelText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 217
    iget-object v8, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->cancelText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :cond_0
    iget v8, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->cancelTextColor:I

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 220
    new-instance v8, Lcom/dodonew/online/widget/popup/ConfirmPopup$1;

    invoke-direct {v8, p0}, Lcom/dodonew/online/widget/popup/ConfirmPopup$1;-><init>(Lcom/dodonew/online/widget/popup/ConfirmPopup;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 229
    new-instance v6, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->activity:Landroid/app/Activity;

    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 230
    .local v6, "titleView":Landroid/widget/TextView;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 231
    .local v5, "titleLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->activity:Landroid/app/Activity;

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v8, v9}, Lcom/dodonew/online/util/ConvertUtils;->toPx(Landroid/content/Context;F)I

    move-result v2

    .line 232
    .local v2, "margin":I
    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 233
    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 234
    const/16 v8, 0xe

    const/4 v9, -0x1

    invoke-virtual {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 235
    const/16 v8, 0xf

    const/4 v9, -0x1

    invoke-virtual {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 236
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    const/16 v8, 0x11

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 238
    iget-object v8, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->titleText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 239
    iget-object v8, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->titleText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :cond_1
    iget v8, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->titleTextColor:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    invoke-virtual {v7, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 244
    new-instance v3, Landroid/widget/Button;

    iget-object v8, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->activity:Landroid/app/Activity;

    invoke-direct {v3, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 245
    .local v3, "submitButton":Landroid/widget/Button;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 246
    .local v4, "submitButtonLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xb

    const/4 v9, -0x1

    invoke-virtual {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 247
    const/16 v8, 0xf

    const/4 v9, -0x1

    invoke-virtual {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 248
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 250
    const/16 v8, 0x11

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setGravity(I)V

    .line 251
    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setTextSize(F)V

    .line 252
    iget-object v8, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->submitText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 253
    iget-object v8, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->submitText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :cond_2
    iget v8, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->submitTextColor:I

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 256
    new-instance v8, Lcom/dodonew/online/widget/popup/ConfirmPopup$2;

    invoke-direct {v8, p0}, Lcom/dodonew/online/widget/popup/ConfirmPopup$2;-><init>(Lcom/dodonew/online/widget/popup/ConfirmPopup;)V

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    invoke-virtual {v7, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 265
    return-object v7

    .line 208
    .end local v1    # "cancelButtonLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "margin":I
    .end local v3    # "submitButton":Landroid/widget/Button;
    .end local v4    # "submitButtonLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "titleLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "titleView":Landroid/widget/TextView;
    :cond_3
    const/16 v8, 0x8

    goto/16 :goto_0
.end method

.method protected onCancel()V
    .locals 0

    .prologue
    .line 298
    .local p0, "this":Lcom/dodonew/online/widget/popup/ConfirmPopup;, "Lcom/dodonew/online/widget/popup/ConfirmPopup<TV;>;"
    return-void
.end method

.method protected onSubmit()V
    .locals 0

    .prologue
    .line 291
    .local p0, "this":Lcom/dodonew/online/widget/popup/ConfirmPopup;, "Lcom/dodonew/online/widget/popup/ConfirmPopup<TV;>;"
    return-void
.end method

.method public setCancelText(I)V
    .locals 1
    .param p1, "textRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 97
    .local p0, "this":Lcom/dodonew/online/widget/popup/ConfirmPopup;, "Lcom/dodonew/online/widget/popup/ConfirmPopup<TV;>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->cancelText:Ljava/lang/CharSequence;

    .line 98
    return-void
.end method

.method public setCancelText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "cancelText"    # Ljava/lang/CharSequence;

    .prologue
    .line 88
    .local p0, "this":Lcom/dodonew/online/widget/popup/ConfirmPopup;, "Lcom/dodonew/online/widget/popup/ConfirmPopup<TV;>;"
    iput-object p1, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->cancelText:Ljava/lang/CharSequence;

    .line 89
    return-void
.end method

.method public setCancelTextColor(I)V
    .locals 0
    .param p1, "cancelTextColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 142
    .local p0, "this":Lcom/dodonew/online/widget/popup/ConfirmPopup;, "Lcom/dodonew/online/widget/popup/ConfirmPopup<TV;>;"
    iput p1, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->cancelTextColor:I

    .line 143
    return-void
.end method

.method public setCancelVisible(Z)V
    .locals 0
    .param p1, "cancelVisible"    # Z

    .prologue
    .line 79
    .local p0, "this":Lcom/dodonew/online/widget/popup/ConfirmPopup;, "Lcom/dodonew/online/widget/popup/ConfirmPopup<TV;>;"
    iput-boolean p1, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->cancelVisible:Z

    .line 80
    return-void
.end method

.method public setSubmitText(I)V
    .locals 1
    .param p1, "textRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 115
    .local p0, "this":Lcom/dodonew/online/widget/popup/ConfirmPopup;, "Lcom/dodonew/online/widget/popup/ConfirmPopup<TV;>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->submitText:Ljava/lang/CharSequence;

    .line 116
    return-void
.end method

.method public setSubmitText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "submitText"    # Ljava/lang/CharSequence;

    .prologue
    .line 106
    .local p0, "this":Lcom/dodonew/online/widget/popup/ConfirmPopup;, "Lcom/dodonew/online/widget/popup/ConfirmPopup<TV;>;"
    iput-object p1, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->submitText:Ljava/lang/CharSequence;

    .line 107
    return-void
.end method

.method public setSubmitTextColor(I)V
    .locals 0
    .param p1, "submitTextColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 151
    .local p0, "this":Lcom/dodonew/online/widget/popup/ConfirmPopup;, "Lcom/dodonew/online/widget/popup/ConfirmPopup<TV;>;"
    iput p1, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->submitTextColor:I

    .line 152
    return-void
.end method

.method public setTitleText(I)V
    .locals 1
    .param p1, "textRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 133
    .local p0, "this":Lcom/dodonew/online/widget/popup/ConfirmPopup;, "Lcom/dodonew/online/widget/popup/ConfirmPopup<TV;>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->titleText:Ljava/lang/CharSequence;

    .line 134
    return-void
.end method

.method public setTitleText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "titleText"    # Ljava/lang/CharSequence;

    .prologue
    .line 124
    .local p0, "this":Lcom/dodonew/online/widget/popup/ConfirmPopup;, "Lcom/dodonew/online/widget/popup/ConfirmPopup<TV;>;"
    iput-object p1, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->titleText:Ljava/lang/CharSequence;

    .line 125
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 0
    .param p1, "titleTextColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 160
    .local p0, "this":Lcom/dodonew/online/widget/popup/ConfirmPopup;, "Lcom/dodonew/online/widget/popup/ConfirmPopup<TV;>;"
    iput p1, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->titleTextColor:I

    .line 161
    return-void
.end method

.method public setTopBackgroundColor(I)V
    .locals 0
    .param p1, "topBackgroundColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 61
    .local p0, "this":Lcom/dodonew/online/widget/popup/ConfirmPopup;, "Lcom/dodonew/online/widget/popup/ConfirmPopup<TV;>;"
    iput p1, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->topBackgroundColor:I

    .line 62
    return-void
.end method

.method public setTopLineColor(I)V
    .locals 0
    .param p1, "topLineColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 52
    .local p0, "this":Lcom/dodonew/online/widget/popup/ConfirmPopup;, "Lcom/dodonew/online/widget/popup/ConfirmPopup<TV;>;"
    iput p1, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->topLineColor:I

    .line 53
    return-void
.end method

.method public setTopLineVisible(Z)V
    .locals 0
    .param p1, "topLineVisible"    # Z

    .prologue
    .line 70
    .local p0, "this":Lcom/dodonew/online/widget/popup/ConfirmPopup;, "Lcom/dodonew/online/widget/popup/ConfirmPopup<TV;>;"
    iput-boolean p1, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup;->topLineVisible:Z

    .line 71
    return-void
.end method
