.class public Lcom/oplus/utrace/sdk/UTraceContext;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/utrace/sdk/UTraceContext$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/oplus/utrace/sdk/UTraceContext$CREATOR;


# instance fields
.field private current:Lcom/oplus/utrace/lib/NodeID;

.field private parent:Lcom/oplus/utrace/lib/NodeID;

.field private traceID:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/utrace/sdk/UTraceContext$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/utrace/sdk/UTraceContext$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/utrace/sdk/UTraceContext;->CREATOR:Lcom/oplus/utrace/sdk/UTraceContext$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/utrace/sdk/UTraceContext;->traceID:Ljava/lang/String;

    new-instance v0, Lcom/oplus/utrace/lib/NodeID;

    invoke-direct {v0}, Lcom/oplus/utrace/lib/NodeID;-><init>()V

    iput-object v0, p0, Lcom/oplus/utrace/sdk/UTraceContext;->current:Lcom/oplus/utrace/lib/NodeID;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const-string v0, ""

    if-nez p1, :cond_5

    goto :goto_d

    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_d

    :cond_c
    move-object v0, v1

    :goto_d
    const/4 v1, 0x0

    if-nez p1, :cond_12

    move-object v2, v1

    goto :goto_1e

    :cond_12
    const-class v2, Lcom/oplus/utrace/lib/NodeID;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/oplus/utrace/utils/ExceptionProtectUtilKt;->readParcelableSafe(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/oplus/utrace/lib/NodeID;

    :goto_1e
    if-nez v2, :cond_25

    new-instance v2, Lcom/oplus/utrace/lib/NodeID;

    invoke-direct {v2}, Lcom/oplus/utrace/lib/NodeID;-><init>()V

    :cond_25
    if-nez p1, :cond_28

    goto :goto_35

    :cond_28
    const-class v1, Lcom/oplus/utrace/lib/NodeID;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/oplus/utrace/utils/ExceptionProtectUtilKt;->readParcelableSafe(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/oplus/utrace/lib/NodeID;

    :goto_35
    invoke-direct {p0, v0, v2, v1}, Lcom/oplus/utrace/sdk/UTraceContext;-><init>(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;)V
    .registers 5

    const-string v0, "traceID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "current"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/UTraceContext;-><init>()V

    iput-object p1, p0, Lcom/oplus/utrace/sdk/UTraceContext;->traceID:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/utrace/sdk/UTraceContext;->current:Lcom/oplus/utrace/lib/NodeID;

    iput-object p3, p0, Lcom/oplus/utrace/sdk/UTraceContext;->parent:Lcom/oplus/utrace/lib/NodeID;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/utrace/sdk/UTraceContext;-><init>(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    :cond_8
    instance-of v2, p1, Lcom/oplus/utrace/sdk/UTraceContext;

    if-nez v2, :cond_d

    return v0

    :cond_d
    iget-object v2, p0, Lcom/oplus/utrace/sdk/UTraceContext;->traceID:Ljava/lang/String;

    check-cast p1, Lcom/oplus/utrace/sdk/UTraceContext;

    iget-object v3, p1, Lcom/oplus/utrace/sdk/UTraceContext;->traceID:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/oplus/utrace/sdk/UTraceContext;->current:Lcom/oplus/utrace/lib/NodeID;

    iget-object v3, p1, Lcom/oplus/utrace/sdk/UTraceContext;->current:Lcom/oplus/utrace/lib/NodeID;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object p0, p0, Lcom/oplus/utrace/sdk/UTraceContext;->parent:Lcom/oplus/utrace/lib/NodeID;

    iget-object p1, p1, Lcom/oplus/utrace/sdk/UTraceContext;->parent:Lcom/oplus/utrace/lib/NodeID;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    move v0, v1

    :cond_2e
    return v0
.end method

.method public final getCurrent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/sdk/UTraceContext;->current:Lcom/oplus/utrace/lib/NodeID;

    return-object p0
.end method

.method public final getParent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/sdk/UTraceContext;->parent:Lcom/oplus/utrace/lib/NodeID;

    return-object p0
.end method

.method public final getTraceID$utrace_sdk_fullRelease()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/sdk/UTraceContext;->traceID:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/oplus/utrace/sdk/UTraceContext;->traceID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/utrace/sdk/UTraceContext;->current:Lcom/oplus/utrace/lib/NodeID;

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/NodeID;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/oplus/utrace/sdk/UTraceContext;->parent:Lcom/oplus/utrace/lib/NodeID;

    if-nez p0, :cond_17

    const/4 p0, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {p0}, Lcom/oplus/utrace/lib/NodeID;->hashCode()I

    move-result p0

    :goto_1b
    add-int/2addr v1, p0

    return v1
.end method

.method public final synthetic serialize()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    const/4 v0, 0x6

    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lz4/r;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/UTraceContext;->serializeToString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    goto :goto_33

    :cond_1c
    const-class v0, [B

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lz4/r;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/UTraceContext;->serializeToBytes()[B

    move-result-object v2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    goto :goto_33

    :cond_30
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    :goto_33
    return-object v2
.end method

.method public final serializeToBytes()[B
    .registers 1

    invoke-static {p0}, Lcom/oplus/utrace/utils/TraceUtil;->marshall(Landroid/os/Parcelable;)[B

    move-result-object p0

    return-object p0
.end method

.method public final serializeToString()Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/oplus/utrace/utils/TraceUtil;->marshall(Landroid/os/Parcelable;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/utrace/utils/TraceUtil;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final setCurrent$utrace_sdk_fullRelease(Lcom/oplus/utrace/lib/NodeID;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/utrace/sdk/UTraceContext;->current:Lcom/oplus/utrace/lib/NodeID;

    return-void
.end method

.method public final setParent$utrace_sdk_fullRelease(Lcom/oplus/utrace/lib/NodeID;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/utrace/sdk/UTraceContext;->parent:Lcom/oplus/utrace/lib/NodeID;

    return-void
.end method

.method public final setTraceID$utrace_sdk_fullRelease(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/utrace/sdk/UTraceContext;->traceID:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "UTraceContext(traceID=\'"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/utrace/sdk/UTraceContext;->traceID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/utrace/sdk/UTraceContext;->current:Lcom/oplus/utrace/lib/NodeID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/utrace/sdk/UTraceContext;->parent:Lcom/oplus/utrace/lib/NodeID;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/utrace/sdk/UTraceContext;->traceID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/utrace/sdk/UTraceContext;->current:Lcom/oplus/utrace/lib/NodeID;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/oplus/utrace/sdk/UTraceContext;->parent:Lcom/oplus/utrace/lib/NodeID;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
