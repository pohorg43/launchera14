.class public final Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;

    invoke-direct {v0}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;-><init>()V

    sput-object v0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->INSTANCE:Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;

    const-string v0, "BR-Launcher_OplusRestoreGridCompat"

    sput-object v0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDrawerAndStandardGridForCompatRestore(II)[I
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0, p1}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->getExpandGridForCompatOS12AndRestore(II)[I

    move-result-object p0

    const/4 p1, 0x0

    aget v0, p0, p1

    const/4 v1, 0x1

    aget v2, p0, v1

    invoke-static {v0, v2}, Lcom/android/launcher/UiConfig;->isSupportLayout(II)Z

    move-result v0

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher/UiConfig;->getCurDrawerAndStandardLayoutSettings(Landroid/content/Context;)[I

    move-result-object v2

    if-eqz v0, :cond_1b

    aget v3, p0, p1

    goto :goto_1d

    :cond_1b
    aget v3, v2, p1

    :goto_1d
    if-eqz v0, :cond_22

    aget p0, p0, v1

    goto :goto_24

    :cond_22
    aget p0, v2, v1

    :goto_24
    sget-object v0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->TAG:Ljava/lang/String;

    const-string v2, "getDrawerAndStandardGridForCompatRestore "

    const-string v4, ", "

    invoke-static {v2, v3, v4, p0, v0}, Lcom/android/common/config/j;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v3, v0, p1

    aput p0, v0, v1

    return-object v0
.end method

.method public static final getExpandGridForCompatOS12AndRestore(II)[I
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->getDrawerAndStandardGridForCompatOS12(II)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Lcom/android/launcher/UiConfig;->isSupportLayout(II)Z

    move-result v1

    if-nez v1, :cond_1b

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Lcom/android/launcher/UiConfig;->getExpandedXYForRestore(II)Landroid/graphics/Point;

    move-result-object v0

    const-string v2, "getExpandedXYForRestore(…Grid.x, compatOS12Grid.y)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1b
    sget-object v2, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->TAG:Ljava/lang/String;

    const-string v3, "getExpandGridForCompatOS12AndRestore from "

    const-string v4, ", "

    const-string v5, " to "

    invoke-static {v3, p0, v4, p1, v5}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; isSupportLayout: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x2

    new-array p0, p0, [I

    const/4 p1, 0x0

    iget v1, v0, Landroid/graphics/Point;->x:I

    aput v1, p0, p1

    const/4 p1, 0x1

    iget v0, v0, Landroid/graphics/Point;->y:I

    aput v0, p0, p1

    return-object p0
.end method

.method private static final isNeedUpdateWidgetOrCardSpan(IIIIII)Lh4/j;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII)",
            "Lh4/j<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    if-eq p0, p2, :cond_c

    if-le p0, p4, :cond_14

    :cond_c
    invoke-static {p2, p4}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->isOriginalCellNotEqualsTarget(II)Z

    move-result p0

    if-eqz p0, :cond_14

    move p0, v2

    goto :goto_15

    :cond_14
    move p0, v1

    :goto_15
    if-eq p1, p3, :cond_19

    if-le p1, p5, :cond_20

    :cond_19
    invoke-static {p3, p5}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->isOriginalCellNotEqualsTarget(II)Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_21

    :cond_20
    move v2, v1

    :goto_21
    move v1, p0

    goto :goto_30

    :cond_23
    if-ne p0, p2, :cond_2f

    invoke-static {p2, p4}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->isOriginalCellNotEqualsTarget(II)Z

    move-result p0

    if-eqz p0, :cond_2f

    move v3, v2

    move v2, v1

    move v1, v3

    goto :goto_30

    :cond_2f
    move v2, v1

    :goto_30
    new-instance p0, Lh4/j;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final isOriginalCellNotEqualsTarget(II)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eq p0, p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method private static final updateWidgetOrCardSpanAndMinSpanInfo(Lcom/android/launcher3/model/data/ItemInfo;IIIIZ)Z
    .registers 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->isNeedUpdateWidgetOrCardSpan(IIIIII)Lh4/j;

    move-result-object p1

    iget-object p2, p1, Lh4/j;->a:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1c

    iput p3, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-eqz p5, :cond_1c

    iput p3, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    :cond_1c
    iget-object p2, p1, Lh4/j;->b:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2c

    iput p4, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-eqz p5, :cond_2c

    iput p4, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    :cond_2c
    iget p2, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-le p2, p3, :cond_31

    move p2, p3

    :cond_31
    iput p2, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget p2, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-le p2, p4, :cond_38

    move p2, p4

    :cond_38
    iput p2, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-eqz p5, :cond_4c

    iget p2, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    if-le p2, p3, :cond_41

    goto :goto_42

    :cond_41
    move p3, p2

    :goto_42
    iput p3, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget p2, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    if-le p2, p4, :cond_49

    goto :goto_4a

    :cond_49
    move p4, p2

    :goto_4a
    iput p4, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    :cond_4c
    iget-object p0, p1, Lh4/j;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_63

    iget-object p0, p1, Lh4/j;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_61

    goto :goto_63

    :cond_61
    const/4 p0, 0x0

    goto :goto_64

    :cond_63
    :goto_63
    const/4 p0, 0x1

    :goto_64
    return p0
.end method

.method public static synthetic updateWidgetOrCardSpanAndMinSpanInfo$default(Lcom/android/launcher3/model/data/ItemInfo;IIIIZILjava/lang/Object;)Z
    .registers 14

    and-int/lit8 p6, p6, 0x20

    if-eqz p6, :cond_5

    const/4 p5, 0x1

    :cond_5
    move v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->updateWidgetOrCardSpanAndMinSpanInfo(Lcom/android/launcher3/model/data/ItemInfo;IIIIZ)Z

    move-result p0

    return p0
.end method

.method public static final updateWidgetOrCardSpanForRestore(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;II)Z
    .registers 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "widgetOrCardInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v1

    invoke-static {p1, p2}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->getDrawerAndStandardGridForCompatRestore(II)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    aget v6, v2, v5

    invoke-static {p0, p1, p2, v4, v6}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->updateWidgetOrCardSpanInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;IIII)Z

    move-result v4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_65

    sget-object v6, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "updateWidgetOrCardSpanForRestore "

    const-string v8, ", finalOriginalSpan:"

    invoke-static {v7, v4, v8}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", originalSpan:"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ";  targetCell:"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, v2, v3

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, v2, v5

    const-string v0, ", originalCell:"

    invoke-static {v7, p0, v0, p1, v8}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v7, p2, v6}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_65
    return v4
.end method

.method public static final updateWidgetOrCardSpanForRestore(Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;IIII)Z
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "widgetOrCardInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMSpanX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMSpanY()I

    move-result v1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->updateWidgetOrCardSpanInfo(Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;IIII)Z

    move-result v2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_67

    sget-object v3, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateWidgetOrCardSpanForRestore "

    const-string v5, ", finalOriginalSpan:"

    invoke-static {v4, v2, v5}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMSpanX()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMSpanY()I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", originalSpan:"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ";  targetCell:"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", originalCell:"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    return v2
.end method

.method private static final updateWidgetOrCardSpanInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;IIII)Z
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->isNeedUpdateWidgetOrCardSpan(IIIIII)Lh4/j;

    move-result-object p1

    iget-object p2, p1, Lh4/j;->a:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1d

    invoke-virtual {p0, p3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanX(I)V

    :cond_1d
    iget-object p2, p1, Lh4/j;->b:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2a

    invoke-virtual {p0, p4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanY(I)V

    :cond_2a
    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result p2

    if-le p2, p3, :cond_31

    goto :goto_32

    :cond_31
    move p3, p2

    :goto_32
    invoke-virtual {p0, p3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanX(I)V

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result p2

    if-le p2, p4, :cond_3c

    goto :goto_3d

    :cond_3c
    move p4, p2

    :goto_3d
    invoke-virtual {p0, p4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanY(I)V

    iget-object p0, p1, Lh4/j;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_57

    iget-object p0, p1, Lh4/j;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_55

    goto :goto_57

    :cond_55
    const/4 p0, 0x0

    goto :goto_58

    :cond_57
    :goto_57
    const/4 p0, 0x1

    :goto_58
    return p0
.end method

.method private static final updateWidgetOrCardSpanInfo(Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;IIII)Z
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMSpanX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMSpanY()I

    move-result v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->isNeedUpdateWidgetOrCardSpan(IIIIII)Lh4/j;

    move-result-object p1

    iget-object p2, p1, Lh4/j;->a:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1d

    invoke-virtual {p0, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMSpanX(I)V

    :cond_1d
    iget-object p2, p1, Lh4/j;->b:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2a

    invoke-virtual {p0, p4}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMSpanY(I)V

    :cond_2a
    invoke-virtual {p0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMSpanX()I

    move-result p2

    if-le p2, p3, :cond_31

    goto :goto_32

    :cond_31
    move p3, p2

    :goto_32
    invoke-virtual {p0, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMSpanX(I)V

    invoke-virtual {p0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMSpanY()I

    move-result p2

    if-le p2, p4, :cond_3c

    goto :goto_3d

    :cond_3c
    move p4, p2

    :goto_3d
    invoke-virtual {p0, p4}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMSpanY(I)V

    iget-object p0, p1, Lh4/j;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_57

    iget-object p0, p1, Lh4/j;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_55

    goto :goto_57

    :cond_55
    const/4 p0, 0x0

    goto :goto_58

    :cond_57
    :goto_57
    const/4 p0, 0x1

    :goto_58
    return p0
.end method

.method public static final updateWidgetSpanAndMinSpanForOta(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;IIII)Z
    .registers 18
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object v8, p0

    const-string/jumbo v0, "widgetInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v9, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v10, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v11, v8, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v12, v8, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    const/4 v5, 0x0

    const/16 v6, 0x20

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static/range {v0 .. v7}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->updateWidgetOrCardSpanAndMinSpanInfo$default(Lcom/android/launcher3/model/data/ItemInfo;IIIIZILjava/lang/Object;)Z

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_6a

    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateWidgetSpanAndMinSpanForOta "

    const-string v3, ", finalOriginalSpan:"

    invoke-static {v2, v0, v3}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const-string v5, ", originalSpan:"

    invoke-static {v2, v4, v5, v9, v3}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", finalOriginalMinSpan: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    const-string v5, ", originalMinSpan:"

    invoke-static {v2, v4, v5, v11, v3}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v4, ";  targetCell:"

    move/from16 v5, p3

    invoke-static {v2, v12, v4, v5, v3}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v4, ", originalCell:"

    move v5, p1

    move/from16 v6, p4

    invoke-static {v2, v6, v4, p1, v3}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    move v3, p2

    invoke-static {v2, p2, v1}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_6a
    return v0
.end method
