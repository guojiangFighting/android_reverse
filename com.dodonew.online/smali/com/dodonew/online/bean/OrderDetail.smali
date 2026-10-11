.class public Lcom/dodonew/online/bean/OrderDetail;
.super Ljava/lang/Object;
.source "OrderDetail.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dodonew/online/bean/OrderDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allowWeekend:Ljava/lang/String;

.field private bookCurrentTime:Ljava/lang/String;

.field private bookLong:Ljava/lang/String;

.field private bookLongTime:Ljava/lang/String;

.field private bookMessageId:Ljava/lang/String;

.field private bookMoney:Ljava/lang/String;

.field private bookState:Ljava/lang/String;

.field private bookTime:Ljava/lang/String;

.field private byHours:Ljava/lang/String;

.field private byShift:Ljava/lang/String;

.field private deductionAmount:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private netBarCaption:Ljava/lang/String;

.field private netBarId:Ljava/lang/String;

.field private termId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/dodonew/online/bean/OrderDetail$1;

    invoke-direct {v0}, Lcom/dodonew/online/bean/OrderDetail$1;-><init>()V

    sput-object v0, Lcom/dodonew/online/bean/OrderDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->allowWeekend:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->bookCurrentTime:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->bookLong:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->bookLongTime:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->bookMessageId:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->bookMoney:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->bookState:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->bookTime:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->byHours:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->byShift:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->deductionAmount:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->name:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->netBarCaption:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->netBarId:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->termId:Ljava/lang/String;

    .line 189
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowWeekend()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->allowWeekend:Ljava/lang/String;

    return-object v0
.end method

.method public getBookCurrentTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->bookCurrentTime:Ljava/lang/String;

    return-object v0
.end method

.method public getBookLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->bookLong:Ljava/lang/String;

    return-object v0
.end method

.method public getBookLongTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->bookLongTime:Ljava/lang/String;

    return-object v0
.end method

.method public getBookMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->bookMessageId:Ljava/lang/String;

    return-object v0
.end method

.method public getBookMoney()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->bookMoney:Ljava/lang/String;

    return-object v0
.end method

.method public getBookState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->bookState:Ljava/lang/String;

    return-object v0
.end method

.method public getBookTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->bookTime:Ljava/lang/String;

    return-object v0
.end method

.method public getByHours()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->byHours:Ljava/lang/String;

    return-object v0
.end method

.method public getByShift()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->byShift:Ljava/lang/String;

    return-object v0
.end method

.method public getDeductionAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->deductionAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNetBarCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->netBarCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getNetBarId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->netBarId:Ljava/lang/String;

    return-object v0
.end method

.method public getTermId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->termId:Ljava/lang/String;

    return-object v0
.end method

.method public setAllowWeekend(Ljava/lang/String;)V
    .locals 0
    .param p1, "allowWeekend"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderDetail;->allowWeekend:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setBookCurrentTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "bookCurrentTime"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderDetail;->bookCurrentTime:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setBookLong(Ljava/lang/String;)V
    .locals 0
    .param p1, "bookLong"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderDetail;->bookLong:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setBookLongTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "bookLongTime"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderDetail;->bookLongTime:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setBookMessageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "bookMessageId"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderDetail;->bookMessageId:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setBookMoney(Ljava/lang/String;)V
    .locals 0
    .param p1, "bookMoney"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderDetail;->bookMoney:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setBookState(Ljava/lang/String;)V
    .locals 0
    .param p1, "bookState"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderDetail;->bookState:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setBookTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "bookTime"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderDetail;->bookTime:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setByHours(Ljava/lang/String;)V
    .locals 0
    .param p1, "byHours"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderDetail;->byHours:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setByShift(Ljava/lang/String;)V
    .locals 0
    .param p1, "byShift"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderDetail;->byShift:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setDeductionAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "deductionAmount"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderDetail;->deductionAmount:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderDetail;->name:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setNetBarCaption(Ljava/lang/String;)V
    .locals 0
    .param p1, "netBarCaption"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderDetail;->netBarCaption:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setNetBarId(Ljava/lang/String;)V
    .locals 0
    .param p1, "netBarId"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderDetail;->netBarId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setTermId(Ljava/lang/String;)V
    .locals 0
    .param p1, "termId"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderDetail;->termId:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->allowWeekend:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->bookCurrentTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->bookLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->bookLongTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->bookMessageId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->bookMoney:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->bookState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->bookTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->byHours:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->byShift:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->deductionAmount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->netBarCaption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->netBarId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderDetail;->termId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    return-void
.end method
