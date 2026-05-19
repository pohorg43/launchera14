.class public Lcom/oplus/log/olc/ExceptionInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/log/olc/ExceptionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAtomicLogs:J

.field private mExceptionId:I

.field private mExceptionLevel:I

.field private mExceptionType:I

.field private mLogParmas:Ljava/lang/String;

.field private mTime:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/log/olc/ExceptionInfo$1;

    invoke-direct {v0}, Lcom/oplus/log/olc/ExceptionInfo$1;-><init>()V

    sput-object v0, Lcom/oplus/log/olc/ExceptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/log/olc/ExceptionInfo;->mTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/log/olc/ExceptionInfo;->mExceptionId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/log/olc/ExceptionInfo;->mExceptionType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/log/olc/ExceptionInfo;->mExceptionLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/log/olc/ExceptionInfo;->mAtomicLogs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/log/olc/ExceptionInfo;->mLogParmas:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getAtomicLogs()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/log/olc/ExceptionInfo;->mAtomicLogs:J

    return-wide v0
.end method

.method public getExceptionLevel()I
    .registers 1

    iget p0, p0, Lcom/oplus/log/olc/ExceptionInfo;->mExceptionLevel:I

    return p0
.end method

.method public getExceptionType()I
    .registers 1

    iget p0, p0, Lcom/oplus/log/olc/ExceptionInfo;->mExceptionType:I

    return p0
.end method

.method public getId()I
    .registers 1

    iget p0, p0, Lcom/oplus/log/olc/ExceptionInfo;->mExceptionId:I

    return p0
.end method

.method public getLogParmas()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/olc/ExceptionInfo;->mLogParmas:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/log/olc/ExceptionInfo;->mTime:J

    return-wide v0
.end method

.method public setAtomicLogs(J)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/log/olc/ExceptionInfo;->mAtomicLogs:J

    return-void
.end method

.method public setExceptionLevel(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/log/olc/ExceptionInfo;->mExceptionLevel:I

    return-void
.end method

.method public setExceptionType(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/log/olc/ExceptionInfo;->mExceptionType:I

    return-void
.end method

.method public setId(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/log/olc/ExceptionInfo;->mExceptionId:I

    return-void
.end method

.method public setLogParmas(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/olc/ExceptionInfo;->mLogParmas:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/log/olc/ExceptionInfo;->mTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "ExceptionInfo{mTime="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/log/olc/ExceptionInfo;->mTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mExceptionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/log/olc/ExceptionInfo;->mExceptionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExceptionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/log/olc/ExceptionInfo;->mExceptionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExceptionLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/log/olc/ExceptionInfo;->mExceptionLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAtomicLogs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/log/olc/ExceptionInfo;->mAtomicLogs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mLogParmas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/log/olc/ExceptionInfo;->mLogParmas:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Lcom/oplus/log/olc/ExceptionInfo;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/oplus/log/olc/ExceptionInfo;->mExceptionId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/oplus/log/olc/ExceptionInfo;->mExceptionType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/oplus/log/olc/ExceptionInfo;->mExceptionLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/oplus/log/olc/ExceptionInfo;->mAtomicLogs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p0, p0, Lcom/oplus/log/olc/ExceptionInfo;->mLogParmas:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
