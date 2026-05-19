.class public final Lcom/android/launcher3/allapps/branch/IBranchCommon$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/branch/IBranchCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static addToLauncherModeCategory(Lcom/android/launcher3/allapps/branch/IBranchCommon;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V
    .registers 5

    const-string/jumbo p0, "personalizeSearchSwitch"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "inputMethodSwitch"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "addSearchNotificationSwitch"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "launcherModeCategory"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static featureSupport(Lcom/android/launcher3/allapps/branch/IBranchCommon;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static getPersonalizeSearchSetting(Lcom/android/launcher3/allapps/branch/IBranchCommon;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static getSearchCount(Lcom/android/launcher3/allapps/branch/IBranchCommon;Landroid/content/Context;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public static getSuggestLinkCount(Lcom/android/launcher3/allapps/branch/IBranchCommon;Landroid/content/Context;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public static gotoDrawerSetting(Lcom/android/launcher3/allapps/branch/IBranchCommon;Lcom/android/launcher3/BaseDraggingActivity;)V
    .registers 2

    const-string p0, "launcher"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static initPersonalizeSearchSwitchAndInputMethodSwitch(Lcom/android/launcher3/allapps/branch/IBranchCommon;Landroid/content/Context;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUIPreferenceCategory;Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .registers 7

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "personalizeSearchSwitch"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "inputMethodSwitch"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "addSearchNotificationSwitch"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "launcherModeCategory"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "listener"

    invoke-static {p6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static initPolicySpanForPersonalizeSearchSwitch(Lcom/android/launcher3/allapps/branch/IBranchCommon;Landroid/content/Context;Lcom/coui/appcompat/preference/COUISwitchPreference;)V
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "personalizeSearchSwitch"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static isDrawModeActivity(Lcom/android/launcher3/allapps/branch/IBranchCommon;Ljava/lang/String;)Z
    .registers 2

    const-string p0, "currentName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static isInBranchHintArea(Lcom/android/launcher3/allapps/branch/IBranchCommon;Landroid/view/MotionEvent;Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/BaseDraggingActivity;)Z
    .registers 4

    const-string p0, "ev"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "launcher"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static launcherSupport(Lcom/android/launcher3/allapps/branch/IBranchCommon;Landroid/content/Context;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public static placeAllPAIAppsInWorkspace(Lcom/android/launcher3/allapps/branch/IBranchCommon;Lcom/android/launcher/Launcher;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/branch/IBranchCommon;",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string p0, "launcher"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "apps"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static protectExpired(Lcom/android/launcher3/allapps/branch/IBranchCommon;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static removeFromLauncherModeCategory(Lcom/android/launcher3/allapps/branch/IBranchCommon;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V
    .registers 5

    const-string/jumbo p0, "personalizeSearchSwitch"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "inputMethodSwitch"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "addSearchNotificationSwitch"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "launcherModeCategory"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static rusSearchNotificationEnable(Lcom/android/launcher3/allapps/branch/IBranchCommon;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static rusSupportBranch(Lcom/android/launcher3/allapps/branch/IBranchCommon;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static rusSupportBubble(Lcom/android/launcher3/allapps/branch/IBranchCommon;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static setSearchCount(Lcom/android/launcher3/allapps/branch/IBranchCommon;Landroid/content/Context;Z)V
    .registers 3

    return-void
.end method

.method public static setSuggestLinkCount(Lcom/android/launcher3/allapps/branch/IBranchCommon;Landroid/content/Context;Z)V
    .registers 3

    return-void
.end method

.method public static syncDrawModeSettingSwitchStatus(Lcom/android/launcher3/allapps/branch/IBranchCommon;Landroid/content/Context;)V
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static unregisterReceiverSafely(Lcom/android/launcher3/allapps/branch/IBranchCommon;Landroid/content/Context;)V
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
