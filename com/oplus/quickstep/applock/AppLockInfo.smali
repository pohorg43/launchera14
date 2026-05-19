.class public final Lcom/oplus/quickstep/applock/AppLockInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/applock/AppLockInfo$WhenMappings;,
        Lcom/oplus/quickstep/applock/AppLockInfo$Companion;
    }
.end annotation


# static fields
.field private static final ALLOW_DEFAULT_LOCK:I = 0x2

.field private static final ALLOW_SUPER_LOCK:I = 0x4

.field public static final Companion:Lcom/oplus/quickstep/applock/AppLockInfo$Companion;

.field private static final EXPERIENCE_UPGRADE_LOCK:I = 0x10

.field private static final FORBID_LOCK:I = 0x1

.field private static final LOCK_BECAUSE_BACKUP_RESTORE_SCENES:I = 0x8

.field private static final LOCK_BECAUSE_USER_OPERATE_SCENES:I = 0x2

.field private static final UNLOCK_BECAUSE_FORBID_SCENES:I = 0x20

.field private static final UNLOCK_BECAUSE_FORCE_SCENES:I = 0x10

.field private static final UNLOCK_BECAUSE_USER_OPERATE_SCENES:I = 0x4

.field private static final UNSPECIFIED_SCENES:I = 0x1

.field private static final VIRTUAL_LOCK:I = 0x8

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private features:I

.field private final packageNameUserId:Ljava/lang/String;

.field private scenes:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/applock/AppLockInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/applock/AppLockInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/applock/AppLockInfo;->Companion:Lcom/oplus/quickstep/applock/AppLockInfo$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "packageNameUserId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->packageNameUserId:Ljava/lang/String;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/applock/AppLockInfo;->setFlag(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->scenes:I

    return-void
.end method

.method private final checkFlag(II)Z
    .registers 3

    and-int p0, p1, p2

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private final clearFlag(II)I
    .registers 3

    not-int p0, p2

    and-int/2addr p0, p1

    return p0
.end method

.method public static synthetic copy$default(Lcom/oplus/quickstep/applock/AppLockInfo;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/quickstep/applock/AppLockInfo;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->packageNameUserId:Ljava/lang/String;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/applock/AppLockInfo;->copy(Ljava/lang/String;)Lcom/oplus/quickstep/applock/AppLockInfo;

    move-result-object p0

    return-object p0
.end method

.method private final setFlag(II)I
    .registers 3

    or-int p0, p1, p2

    return p0
.end method

.method private final setIsExistsFeature(ZI)V
    .registers 4

    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    invoke-direct {p0, v0, p2}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result v0

    if-ne p1, v0, :cond_9

    return-void

    :cond_9
    if-eqz p1, :cond_12

    iget p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/applock/AppLockInfo;->setFlag(II)I

    move-result p1

    goto :goto_18

    :cond_12
    iget p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/applock/AppLockInfo;->clearFlag(II)I

    move-result p1

    :goto_18
    iput p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->packageNameUserId:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;)Lcom/oplus/quickstep/applock/AppLockInfo;
    .registers 2

    const-string p0, "packageNameUserId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/quickstep/applock/AppLockInfo;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/applock/AppLockInfo;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final deepCopy(Ljava/lang/String;)Lcom/oplus/quickstep/applock/AppLockInfo;
    .registers 3

    const-string v0, "packageNameUserId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/applock/AppLockInfo;->copy(Ljava/lang/String;)Lcom/oplus/quickstep/applock/AppLockInfo;

    move-result-object p1

    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    iput v0, p1, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    iget p0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->scenes:I

    iput p0, p1, Lcom/oplus/quickstep/applock/AppLockInfo;->scenes:I

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/quickstep/applock/AppLockInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/quickstep/applock/AppLockInfo;

    iget-object p0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->packageNameUserId:Ljava/lang/String;

    iget-object p1, p1, Lcom/oplus/quickstep/applock/AppLockInfo;->packageNameUserId:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getOperateScenes()Lcom/oplus/quickstep/applock/OperateScenes;
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->scenes:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object p0, Lcom/oplus/quickstep/applock/OperateScenes;->LOCK_BECAUSE_USER_OPERATE:Lcom/oplus/quickstep/applock/OperateScenes;

    goto :goto_4d

    :cond_c
    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->scenes:I

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object p0, Lcom/oplus/quickstep/applock/OperateScenes;->UNLOCK_BECAUSE_USER_OPERATE:Lcom/oplus/quickstep/applock/OperateScenes;

    goto :goto_4d

    :cond_18
    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->scenes:I

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object p0, Lcom/oplus/quickstep/applock/OperateScenes;->LOCK_BECAUSE_BACKUP_RESTORE:Lcom/oplus/quickstep/applock/OperateScenes;

    goto :goto_4d

    :cond_25
    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->scenes:I

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object p0, Lcom/oplus/quickstep/applock/OperateScenes;->UNLOCK_BECAUSE_FORCE:Lcom/oplus/quickstep/applock/OperateScenes;

    goto :goto_4d

    :cond_32
    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->scenes:I

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result v0

    if-eqz v0, :cond_3f

    sget-object p0, Lcom/oplus/quickstep/applock/OperateScenes;->UNLOCK_BECAUSE_FORBID:Lcom/oplus/quickstep/applock/OperateScenes;

    goto :goto_4d

    :cond_3f
    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->scenes:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result p0

    if-eqz p0, :cond_4b

    sget-object p0, Lcom/oplus/quickstep/applock/OperateScenes;->UNSPECIFIED:Lcom/oplus/quickstep/applock/OperateScenes;

    goto :goto_4d

    :cond_4b
    sget-object p0, Lcom/oplus/quickstep/applock/OperateScenes;->UNSPECIFIED:Lcom/oplus/quickstep/applock/OperateScenes;

    :goto_4d
    return-object p0
