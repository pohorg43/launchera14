.class public final enum Lcom/oplus/quickstep/applock/LockUpgradeReason;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/quickstep/applock/LockUpgradeReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/quickstep/applock/LockUpgradeReason;

.field public static final enum DATA_RESTORE_UPGRADE:Lcom/oplus/quickstep/applock/LockUpgradeReason;

.field public static final enum OTA_UPGRADE:Lcom/oplus/quickstep/applock/LockUpgradeReason;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/quickstep/applock/LockUpgradeReason;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oplus/quickstep/applock/LockUpgradeReason;

    sget-object v1, Lcom/oplus/quickstep/applock/LockUpgradeReason;->OTA_UPGRADE:Lcom/oplus/quickstep/applock/LockUpgradeReason;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/applock/LockUpgradeReason;->DATA_RESTORE_UPGRADE:Lcom/oplus/quickstep/applock/LockUpgradeReason;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/quickstep/applock/LockUpgradeReason;

    const-string v1, "OTA_UPGRADE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/applock/LockUpgradeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/applock/LockUpgradeReason;->OTA_UPGRADE:Lcom/oplus/quickstep/applock/LockUpgradeReason;

    new-instance v0, Lcom/oplus/quickstep/applock/LockUpgradeReason;

    const-string v1, "DATA_RESTORE_UPGRADE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/applock/LockUpgradeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/applock/LockUpgradeReason;->DATA_RESTORE_UPGRADE:Lcom/oplus/quickstep/applock/LockUpgradeReason;

    invoke-static {}, Lcom/oplus/quickstep/applock/LockUpgradeReason;->$values()[Lcom/oplus/quickstep/applock/LockUpgradeReason;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/applock/LockUpgradeReason;->$VALUES:[Lcom/oplus/quickstep/applock/LockUpgradeReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/quickstep/applock/LockUpgradeReason;
    .registers 2

    const-class v0, Lcom/oplus/quickstep/applock/LockUpgradeReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/applock/LockUpgradeReason;

    return-object p0
.end method

.method public static values()[Lcom/oplus/quickstep/applock/LockUpgradeReason;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/applock/LockUpgradeReason;->$VALUES:[Lcom/oplus/quickstep/applock/LockUpgradeReason;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/quickstep/applock/LockUpgradeReason;

    return-object v0
.end method
