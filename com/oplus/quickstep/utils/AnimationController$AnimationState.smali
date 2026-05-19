.class public final enum Lcom/oplus/quickstep/utils/AnimationController$AnimationState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/utils/AnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/quickstep/utils/AnimationController$AnimationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

.field public static final enum CLOSE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

.field public static final enum MULTI_CLOSE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

.field public static final enum MULTI_OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

.field public static final enum MULTI_REVERSE_OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

.field public static final enum MULTI_WAITING:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

.field public static final enum NONE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

.field public static final enum OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

.field public static final enum REVERSE_OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

.field public static final enum UNKNOWN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

.field public static final enum WAITING:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/quickstep/utils/AnimationController$AnimationState;
    .registers 3

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    sget-object v1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->NONE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->REVERSE_OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->CLOSE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_REVERSE_OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_CLOSE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->WAITING:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_WAITING:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->UNKNOWN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->NONE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    new-instance v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    const-string v1, "OPEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    new-instance v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    const-string v1, "REVERSE_OPEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->REVERSE_OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    new-instance v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    const-string v1, "CLOSE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->CLOSE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    new-instance v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    const-string v1, "MULTI_OPEN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    new-instance v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    const-string v1, "MULTI_REVERSE_OPEN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_REVERSE_OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    new-instance v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    const-string v1, "MULTI_CLOSE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_CLOSE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    new-instance v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    const-string v1, "WAITING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->WAITING:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    new-instance v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    const-string v1, "MULTI_WAITING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_WAITING:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    new-instance v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->UNKNOWN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    invoke-static {}, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->$values()[Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->$VALUES:[Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/quickstep/utils/AnimationController$AnimationState;
    .registers 2

    const-class v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    return-object p0
.end method

.method public static values()[Lcom/oplus/quickstep/utils/AnimationController$AnimationState;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->$VALUES:[Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    return-object v0
.end method
