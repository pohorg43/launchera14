.class public final enum Lcom/oplus/quickstep/applock/Reason;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/quickstep/applock/Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/quickstep/applock/Reason;

.field public static final enum APP_SELF_CANNOT_LOCK:Lcom/oplus/quickstep/applock/Reason;

.field public static final enum LOCKED_COUNT_REACHED_LIMIT:Lcom/oplus/quickstep/applock/Reason;

.field public static final enum LOW_POWER_CANNOT_LOCK:Lcom/oplus/quickstep/applock/Reason;

.field public static final enum NA:Lcom/oplus/quickstep/applock/Reason;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/quickstep/applock/Reason;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oplus/quickstep/applock/Reason;

    sget-object v1, Lcom/oplus/quickstep/applock/Reason;->NA:Lcom/oplus/quickstep/applock/Reason;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/applock/Reason;->APP_SELF_CANNOT_LOCK:Lcom/oplus/quickstep/applock/Reason;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/applock/Reason;->LOW_POWER_CANNOT_LOCK:Lcom/oplus/quickstep/applock/Reason;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/applock/Reason;->LOCKED_COUNT_REACHED_LIMIT:Lcom/oplus/quickstep/applock/Reason;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/quickstep/applock/Reason;

    const-string v1, "NA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/applock/Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/applock/Reason;->NA:Lcom/oplus/quickstep/applock/Reason;

    new-instance v0, Lcom/oplus/quickstep/applock/Reason;

    const-string v1, "APP_SELF_CANNOT_LOCK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/applock/Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/applock/Reason;->APP_SELF_CANNOT_LOCK:Lcom/oplus/quickstep/applock/Reason;

    new-instance v0, Lcom/oplus/quickstep/applock/Reason;

    const-string v1, "LOW_POWER_CANNOT_LOCK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/applock/Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/applock/Reason;->LOW_POWER_CANNOT_LOCK:Lcom/oplus/quickstep/applock/Reason;

    new-instance v0, Lcom/oplus/quickstep/applock/Reason;

    const-string v1, "LOCKED_COUNT_REACHED_LIMIT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/applock/Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/applock/Reason;->LOCKED_COUNT_REACHED_LIMIT:Lcom/oplus/quickstep/applock/Reason;

    invoke-static {}, Lcom/oplus/quickstep/applock/Reason;->$values()[Lcom/oplus/quickstep/applock/Reason;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/applock/Reason;->$VALUES:[Lcom/oplus/quickstep/applock/Reason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/quickstep/applock/Reason;
    .registers 2

    const-class v0, Lcom/oplus/quickstep/applock/Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/applock/Reason;

    return-object p0
.end method

.method public static values()[Lcom/oplus/quickstep/applock/Reason;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/applock/Reason;->$VALUES:[Lcom/oplus/quickstep/applock/Reason;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/quickstep/applock/Reason;

    return-object v0
.end method