.end method

.method public final getPackageNameUserId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->packageNameUserId:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->packageNameUserId:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isAllowDefaultLock()Z
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result p0

    return p0
.end method

.method public final isAllowSuperLock()Z
    .registers 3

    sget-boolean v0, Lcom/oplus/quickstep/applock/OplusLockManager;->IS_SUPPORT_SUPER_LOCK:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public final isExperienceUpgradeLock()Z
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result p0

    return p0
.end method

.method public final isForbidLock()Z
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result p0

    return p0
.end method

.method public final isLock()Z
    .registers 6

    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->scenes:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_44

    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->scenes:I

    const/16 v4, 0x8

    invoke-direct {p0, v0, v4}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_44

    :cond_16
    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->scenes:I

    const/4 v4, 0x4

    invoke-direct {p0, v0, v4}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result v0

    if-nez v0, :cond_45

    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->scenes:I

    const/16 v4, 0x10

    invoke-direct {p0, v0, v4}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result v0

    if-nez v0, :cond_45

    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->scenes:I

    const/16 v4, 0x20

    invoke-direct {p0, v0, v4}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_45

    :cond_34
    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->scenes:I

    invoke-direct {p0, v0, v3}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result v0

    if-eqz v0, :cond_45

    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result p0

    if-eqz p0, :cond_45

    :cond_44
    :goto_44
    move v2, v3

    :cond_45
    :goto_45
    return v2
.end method

.method public final isUseless()Z
    .registers 4

    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->scenes:I

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_b
    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    if-eqz v0, :cond_33

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result v0

    if-nez v0, :cond_32

    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result v0

    if-nez v0, :cond_32

    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result v0

    if-nez v0, :cond_32

    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    const/16 v2, 0x10

    invoke-direct {p0, v0, v2}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result p0

    if-nez p0, :cond_32

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :cond_33
    :goto_33
    return v1
.end method

.method public final isVirtualLock()Z
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result p0

    return p0
.end method

