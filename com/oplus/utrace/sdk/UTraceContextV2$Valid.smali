.class public final enum Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utrace/sdk/UTraceContextV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Valid"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

.field public static final enum INVALID:Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

.field public static final enum VALID:Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;


# instance fields
.field private value:I


# direct methods
.method private static final synthetic $values()[Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

    sget-object v1, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->VALID:Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->INVALID:Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

    const-string v1, "VALID"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->VALID:Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

    new-instance v0, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3, v2}, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->INVALID:Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->$values()[Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->$VALUES:[Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

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

    iput p3, p0, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;
    .registers 2

    const-class v0, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

    return-object p0
.end method

.method public static values()[Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;
    .registers 1

    sget-object v0, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->$VALUES:[Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .registers 1

    iget p0, p0, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->value:I

    return p0
.end method

.method public final setValue(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->value:I

    return-void
.end method
