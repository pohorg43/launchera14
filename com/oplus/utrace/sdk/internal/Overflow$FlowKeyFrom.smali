.class final enum Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utrace/sdk/internal/Overflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlowKeyFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;

.field public static final enum ERROR_CODE:Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;

.field public static final enum ERROR_INFO:Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;

.field public static final enum SPAN_NAME:Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;

    sget-object v1, Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;->SPAN_NAME:Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;->ERROR_CODE:Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;->ERROR_INFO:Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;

    const-string v1, "SPAN_NAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;->SPAN_NAME:Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;

    new-instance v0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;

    const-string v1, "ERROR_CODE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;->ERROR_CODE:Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;

    new-instance v0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;

    const-string v1, "ERROR_INFO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;->ERROR_INFO:Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;

    invoke-static {}, Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;->$values()[Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;->$VALUES:[Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;
    .registers 2

    const-class v0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;

    return-object p0
.end method

.method public static values()[Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;
    .registers 1

    sget-object v0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;->$VALUES:[Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;

    return-object v0
.end method