.method public final setIsAllowDefaultLock(Z)V
    .registers 4

    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result v0

    if-ne p1, v0, :cond_a

    return-void

    :cond_a
    if-eqz p1, :cond_13

    iget p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    invoke-direct {p0, p1, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->setFlag(II)I

    move-result p1

    goto :goto_19

    :cond_13
    iget p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    invoke-direct {p0, p1, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->clearFlag(II)I

    move-result p1

    :goto_19
    iput p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result p1

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockInfo;->isLock()Z

    move-result p1

    if-nez p1, :cond_31

    iget p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/applock/AppLockInfo;->clearFlag(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    :cond_31
    return-void
.end method

.method public final setIsAllowSuperLock(Z)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/applock/AppLockInfo;->setIsExistsFeature(ZI)V

    return-void
.end method

.method public final setIsExperienceUpgradeLock(Z)V
    .registers 4

    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result v0

    if-ne p1, v0, :cond_b

    return-void

    :cond_b
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockInfo;->isLock()Z

    move-result p1

    if-eqz p1, :cond_1a

    iget p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    invoke-direct {p0, p1, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->setFlag(II)I

    move-result p1

    goto :goto_23

    :cond_1a
    iget p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    goto :goto_23

    :cond_1d
    iget p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    invoke-direct {p0, p1, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->clearFlag(II)I

    move-result p1

    :goto_23
    iput p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    return-void
.end method

.method public final setIsForbidLock(Z)V
    .registers 5

    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result v0

    if-ne p1, v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x0

    const/16 v2, 0x10

    if-eqz p1, :cond_1e

    iget p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    invoke-direct {p0, p1, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->setFlag(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    invoke-direct {p0, v0, v2}, Lcom/oplus/quickstep/applock/AppLockInfo;->setFlag(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->scenes:I

    goto :goto_2c

    :cond_1e
    iget p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    invoke-direct {p0, p1, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->clearFlag(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->setFlag(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->scenes:I

    :goto_2c
    iget p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    invoke-direct {p0, p1, v2}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result p1

    if-eqz p1, :cond_42

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockInfo;->isLock()Z

    move-result p1

    if-nez p1, :cond_42

    iget p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    invoke-direct {p0, p1, v2}, Lcom/oplus/quickstep/applock/AppLockInfo;->clearFlag(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    :cond_42
    return-void
.end method

.method public final setIsVirtualLock(Z)V
    .registers 3

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/applock/AppLockInfo;->setIsExistsFeature(ZI)V

    return-void
.end method

.method public final setOperateScenes(Lcom/oplus/quickstep/applock/OperateScenes;)V
    .registers 5

    const-string v0, "operateScenes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object p1, Lcom/oplus/quickstep/applock/OperateScenes;->UNLOCK_BECAUSE_FORBID:Lcom/oplus/quickstep/applock/OperateScenes;

    :cond_10
    const/4 v0, 0x0

    sget-object v2, Lcom/oplus/quickstep/applock/AppLockInfo$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/16 v2, 0x10

    packed-switch p1, :pswitch_data_4c

    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :pswitch_24  #0x6
    const/16 v1, 0x20

    goto :goto_2f

    :pswitch_27  #0x5
    move v1, v2

    goto :goto_2f

    :pswitch_29  #0x4
    const/16 v1, 0x8

    goto :goto_2f

    :pswitch_2c  #0x3
    const/4 v1, 0x4

    goto :goto_2f

    :pswitch_2e  #0x2
    const/4 v1, 0x2

    :goto_2f
    :pswitch_2f  #0x1
    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->setFlag(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->scenes:I

    iget p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    invoke-direct {p0, p1, v2}, Lcom/oplus/quickstep/applock/AppLockInfo;->checkFlag(II)Z

    move-result p1

    if-eqz p1, :cond_4b

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockInfo;->isLock()Z

    move-result p1

    if-nez p1, :cond_4b

    iget p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    invoke-direct {p0, p1, v2}, Lcom/oplus/quickstep/applock/AppLockInfo;->clearFlag(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    :cond_4b
    return-void

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_2f  #00000001
        :pswitch_2e  #00000002
        :pswitch_2c  #00000003
        :pswitch_29  #00000004
        :pswitch_27  #00000005
        :pswitch_24  #00000006
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->packageNameUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->features:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/quickstep/applock/AppLockInfo;->scenes:I

    const/16 v1, 0x5d

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
