.class public final Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/SystemWindowInsettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$Companion;

.field private static final TAG:Ljava/lang/String; = "BOTTOM.WIDGET - WIDGET_VIEW"


# instance fields
.field private searchBoxWidgetView:Landroid/appwidget/AppWidgetHostView;

.field private settingPopup:Landroid/widget/PopupWindow;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->Companion:Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$getMContext$p$s1008912023(Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getSettingPopup$p(Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;)Landroid/widget/PopupWindow;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->settingPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static final synthetic access$setSettingPopup$p(Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;Landroid/widget/PopupWindow;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->settingPopup:Landroid/widget/PopupWindow;

    return-void
.end method

.method private final showSettingPopup(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v1, "mContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;-><init>(Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/bottomsearch/CommonUtils;->showSettingPopup(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_18

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.Launcher"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p0, 0x0

    return p0

    :cond_18
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final inflateAndBindSearchBox()Landroid/appwidget/AppWidgetHostView;
    .registers 13

    const-string/jumbo v0, "providerInfo: "

    const-string/jumbo v1, "search_appwidget_id"

    const-string v2, "inflateAndBindSearchBox searchBoxWidgetView ："

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->searchBoxWidgetView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BOTTOM.WIDGET - WIDGET_VIEW"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->searchBoxWidgetView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    sget-boolean v2, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-nez v2, :cond_2d

    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.heytap.browser"

    const-string v5, "com.android.browser.widget.DefaultSearchWidgetProvider"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    :cond_2d
    invoke-static {}, Lcom/android/common/config/VersionInfo;->isRussianVersion()Z

    move-result v2

    if-eqz v2, :cond_3e

    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.android.chrome"

    const-string/jumbo v5, "org.chromium.chrome.browser.searchwidget.SearchWidgetProvider"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    :cond_3e
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.google.android.googlequicksearchbox"

    const-string v5, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "componentName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    const/4 v6, -0x1

    :try_start_6c
    iget-object v7, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v7, v1, v6}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_72} :catch_145

    const/4 v8, 0x1

    if-ne v7, v6, :cond_81

    :try_start_75
    invoke-virtual {v4}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v7

    invoke-virtual {v5, v7, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v9

    goto :goto_82

    :catch_7e
    move-exception v0

    goto/16 :goto_147

    :cond_81
    move v9, v8

    :goto_82
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "allowed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " , mAppWidgetId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_13c

    new-instance v9, Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget-object v10, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v7}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " ids = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->getAppWidgetIds()[I

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v9, :cond_11b

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->getAppWidgetIds()[I

    move-result-object v10

    const-string v11, "appWidgetHost.appWidgetIds"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v7}, Li4/k;->q([II)Z

    move-result v10

    if-nez v10, :cond_11b

    invoke-virtual {v4}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v7

    invoke-virtual {v5, v7, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_f9

    new-instance v5, Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget-object v9, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v5, v9}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v7}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v9

    goto :goto_101

    :cond_f9
    invoke-virtual {v4, v7}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    iget-object v5, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v5, v1, v6}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " id = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11b
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v4, v0, v7, v9}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->searchBoxWidgetView:Landroid/appwidget/AppWidgetHostView;

    instance-of v4, v0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    if-eqz v4, :cond_136

    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher3.widget.CustomLauncherAppWidgetHostView"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {v0, v8}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->setIsSearchBoxWidgetView(Z)V

    :cond_136
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v7}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_150

    :cond_13c
    invoke-virtual {v4, v7}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v6}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_144} :catch_7e

    goto :goto_150

    :catch_145
    move-exception v0

    move v7, v6

    :goto_147
    const-string v1, "fail to inflate and bind search box widget : "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/launcher/e0;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_150
    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->searchBoxWidgetView:Landroid/appwidget/AppWidgetHostView;

    if-nez v0, :cond_15d

    const-string/jumbo v0, "mSearchBoxWidgetView  can\'t be null"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->searchBoxWidgetView:Landroid/appwidget/AppWidgetHostView;

    return-object p0

    :cond_15d
    if-nez v0, :cond_160

    goto :goto_163

    :cond_160
    invoke-virtual {v0, p0}, Landroid/appwidget/AppWidgetHostView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_163
    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->searchBoxWidgetView:Landroid/appwidget/AppWidgetHostView;

    if-nez v0, :cond_168

    goto :goto_170

    :cond_168
    new-instance v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-direct {v1, v7, v2}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    :goto_170
    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->searchBoxWidgetView:Landroid/appwidget/AppWidgetHostView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v2, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v4, "mContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getBottomSearchHeight(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->searchBoxWidgetView:Landroid/appwidget/AppWidgetHostView;

    return-object p0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    const-string v0, "BOTTOM.WIDGET - WIDGET_VIEW"

    const-string/jumbo v1, "onLongClick"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/statistics/LauncherStatistics;->statsWidgetLongClick(Z)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->showSettingPopup(Landroid/view/View;)V

    return v1
.end method

.method public setWindowInsets(Landroid/graphics/Rect;)V
    .registers 4

    const-string/jumbo v0, "windowInsets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BOTTOM.WIDGET - WIDGET_VIEW"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v1, 0x0

    goto :goto_45

    :cond_37
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/OplusDeviceProfile;->mHotseatMarginBottomPx:I

    :goto_45
    add-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
