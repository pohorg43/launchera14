.class public Lcom/android/wm/shell/common/split/SplitScreenUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageName(ILcom/android/wm/shell/ShellTaskOrganizer;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_d

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public static getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_12

    :cond_9
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_12

    :cond_9
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUserId(ILcom/android/wm/shell/ShellTaskOrganizer;)I
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_9

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    goto :goto_a

    :cond_9
    const/4 p0, -0x1

    :goto_a
    return p0
.end method

.method public static isValidToSplit(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 3

    if-eqz p0, :cond_20

    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_ACTIVITY_TYPES:[I

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_WINDOWING_MODES:[I

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method public static reverseSplitPosition(I)I
    .registers 2
    .param p0  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param
    .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_9

    if-eq p0, v0, :cond_7

    const/4 p0, -0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_9
    return v0
.end method

.method public static samePackage(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 4

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    if-ne p2, p3, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method
