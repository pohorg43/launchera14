.class public final Lpantanal/app/groupcard/GroupChildCardDataInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/groupcard/GroupChildCardDataInfo$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lpantanal/app/groupcard/GroupChildCardDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lpantanal/app/groupcard/GroupChildCardDataInfo$Companion;

.field private static final TAG:Ljava/lang/String; = "GroupChildCardDataInfo"


# instance fields
.field private final cardIdentity:Ljava/lang/String;

.field private final uiData:Ljava/lang/String;

.field private viewScreenshot:Landroid/graphics/Bitmap;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/groupcard/GroupChildCardDataInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/groupcard/GroupChildCardDataInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/groupcard/GroupChildCardDataInfo;->Companion:Lpantanal/app/groupcard/GroupChildCardDataInfo$Companion;

    new-instance v0, Lpantanal/app/groupcard/GroupChildCardDataInfo$Creator;

    invoke-direct {v0}, Lpantanal/app/groupcard/GroupChildCardDataInfo$Creator;-><init>()V

    sput-object v0, Lpantanal/app/groupcard/GroupChildCardDataInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "cardIdentity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/groupcard/GroupChildCardDataInfo;->cardIdentity:Ljava/lang/String;

    iput-object p2, p0, Lpantanal/app/groupcard/GroupChildCardDataInfo;->uiData:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-direct {p0, p1, p2}, Lpantanal/app/groupcard/GroupChildCardDataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/app/groupcard/GroupChildCardDataInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lpantanal/app/groupcard/GroupChildCardDataInfo;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lpantanal/app/groupcard/GroupChildCardDataInfo;->cardIdentity:Ljava/lang/String;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lpantanal/app/groupcard/GroupChildCardDataInfo;->uiData:Ljava/lang/String;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lpantanal/app/groupcard/GroupChildCardDataInfo;->copy(Ljava/lang/String;Ljava/lang/String;)Lpantanal/app/groupcard/GroupChildCardDataInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getViewScreenshot$annotations()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/GroupChildCardDataInfo;->cardIdentity:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/GroupChildCardDataInfo;->uiData:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;)Lpantanal/app/groupcard/GroupChildCardDataInfo;
    .registers 3

    const-string p0, "cardIdentity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lpantanal/app/groupcard/GroupChildCardDataInfo;

    invoke-direct {p0, p1, p2}, Lpantanal/app/groupcard/GroupChildCardDataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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
    instance-of v1, p1, Lpantanal/app/groupcard/GroupChildCardDataInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/app/groupcard/GroupChildCardDataInfo;

    iget-object v1, p0, Lpantanal/app/groupcard/GroupChildCardDataInfo;->cardIdentity:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/groupcard/GroupChildCardDataInfo;->cardIdentity:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object p0, p0, Lpantanal/app/groupcard/GroupChildCardDataInfo;->uiData:Ljava/lang/String;

    iget-object p1, p1, Lpantanal/app/groupcard/GroupChildCardDataInfo;->uiData:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getCardIdentity()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/GroupChildCardDataInfo;->cardIdentity:Ljava/lang/String;

    return-object p0
.end method

.method public final getUiData()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/GroupChildCardDataInfo;->uiData:Ljava/lang/String;

    return-object p0
.end method

.method public final getViewScreenshot()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/GroupChildCardDataInfo;->viewScreenshot:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lpantanal/app/groupcard/GroupChildCardDataInfo;->cardIdentity:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lpantanal/app/groupcard/GroupChildCardDataInfo;->uiData:Ljava/lang/String;

    if-nez p0, :cond_e

    const/4 p0, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_12
    add-int/2addr v0, p0

    return v0
.end method

.method public final setViewScreenshot(Landroid/graphics/Bitmap;)V
    .registers 13

    sget-object v0, Ly8/c;->a:Ly8/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set viewScreenShot to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "GroupChildCardDataInfo"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/groupcard/GroupChildCardDataInfo;->viewScreenshot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_28
    iput-object p1, p0, Lpantanal/app/groupcard/GroupChildCardDataInfo;->viewScreenshot:Landroid/graphics/Bitmap;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lpantanal/app/groupcard/GroupChildCardDataInfo;->cardIdentity:Ljava/lang/String;

    iget-object v1, p0, Lpantanal/app/groupcard/GroupChildCardDataInfo;->uiData:Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    iget-object p0, p0, Lpantanal/app/groupcard/GroupChildCardDataInfo;->viewScreenshot:Landroid/graphics/Bitmap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GroupChildCardDataInfo[cardIdentity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",uiDataLength:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",viewScreenshot:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lpantanal/app/groupcard/GroupChildCardDataInfo;->cardIdentity:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lpantanal/app/groupcard/GroupChildCardDataInfo;->uiData:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
