.class public final enum Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utrace/lib/UTraceRecordV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

.field public static final enum END:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

.field public static final enum ERROR:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

.field public static final enum NONE:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

.field public static final enum SPAN_TAG:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

.field public static final enum START:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

.field public static final enum TRACE_FLAG:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

.field public static final enum TRACE_TAG:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;


# instance fields
.field private value:I


# direct methods
.method private static final synthetic $values()[Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    sget-object v1, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->NONE:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->START:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->END:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->ERROR:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->SPAN_TAG:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->TRACE_TAG:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->TRACE_FLAG:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->NONE:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    new-instance v0, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    const-string v1, "START"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->START:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    new-instance v0, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    const-string v1, "END"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->END:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    new-instance v0, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    const-string v1, "ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->ERROR:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    new-instance v0, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    const-string v1, "SPAN_TAG"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->SPAN_TAG:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    new-instance v0, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    const-string v1, "TRACE_TAG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->TRACE_TAG:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    new-instance v0, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    const-string v1, "TRACE_FLAG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->TRACE_FLAG:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    invoke-static {}, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->$values()[Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->$VALUES:[Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

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

    iput p3, p0, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;
    .registers 2

    const-class v0, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    return-object p0
.end method

.method public static values()[Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;
    .registers 1

    sget-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->$VALUES:[Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .registers 1

    iget p0, p0, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->value:I

    return p0
.end method

.method public final setValue(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->value:I

    return-void
.end method
