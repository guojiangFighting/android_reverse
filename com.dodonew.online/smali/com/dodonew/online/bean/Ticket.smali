.class public Lcom/dodonew/online/bean/Ticket;
.super Ljava/lang/Object;
.source "Ticket.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dodonew/online/bean/Ticket;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private GRId:Ljava/lang/String;

.field private consumeReq:Ljava/lang/String;

.field private domainId:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isAlreadUsed:Ljava/lang/String;

.field private isAlreadyGet:Ljava/lang/String;

.field private maxSum:Ljava/lang/String;

.field private netBarId:Ljava/lang/String;

.field private netBarName:Ljava/lang/String;

.field private presentAmount:Ljava/lang/String;

.field private quantity:Ljava/lang/String;

.field private startTime:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private ticketTypeId:Ljava/lang/String;

.field private userGetAllCount:Ljava/lang/String;

.field private usergetCount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/dodonew/online/bean/Ticket$1;

    invoke-direct {v0}, Lcom/dodonew/online/bean/Ticket$1;-><init>()V

    sput-object v0, Lcom/dodonew/online/bean/Ticket;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Ticket;->id:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Ticket;->netBarId:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Ticket;->domainId:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Ticket;->netBarName:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Ticket;->ticketTypeId:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Ticket;->quantity:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Ticket;->maxSum:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Ticket;->usergetCount:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Ticket;->startTime:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Ticket;->endTime:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Ticket;->consumeReq:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Ticket;->presentAmount:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Ticket;->isAlreadyGet:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Ticket;->userGetAllCount:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Ticket;->GRId:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Ticket;->isAlreadUsed:Ljava/lang/String;

    .line 210
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public getConsumeReq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->consumeReq:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->domainId:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getGRId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->GRId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAlreadUsed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->isAlreadUsed:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAlreadyGet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->isAlreadyGet:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxSum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->maxSum:Ljava/lang/String;

    return-object v0
.end method

.method public getNetBarId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->netBarId:Ljava/lang/String;

    return-object v0
.end method

.method public getNetBarName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->netBarName:Ljava/lang/String;

    return-object v0
.end method

.method public getPresentAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->presentAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->quantity:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTicketTypeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->ticketTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserGetAllCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->userGetAllCount:Ljava/lang/String;

    return-object v0
.end method

.method public getUsergetCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->usergetCount:Ljava/lang/String;

    return-object v0
.end method

.method public setConsumeReq(Ljava/lang/String;)V
    .locals 0
    .param p1, "consumeReq"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/dodonew/online/bean/Ticket;->consumeReq:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setDomainId(Ljava/lang/String;)V
    .locals 0
    .param p1, "domainId"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/dodonew/online/bean/Ticket;->domainId:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "endTime"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/dodonew/online/bean/Ticket;->endTime:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setGRId(Ljava/lang/String;)V
    .locals 0
    .param p1, "GRId"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/dodonew/online/bean/Ticket;->GRId:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/dodonew/online/bean/Ticket;->id:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setIsAlreadUsed(Ljava/lang/String;)V
    .locals 0
    .param p1, "isAlreadUsed"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/dodonew/online/bean/Ticket;->isAlreadUsed:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setIsAlreadyGet(Ljava/lang/String;)V
    .locals 0
    .param p1, "isAlreadyGet"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/dodonew/online/bean/Ticket;->isAlreadyGet:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setMaxSum(Ljava/lang/String;)V
    .locals 0
    .param p1, "maxSum"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/dodonew/online/bean/Ticket;->maxSum:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setNetBarId(Ljava/lang/String;)V
    .locals 0
    .param p1, "netBarId"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/dodonew/online/bean/Ticket;->netBarId:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setNetBarName(Ljava/lang/String;)V
    .locals 0
    .param p1, "netBarName"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/dodonew/online/bean/Ticket;->netBarName:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setPresentAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "presentAmount"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/dodonew/online/bean/Ticket;->presentAmount:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setQuantity(Ljava/lang/String;)V
    .locals 0
    .param p1, "quantity"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/dodonew/online/bean/Ticket;->quantity:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "startTime"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/dodonew/online/bean/Ticket;->startTime:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/dodonew/online/bean/Ticket;->tag:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setTicketTypeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "ticketTypeId"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/dodonew/online/bean/Ticket;->ticketTypeId:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setUserGetAllCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "userGetAllCount"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/dodonew/online/bean/Ticket;->userGetAllCount:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setUsergetCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "usergetCount"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/dodonew/online/bean/Ticket;->usergetCount:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->netBarId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->domainId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->netBarName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->ticketTypeId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->quantity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->maxSum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->usergetCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->startTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->endTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->consumeReq:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->presentAmount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->isAlreadyGet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->userGetAllCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->GRId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticket;->isAlreadUsed:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    return-void
.end method
