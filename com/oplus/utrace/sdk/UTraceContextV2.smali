.class public final Lcom/oplus/utrace/sdk/UTraceContextV2;
.super Lcom/oplus/utrace/sdk/UTraceContext;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/utrace/sdk/UTraceContextV2$Companion;,
        Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/utrace/sdk/UTraceContextV2$Companion;

.field private static final KEY_CURRENT:Ljava/lang/String; = "current"

.field private static final KEY_PARENT:Ljava/lang/String; = "parent"

.field private static final KEY_SPAN_TYPE:Ljava/lang/String; = "spanType"

.field private static final KEY_TAG:Ljava/lang/String; = "tag"

.field private static final KEY_TRACE_ID:Ljava/lang/String; = "traceID"

.field private static final KEY_VALID:Ljava/lang/String; = "valid"


# instance fields
.field private spanType:I

.field private tags:Ljava/lang/String;

.field private valid:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/utrace/sdk/UTraceContextV2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/utrace/sdk/UTraceContextV2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/utrace/sdk/UTraceContextV2;->Companion:Lcom/oplus/utrace/sdk/UTraceContextV2$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/UTraceContext;-><init>()V

    sget-object v0, Lcom/oplus/utrace/lib/SpanType;->CodeSpans:Lcom/oplus/utrace/lib/SpanType;

    invoke-virtual {v0}, Lcom/oplus/utrace/lib/SpanType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/utrace/sdk/UTraceContextV2;->spanType:I

    sget-object v0, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->VALID:Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

    invoke-virtual {v0}, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/utrace/sdk/UTraceContextV2;->valid:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;IILjava/lang/String;)V
    .registers 8

    const-string v0, "traceID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "current"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/UTraceContextV2;-><init>()V

    invoke-virtual {p0, p1}, Lcom/oplus/utrace/sdk/UTraceContext;->setTraceID$utrace_sdk_fullRelease(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/oplus/utrace/sdk/UTraceContext;->setCurrent$utrace_sdk_fullRelease(Lcom/oplus/utrace/lib/NodeID;)V

    invoke-virtual {p0, p3}, Lcom/oplus/utrace/sdk/UTraceContext;->setParent$utrace_sdk_fullRelease(Lcom/oplus/utrace/lib/NodeID;)V

    iput p4, p0, Lcom/oplus/utrace/sdk/UTraceContextV2;->spanType:I

    iput p5, p0, Lcom/oplus/utrace/sdk/UTraceContextV2;->valid:I

    iput-object p6, p0, Lcom/oplus/utrace/sdk/UTraceContextV2;->tags:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 18

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v5, v1

    goto :goto_8

    :cond_7
    move-object v5, p3

    :goto_8
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_14

    sget-object v0, Lcom/oplus/utrace/lib/SpanType;->CodeSpans:Lcom/oplus/utrace/lib/SpanType;

    invoke-virtual {v0}, Lcom/oplus/utrace/lib/SpanType;->getValue()I

    move-result v0

    move v6, v0

    goto :goto_15

    :cond_14
    move v6, p4

    :goto_15
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_21

    sget-object v0, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->VALID:Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

    invoke-virtual {v0}, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->getValue()I

    move-result v0

    move v7, v0

    goto :goto_22

    :cond_21
    move v7, p5

    :goto_22
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_28

    move-object v8, v1

    goto :goto_29

    :cond_28
    move-object v8, p6

    :goto_29
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lcom/oplus/utrace/sdk/UTraceContextV2;-><init>(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;IILjava/lang/String;)V

    return-void
.end method


# virtual methods
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
    instance-of v2, p1, Lcom/oplus/utrace/sdk/UTraceContextV2;

    if-nez v2, :cond_d

    return v0

    :cond_d
    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/UTraceContext;->getTraceID$utrace_sdk_fullRelease()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Lcom/oplus/utrace/sdk/UTraceContextV2;

    invoke-virtual {p1}, Lcom/oplus/utrace/sdk/UTraceContext;->getTraceID$utrace_sdk_fullRelease()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/UTraceContext;->getCurrent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oplus/utrace/sdk/UTraceContext;->getCurrent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/UTraceContext;->getParent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oplus/utrace/sdk/UTraceContext;->getParent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    iget v2, p0, Lcom/oplus/utrace/sdk/UTraceContextV2;->spanType:I

    iget v3, p1, Lcom/oplus/utrace/sdk/UTraceContextV2;->spanType:I

    if-ne v2, v3, :cond_50

    iget v2, p0, Lcom/oplus/utrace/sdk/UTraceContextV2;->valid:I

    iget v3, p1, Lcom/oplus/utrace/sdk/UTraceContextV2;->valid:I

    if-ne v2, v3, :cond_50

    iget-object p0, p0, Lcom/oplus/utrace/sdk/UTraceContextV2;->tags:Ljava/lang/String;

    iget-object p1, p1, Lcom/oplus/utrace/sdk/UTraceContextV2;->tags:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_50

    move v0, v1

    :cond_50
    return v0
.end method

.method public final getSpanType$utrace_sdk_fullRelease()I
    .registers 1

    iget p0, p0, Lcom/oplus/utrace/sdk/UTraceContextV2;->spanType:I

    return p0
.end method

.method public final getTag()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/sdk/UTraceContextV2;->tags:Ljava/lang/String;

    return-object p0
.end method

.method public final getValid$utrace_sdk_fullRelease()I
    .registers 1

    iget p0, p0, Lcom/oplus/utrace/sdk/UTraceContextV2;->valid:I

    return p0
.end method

.method public hashCode()I
    .registers 5

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/UTraceContext;->getTraceID$utrace_sdk_fullRelease()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/UTraceContext;->getCurrent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/NodeID;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/UTraceContext;->getParent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    move v0, v2

    goto :goto_22

    :cond_1e
    invoke-virtual {v0}, Lcom/oplus/utrace/lib/NodeID;->hashCode()I

    move-result v0

    :goto_22
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/oplus/utrace/sdk/UTraceContextV2;->spanType:I

    const/16 v3, 0x1f

    invoke-static {v0, v1, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/oplus/utrace/sdk/UTraceContextV2;->valid:I

    invoke-static {v1, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object p0, p0, Lcom/oplus/utrace/sdk/UTraceContextV2;->tags:Ljava/lang/String;

    if-nez p0, :cond_38

    goto :goto_3c

    :cond_38
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3c
    add-int/2addr v0, v2

    return v0
.end method

.method public final setSpanType$utrace_sdk_fullRelease(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/utrace/sdk/UTraceContextV2;->spanType:I

    return-void
.end method

.method public final setTag(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/utrace/sdk/UTraceContextV2;->tags:Ljava/lang/String;

    return-void
.end method

.method public final setValid$utrace_sdk_fullRelease(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/utrace/sdk/UTraceContextV2;->valid:I

    return-void
.end method

.method public final toJsonString()Ljava/lang/String;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/UTraceContext;->getTraceID$utrace_sdk_fullRelease()Ljava/lang/String;

    move-result-object v1

    const-string v2, "traceID"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/UTraceContext;->getCurrent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/NodeID;->toJsonString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "current"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/UTraceContext;->getParent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v1

    if-nez v1, :cond_23

    const/4 v1, 0x0

    goto :goto_27

    :cond_23
    invoke-virtual {v1}, Lcom/oplus/utrace/lib/NodeID;->toJsonString()Ljava/lang/String;

    move-result-object v1

    :goto_27
    const-string v2, "parent"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/UTraceContextV2;->getSpanType$utrace_sdk_fullRelease()I

    move-result v1

    const-string v2, "spanType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/UTraceContextV2;->getValid$utrace_sdk_fullRelease()I

    move-result v1

    const-string v2, "valid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/oplus/utrace/sdk/UTraceContextV2;->tags:Ljava/lang/String;

    const-string v1, "tag"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v1, "toJsonString, "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTraceContext"

    invoke-virtual {p0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "resultJson.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final toLegacyObj()Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 4

    new-instance v0, Lcom/oplus/utrace/sdk/UTraceContext;

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/UTraceContext;->getTraceID$utrace_sdk_fullRelease()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/UTraceContext;->getCurrent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/UTraceContext;->getParent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/oplus/utrace/sdk/UTraceContext;-><init>(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "UTraceContext(traceID=\'"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/UTraceContext;->getTraceID$utrace_sdk_fullRelease()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/UTraceContext;->getCurrent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/UTraceContext;->getParent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spanType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/utrace/sdk/UTraceContextV2;->spanType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/utrace/sdk/UTraceContextV2;->valid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/utrace/sdk/UTraceContextV2;->tags:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
