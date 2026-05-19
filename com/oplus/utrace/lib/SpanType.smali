.class public final enum Lcom/oplus/utrace/lib/SpanType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/utrace/lib/SpanType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/utrace/lib/SpanType;

.field public static final enum CodeSpans:Lcom/oplus/utrace/lib/SpanType;

.field public static final enum IntentTrace:Lcom/oplus/utrace/lib/SpanType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/oplus/utrace/lib/SpanType;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oplus/utrace/lib/SpanType;

    sget-object v1, Lcom/oplus/utrace/lib/SpanType;->CodeSpans:Lcom/oplus/utrace/lib/SpanType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/utrace/lib/SpanType;->IntentTrace:Lcom/oplus/utrace/lib/SpanType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/oplus/utrace/lib/SpanType;

    const-string v1, "CodeSpans"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/utrace/lib/SpanType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/utrace/lib/SpanType;->CodeSpans:Lcom/oplus/utrace/lib/SpanType;

    new-instance v0, Lcom/oplus/utrace/lib/SpanType;

    const-string v1, "IntentTrace"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/oplus/utrace/lib/SpanType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/utrace/lib/SpanType;->IntentTrace:Lcom/oplus/utrace/lib/SpanType;

    invoke-static {}, Lcom/oplus/utrace/lib/SpanType;->$values()[Lcom/oplus/utrace/lib/SpanType;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/lib/SpanType;->$VALUES:[Lcom/oplus/utrace/lib/SpanType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/oplus/utrace/lib/SpanType;->value:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/utrace/lib/SpanType;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/utrace/lib/SpanType;
    .registers 2

    const-class v0, Lcom/oplus/utrace/lib/SpanType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/utrace/lib/SpanType;

    return-object p0
.end method

.method public static values()[Lcom/oplus/utrace/lib/SpanType;
    .registers 1

    sget-object v0, Lcom/oplus/utrace/lib/SpanType;->$VALUES:[Lcom/oplus/utrace/lib/SpanType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/utrace/lib/SpanType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .registers 1

    iget p0, p0, Lcom/oplus/utrace/lib/SpanType;->value:I

    return p0
.end method
