.class public final Lcom/android/launcher3/bottomsearch/IconWidgetSettings;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/bottomsearch/IconWidgetSettings$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/BaseDraggingActivity;",
        ">",
        "Lcom/android/launcher3/popup/SystemShortcut<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/bottomsearch/IconWidgetSettings$Companion;

.field public static final ICON:I = 0x7f0806be

.field public static final SHORT_TITLE:I = 0x7f120144

.field private static final TAG:Ljava/lang/String; = "IconWidgetSettings"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/bottomsearch/IconWidgetSettings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/bottomsearch/IconWidgetSettings$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/bottomsearch/IconWidgetSettings;->Companion:Lcom/android/launcher3/bottomsearch/IconWidgetSettings$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
    .registers 11

    const-string/jumbo v0, "null cannot be cast to non-null type T of com.android.launcher3.bottomsearch.IconWidgetSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0806be

    const v3, 0x7f120144

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    :cond_8
    check-cast v0, Lcom/android/launcher3/BaseDraggingActivity;

    check-cast v0, Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_15

    return v2

    :cond_15
    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->isDisabledDeepshortcut(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_28

    return v2

    :cond_28
    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_52

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    if-nez v0, :cond_52

    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    iget-object v1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->isBottomSearchWidget(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_52

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/statistics/LauncherStatistics;->statsWidgetLongClick(Z)V

    move v2, v0

    :cond_52
    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object p1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    invoke-static {p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->closeOpenContainer(Lcom/android/launcher/Launcher;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mOriginalView:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->setLongClickViewVisible(Lcom/android/launcher/Launcher;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mOriginalView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v1, :cond_63

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.card.IAreaWidget"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/card/IAreaWidget;

    invoke-interface {v0}, Lcom/android/launcher3/card/IAreaWidget;->getAreaType()Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->WIDGET:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    if-ne v0, v1, :cond_63

    const/4 v0, 0x0

    :try_start_34
    iget-object v1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/BaseDraggingActivity;

    sget-object v2, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v2, v0, p1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getBrowserSettingIntent(ZLandroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_43
    .catchall {:try_start_34 .. :try_end_43} :catchall_44

    goto :goto_49

    :catchall_44
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_49
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_63

    iget-object p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    const p1, 0x7f1200b5

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string p0, "IconWidgetSettings"

    const-string/jumbo p1, "startActivitySafely:Unable to launch. ActivityNotFoundException"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    return-void
.end method
