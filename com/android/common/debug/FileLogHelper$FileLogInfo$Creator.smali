.class public final Lcom/android/common/debug/FileLogHelper$FileLogInfo$Creator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/debug/FileLogHelper$FileLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/common/debug/FileLogHelper$FileLogInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/android/common/debug/FileLogHelper$FileLogInfo;
    .registers 5

    const-string/jumbo p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/common/debug/FileLogHelper$FileLogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/common/debug/FileLogHelper$FileLogInfo$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/android/common/debug/FileLogHelper$FileLogInfo;
    .registers 2

    new-array p0, p1, [Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/common/debug/FileLogHelper$FileLogInfo$Creator;->newArray(I)[Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    move-result-object p0

    return-object p0
.end method
