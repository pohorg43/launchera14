.class public final Lcom/oplus/ums/common/track/TrackBean;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ums/common/track/TrackBean$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/oplus/ums/common/track/TrackBean$CREATOR;


# instance fields
.field private final data:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final tag:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/ums/common/track/TrackBean$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/ums/common/track/TrackBean$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/ums/common/track/TrackBean;->CREATOR:Lcom/oplus/ums/common/track/TrackBean$CREATOR;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "parcel.readString()!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_1a

    move-object v2, v3

    :cond_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_21

    goto :goto_22

    :cond_21
    move-object v3, v4

    :goto_22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/oplus/ums/common/track/TrackBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/ums/common/track/TrackBean;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/ums/common/track/TrackBean;->tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/ums/common/track/TrackBean;->data:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/ums/common/track/TrackBean;->path:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/ums/common/track/TrackBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/ums/common/track/TrackBean;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/oplus/ums/common/track/TrackBean;->id:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/oplus/ums/common/track/TrackBean;->tag:Ljava/lang/String;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/oplus/ums/common/track/TrackBean;->data:Ljava/lang/String;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/oplus/ums/common/track/TrackBean;->path:Ljava/lang/String;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/ums/common/track/TrackBean;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/ums/common/track/TrackBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ums/common/track/TrackBean;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ums/common/track/TrackBean;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ums/common/track/TrackBean;->data:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ums/common/track/TrackBean;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/ums/common/track/TrackBean;
    .registers 5

    const-string p0, "id"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "tag"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "path"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/ums/common/track/TrackBean;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/ums/common/track/TrackBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    instance-of v1, p1, Lcom/oplus/ums/common/track/TrackBean;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/ums/common/track/TrackBean;

    iget-object v1, p0, Lcom/oplus/ums/common/track/TrackBean;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/ums/common/track/TrackBean;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/oplus/ums/common/track/TrackBean;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/ums/common/track/TrackBean;->tag:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/oplus/ums/common/track/TrackBean;->data:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/ums/common/track/TrackBean;->data:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object p0, p0, Lcom/oplus/ums/common/track/TrackBean;->path:Ljava/lang/String;

    iget-object p1, p1, Lcom/oplus/ums/common/track/TrackBean;->path:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final getData()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ums/common/track/TrackBean;->data:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ums/common/track/TrackBean;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ums/common/track/TrackBean;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ums/common/track/TrackBean;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/oplus/ums/common/track/TrackBean;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/ums/common/track/TrackBean;->tag:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/ums/common/track/TrackBean;->data:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lcom/oplus/ums/common/track/TrackBean;->path:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "TrackBean(id="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/ums/common/track/TrackBean;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/ums/common/track/TrackBean;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/ums/common/track/TrackBean;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/ums/common/track/TrackBean;->path:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/motion/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/ums/common/track/TrackBean;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/ums/common/track/TrackBean;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/ums/common/track/TrackBean;->data:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/ums/common/track/TrackBean;->path:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
