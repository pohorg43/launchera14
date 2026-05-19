.class final enum Lcom/oplus/quickstep/applock/Change;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/quickstep/applock/Change;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/quickstep/applock/Change;

.field public static final enum CONFIG_TO_CONFIG:Lcom/oplus/quickstep/applock/Change;

.field public static final enum CONFIG_TO_RUS:Lcom/oplus/quickstep/applock/Change;

.field public static final enum RUS_TO_CONFIG:Lcom/oplus/quickstep/applock/Change;

.field public static final enum RUS_TO_RUS:Lcom/oplus/quickstep/applock/Change;

.field public static final enum UNKNOWN_TO_CONFIG:Lcom/oplus/quickstep/applock/Change;

.field public static final enum UNKNOWN_TO_RUS:Lcom/oplus/quickstep/applock/Change;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/quickstep/applock/Change;
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oplus/quickstep/applock/Change;

    sget-object v1, Lcom/oplus/quickstep/applock/Change;->UNKNOWN_TO_RUS:Lcom/oplus/quickstep/applock/Change;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/applock/Change;->UNKNOWN_TO_CONFIG:Lcom/oplus/quickstep/applock/Change;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/applock/Change;->RUS_TO_RUS:Lcom/oplus/quickstep/applock/Change;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/applock/Change;->RUS_TO_CONFIG:Lcom/oplus/quickstep/applock/Change;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/applock/Change;->CONFIG_TO_RUS:Lcom/oplus/quickstep/applock/Change;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/applock/Change;->CONFIG_TO_CONFIG:Lcom/oplus/quickstep/applock/Change;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/quickstep/applock/Change;

    const-string v1, "UNKNOWN_TO_RUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/applock/Change;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/applock/Change;->UNKNOWN_TO_RUS:Lcom/oplus/quickstep/applock/Change;

    new-instance v0, Lcom/oplus/quickstep/applock/Change;

    const-string v1, "UNKNOWN_TO_CONFIG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/applock/Change;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/applock/Change;->UNKNOWN_TO_CONFIG:Lcom/oplus/quickstep/applock/Change;

    new-instance v0, Lcom/oplus/quickstep/applock/Change;

    const-string v1, "RUS_TO_RUS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/applock/Change;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/applock/Change;->RUS_TO_RUS:Lcom/oplus/quickstep/applock/Change;

    new-instance v0, Lcom/oplus/quickstep/applock/Change;

    const-string v1, "RUS_TO_CONFIG"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/applock/Change;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/applock/Change;->RUS_TO_CONFIG:Lcom/oplus/quickstep/applock/Change;

    new-instance v0, Lcom/oplus/quickstep/applock/Change;

    const-string v1, "CONFIG_TO_RUS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/applock/Change;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/applock/Change;->CONFIG_TO_RUS:Lcom/oplus/quickstep/applock/Change;

    new-instance v0, Lcom/oplus/quickstep/applock/Change;

    const-string v1, "CONFIG_TO_CONFIG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/applock/Change;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/applock/Change;->CONFIG_TO_CONFIG:Lcom/oplus/quickstep/applock/Change;

    invoke-static {}, Lcom/oplus/quickstep/applock/Change;->$values()[Lcom/oplus/quickstep/applock/Change;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/applock/Change;->$VALUES:[Lcom/oplus/quickstep/applock/Change;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/quickstep/applock/Change;
    .registers 2

    const-class v0, Lcom/oplus/quickstep/applock/Change;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/applock/Change;

    return-object p0
.end method

.method public static values()[Lcom/oplus/quickstep/applock/Change;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/applock/Change;->$VALUES:[Lcom/oplus/quickstep/applock/Change;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/quickstep/applock/Change;

    return-object v0
.end method
