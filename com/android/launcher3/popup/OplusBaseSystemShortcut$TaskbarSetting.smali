.class public Lcom/android/launcher3/popup/OplusBaseSystemShortcut$TaskbarSetting;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/popup/OplusBaseSystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskbarSetting"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
    .registers 10

    const v1, 0x7f080911

    const v2, 0x7f12060e

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 3

    const-string v0, "SystemShortcut"

    const-string v1, "TaskbarSetting isEnabled"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v0, -0x65

    if-ne p0, v0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    const-string p0, "SystemShortcut"

    const-string p1, "TaskbarSetting onClick"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->startTaskbarSetting()V

    return-void
.end method
