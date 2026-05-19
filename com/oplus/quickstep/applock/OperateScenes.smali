.class public final enum Lcom/oplus/quickstep/applock/OperateScenes;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/quickstep/applock/OperateScenes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/quickstep/applock/OperateScenes;

.field public static final enum LOCK_BECAUSE_BACKUP_RESTORE:Lcom/oplus/quickstep/applock/OperateScenes;

.field public static final enum LOCK_BECAUSE_USER_OPERATE:Lcom/oplus/quickstep/applock/OperateScenes;

.field public static final enum UNLOCK_BECAUSE_FORBID:Lcom/oplus/quickstep/applock/OperateScenes;

.field public static final enum UNLOCK_BECAUSE_FORCE:Lcom/oplus/quickstep/applock/OperateScenes;

.field public static final enum UNLOCK_BECAUSE_USER_OPERATE:Lcom/oplus/quickstep/applock/OperateScenes;

.field public static final enum UNSPECIFIED:Lcom/oplus/quickstep/applock/OperateScenes;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/quickstep/applock/OperateScenes;
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oplus/quickstep/applock/OperateScenes;

    sget-object v1, Lcom/oplus/quickstep/applock/OperateScenes;->UNSPECIFIED:Lcom/oplus/quickstep/applock/OperateScenes;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/applock/OperateScenes;->LOCK_BECAUSE_USER_OPERATE:Lcom/oplus/quickstep/applock/OperateScenes;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/applock/OperateScenes;->UNLOCK_BECAUSE_USER_OPERATE:Lcom/oplus/quickstep/applock/OperateScenes;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/applock/OperateScenes;->LOCK_BECAUSE_BACKUP_RESTORE:Lcom/oplus/quickstep/applock/OperateScenes;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/applock/OperateScenes;->UNLOCK_BECAUSE_FORCE:Lcom/oplus/quickstep/applock/OperateScenes;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/applock/OperateScenes;->UNLOCK_BECAUSE_FORBID:Lcom/oplus/quickstep/applock/OperateScenes;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/quickstep/applock/OperateScenes;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/applock/OperateScenes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/applock/OperateScenes;->UNSPECIFIED:Lcom/oplus/quickstep/applock/OperateScenes;

    new-instance v0, Lcom/oplus/quickstep/applock/OperateScenes;

    const-string v1, "LOCK_BECAUSE_USER_OPERATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/applock/OperateScenes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/applock/OperateScenes;->LOCK_BECAUSE_USER_OPERATE:Lcom/oplus/quickstep/applock/OperateScenes;

    new-instance v0, Lcom/oplus/quickstep/applock/OperateScenes;

    const-string v1, "UNLOCK_BECAUSE_USER_OPERATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/applock/OperateScenes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/applock/OperateScenes;->UNLOCK_BECAUSE_USER_OPERATE:Lcom/oplus/quickstep/applock/OperateScenes;

    new-instance v0, Lcom/oplus/quickstep/applock/OperateScenes;

    const-string v1, "LOCK_BECAUSE_BACKUP_RESTORE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/applock/OperateScenes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/applock/OperateScenes;->LOCK_BECAUSE_BACKUP_RESTORE:Lcom/oplus/quickstep/applock/OperateScenes;

    new-instance v0, Lcom/oplus/quickstep/applock/OperateScenes;

    const-string v1, "UNLOCK_BECAUSE_FORCE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/applock/OperateScenes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/applock/OperateScenes;->UNLOCK_BECAUSE_FORCE:Lcom/oplus/quickstep/applock/OperateScenes;

    new-instance v0, Lcom/oplus/quickstep/applock/OperateScenes;

    const-string v1, "UNLOCK_BECAUSE_FORBID"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/applock/OperateScenes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/applock/OperateScenes;->UNLOCK_BECAUSE_FORBID:Lcom/oplus/quickstep/applock/OperateScenes;

    invoke-static {}, Lcom/oplus/quickstep/applock/OperateScenes;->$values()[Lcom/oplus/quickstep/applock/OperateScenes;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/applock/OperateScenes;->$VALUES:[Lcom/oplus/quickstep/applock/OperateScenes;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/quickstep/applock/OperateScenes;
    .registers 2

    const-class v0, Lcom/oplus/quickstep/applock/OperateScenes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/applock/OperateScenes;

    return-object p0
.end method

.method public static values()[Lcom/oplus/quickstep/applock/OperateScenes;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/applock/OperateScenes;->$VALUES:[Lcom/oplus/quickstep/applock/OperateScenes;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/quickstep/applock/OperateScenes;

    return-object v0
.end method
