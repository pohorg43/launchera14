.class public final Lcom/oplus/utrace/lib/NodeID;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/utrace/lib/NodeID$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/oplus/utrace/lib/NodeID$CREATOR;


# instance fields
.field private final composedSpanId$delegate:Lh4/f;

.field private sequence:I

.field private spanID:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/utrace/lib/NodeID$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/utrace/lib/NodeID$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/utrace/lib/NodeID;->CREATOR:Lcom/oplus/utrace/lib/NodeID$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/utrace/lib/NodeID;->spanID:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/utrace/lib/NodeID;->sequence:I

    new-instance v0, Lcom/oplus/utrace/lib/NodeID$composedSpanId$2;

    invoke-direct {v0, p0}, Lcom/oplus/utrace/lib/NodeID$composedSpanId$2;-><init>(Lcom/oplus/utrace/lib/NodeID;)V

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/utrace/lib/NodeID;->composedSpanId$delegate:Lh4/f;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/utrace/lib/NodeID;-><init>()V

    const-string v0, ""

    if-nez p1, :cond_8

    goto :goto_10

    :cond_8
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_10

    :cond_f
    move-object v0, v1

    :goto_10
    iput-object v0, p0, Lcom/oplus/utrace/lib/NodeID;->spanID:Ljava/lang/String;

    if-nez p1, :cond_16

    const/4 p1, -0x1

    goto :goto_1a

    :cond_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    :goto_1a
    iput p1, p0, Lcom/oplus/utrace/lib/NodeID;->sequence:I

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1f

    goto :goto_24

    :catchall_1f
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_24
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_2b

    goto :goto_48

    :cond_2b
    sget-object p1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v0, "parcel parse exception: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTrace.Sdk.NodeID"

    invoke-virtual {p1, v0, p0}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7

    const-string v0, "jsonString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/utrace/lib/NodeID;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const-string v1, "UTrace.Sdk.NodeID"

    const/4 v2, -0x1

    const-string v3, ""

    if-eqz v0, :cond_24

    iput-object v3, p0, Lcom/oplus/utrace/lib/NodeID;->spanID:Ljava/lang/String;

    iput v2, p0, Lcom/oplus/utrace/lib/NodeID;->sequence:I

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string p1, "create NodeId from json error: jsonString is empty."

    invoke-virtual {p0, v1, p1}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_24
    :try_start_24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "spanID"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "it.optString(KEY_SPAN_ID, \"\")"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/utrace/lib/NodeID;->spanID:Ljava/lang/String;

    const-string p1, "sequence"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/oplus/utrace/lib/NodeID;->sequence:I

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_40
    .catchall {:try_start_24 .. :try_end_40} :catchall_41

    goto :goto_46

    :catchall_41
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_46
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4d

    goto :goto_60

    :cond_4d
    iput-object v3, p0, Lcom/oplus/utrace/lib/NodeID;->spanID:Ljava/lang/String;

    iput v2, p0, Lcom/oplus/utrace/lib/NodeID;->sequence:I

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "create NodeId from json error: "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p1}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "spanId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/utrace/lib/NodeID;-><init>()V

    iput-object p1, p0, Lcom/oplus/utrace/lib/NodeID;->spanID:Ljava/lang/String;

    iput p2, p0, Lcom/oplus/utrace/lib/NodeID;->sequence:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    const-string p1, ""

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    const/4 p2, -0x1

    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/oplus/utrace/lib/NodeID;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$getSequence$p(Lcom/oplus/utrace/lib/NodeID;)I
    .registers 1

    iget p0, p0, Lcom/oplus/utrace/lib/NodeID;->sequence:I

    return p0
.end method

.method public static final synthetic access$getSpanID$p(Lcom/oplus/utrace/lib/NodeID;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/lib/NodeID;->spanID:Ljava/lang/String;

    return-object p0
.end method

.method private final getComposedSpanId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/lib/NodeID;->composedSpanId$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic getSpanID$default(Lcom/oplus/utrace/lib/NodeID;ZILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/oplus/utrace/lib/NodeID;->getSpanID(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
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
    instance-of v2, p1, Lcom/oplus/utrace/lib/NodeID;

    if-nez v2, :cond_d

    return v0

    :cond_d
    check-cast p1, Lcom/oplus/utrace/lib/NodeID;

    iget-object v2, p1, Lcom/oplus/utrace/lib/NodeID;->spanID:Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/utrace/lib/NodeID;->spanID:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget p1, p1, Lcom/oplus/utrace/lib/NodeID;->sequence:I

    iget p0, p0, Lcom/oplus/utrace/lib/NodeID;->sequence:I

    if-ne p1, p0, :cond_20

    move v0, v1

    :cond_20
    return v0
.end method

.method public final getSpanID(Z)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/oplus/utrace/lib/NodeID;->getComposedSpanId()Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    :cond_7
    iget-object p0, p0, Lcom/oplus/utrace/lib/NodeID;->spanID:Ljava/lang/String;

    :goto_9
    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/oplus/utrace/lib/NodeID;->spanID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/oplus/utrace/lib/NodeID;->sequence:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toJsonString()Ljava/lang/String;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/oplus/utrace/lib/NodeID;->spanID:Ljava/lang/String;

    const-string v2, "spanID"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget p0, p0, Lcom/oplus/utrace/lib/NodeID;->sequence:I

    const-string v1, "sequence"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JSONObject().apply {\n   …nce)\n        }.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/utrace/lib/NodeID;->getComposedSpanId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/utrace/lib/NodeID;->spanID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p0, Lcom/oplus/utrace/lib/NodeID;->sequence:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
