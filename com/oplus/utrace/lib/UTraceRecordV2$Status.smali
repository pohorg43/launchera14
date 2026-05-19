.class public final enum Lcom/oplus/utrace/lib/UTraceRecordV2$Status;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utrace/lib/UTraceRecordV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/utrace/lib/UTraceRecordV2$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

.field public static final enum END_COMPLETE:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

.field public static final enum END_GO_AHEAD:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

.field public static final enum END_RETURN:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

.field public static final enum START:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;


# instance fields
.field private value:I


# direct methods
.method private static final synthetic $values()[Lcom/oplus/utrace/lib/UTraceRecordV2$Status;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    sget-object v1, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->START:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->END_GO_AHEAD:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->END_COMPLETE:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->END_RETURN:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->START:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    new-instance v0, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    const-string v1, "END_GO_AHEAD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->END_GO_AHEAD:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    new-instance v0, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    const-string v1, "END_COMPLETE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->END_COMPLETE:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    new-instance v0, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    const-string v1, "END_RETURN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->END_RETURN:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    invoke-static {}, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->$values()[Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->$VALUES:[Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

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

    iput p3, p0, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/utrace/lib/UTraceRecordV2$Status;
    .registers 2

    const-class v0, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    return-object p0
.end method

.method public static values()[Lcom/oplus/utrace/lib/UTraceRecordV2$Status;
    .registers 1

    sget-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->$VALUES:[Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .registers 1

    iget p0, p0, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->value:I

    return p0
.end method

.method public final setValue(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->value:I

    return-void
.end method
