.class public final Lcom/oplus/utrace/sdk/UTraceContext$CREATOR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utrace/sdk/UTraceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/utrace/sdk/UTraceContext;",
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

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/UTraceContext$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 2

    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/utrace/sdk/UTraceContext;

    invoke-direct {p0, p1}, Lcom/oplus/utrace/sdk/UTraceContext;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/oplus/utrace/sdk/UTraceContext$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 2

    new-array p0, p1, [Lcom/oplus/utrace/sdk/UTraceContext;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/oplus/utrace/sdk/UTraceContext$CREATOR;->newArray(I)[Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p0

    return-object p0
.end method

.method public final unserialize(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 3

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/oplus/utrace/utils/TraceUtil;->decodeToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/utrace/utils/TraceUtil;->unmarshall(Landroid/os/Parcelable$Creator;[B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/utrace/sdk/UTraceContext;

    return-object p0
.end method

.method public final unserialize([B)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 3

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/oplus/utrace/utils/TraceUtil;->unmarshall(Landroid/os/Parcelable$Creator;[B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/utrace/sdk/UTraceContext;

    return-object p0
.end method
