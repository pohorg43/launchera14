.class public final Lcom/oplus/utrace/lib/NodeID$CREATOR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utrace/lib/NodeID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/utrace/lib/NodeID;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/utrace/lib/NodeID$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oplus/utrace/lib/NodeID;
    .registers 2

    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/utrace/lib/NodeID;

    invoke-direct {p0, p1}, Lcom/oplus/utrace/lib/NodeID;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/oplus/utrace/lib/NodeID$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/utrace/lib/NodeID;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/oplus/utrace/lib/NodeID;
    .registers 2

    new-array p0, p1, [Lcom/oplus/utrace/lib/NodeID;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/oplus/utrace/lib/NodeID$CREATOR;->newArray(I)[Lcom/oplus/utrace/lib/NodeID;

    move-result-object p0

    return-object p0
.end method

.method public final parseComposedSpanId(Ljava/lang/String;)Lcom/oplus/utrace/lib/NodeID;
    .registers 4

    const-string p0, "spanId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "@"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p1, p0, v0, v0, v1}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x2

    if-ge p1, v1, :cond_24

    new-instance p1, Lcom/oplus/utrace/lib/NodeID;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lcom/oplus/utrace/lib/NodeID;-><init>(Ljava/lang/String;I)V

    goto :goto_4a

    :cond_24
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lk7/l;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_3c

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_40

    :cond_3c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_40
    const v0, 0x7fffffff

    and-int/2addr p0, v0

    new-instance v0, Lcom/oplus/utrace/lib/NodeID;

    invoke-direct {v0, p1, p0}, Lcom/oplus/utrace/lib/NodeID;-><init>(Ljava/lang/String;I)V

    move-object p1, v0

    :goto_4a
    return-object p1
.end method
