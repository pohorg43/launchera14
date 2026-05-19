.class public final Lcom/android/common/debug/FileLogHelper$FileLogInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/debug/FileLogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileLogInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/common/debug/FileLogHelper$FileLogInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fileDir:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private final maxFileSize:I

.field private final type:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/debug/FileLogHelper$FileLogInfo$Creator;

    invoke-direct {v0}, Lcom/android/common/debug/FileLogHelper$FileLogInfo$Creator;-><init>()V

    sput-object v0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 6

    const-string v0, "fileDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->type:I

    iput-object p2, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->fileDir:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->filePath:Ljava/lang/String;

    iput p4, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->maxFileSize:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_5

    const/4 p3, 0x0

    :cond_5
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_a

    const/4 p4, 0x5

    :cond_a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/common/debug/FileLogHelper$FileLogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/common/debug/FileLogHelper$FileLogInfo;ILjava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/android/common/debug/FileLogHelper$FileLogInfo;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget p1, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->type:I

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->fileDir:Ljava/lang/String;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->filePath:Ljava/lang/String;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget p4, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->maxFileSize:I

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->copy(ILjava/lang/String;Ljava/lang/String;I)Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->type:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->fileDir:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->maxFileSize:I

    return p0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;I)Lcom/android/common/debug/FileLogHelper$FileLogInfo;
    .registers 5

    const-string p0, "fileDir"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/common/debug/FileLogHelper$FileLogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-object p0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    iget v1, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->type:I

    iget v3, p1, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->type:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->fileDir:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->fileDir:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->filePath:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->filePath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget p0, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->maxFileSize:I

    iget p1, p1, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->maxFileSize:I

    if-eq p0, p1, :cond_30

    return v2

    :cond_30
    return v0
.end method

.method public final getFileDir()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->fileDir:Ljava/lang/String;

    return-object p0
.end method

.method public final getFilePath()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getMaxFileSize()I
    .registers 1

    iget p0, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->maxFileSize:I

    return p0
.end method

.method public final getType()I
    .registers 1

    iget p0, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->type:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->fileDir:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->filePath:Ljava/lang/String;

    if-nez v1, :cond_16

    const/4 v1, 0x0

    goto :goto_1a

    :cond_16
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->maxFileSize:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isBRFileLog()Z
    .registers 2

    iget p0, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->type:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final isOtaFileLog()Z
    .registers 2

    iget p0, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->type:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final setFilePath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->filePath:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "FileLogInfo(type="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fileDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->fileDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->maxFileSize:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string/jumbo p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->fileDir:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->maxFileSize:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
