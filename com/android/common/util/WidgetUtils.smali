.class public final Lcom/android/common/util/WidgetUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CUSTOM_WIDGET_SCALE:Ljava/lang/String; = "com.szlanyou.quickcontrol.widget.QuickControlWidget"

.field private static final DEBUG_ENABLE:Z

.field public static final GSA_WIDGET_CLASS:Ljava/lang/String; = "com.google.android.googlequicksearchbox.SearchWidgetProvider"

.field public static final GSA_WIDGET_PKG:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field public static final INSTANCE:Lcom/android/common/util/WidgetUtils;

.field public static final SPEED_DIAL_WIDGET_CLASS:Ljava/lang/String; = "com.android.contacts.speeddialwidget.SpeedDialWidgetProvider"

.field public static final SPEED_DIAL_WIDGET_CLASS_NEW:Ljava/lang/String; = "com.android.contacts.speeddialwidget.SpeedDialWidget"

.field public static final SPEED_DIAL_WIDGET_TITLE_CLASS:Ljava/lang/String; = "com.android.contacts.speeddialwidget.SpeedDialWidgetProviderTitle"

.field public static final SPEED_DIAL_WIDGET_TITLE_CLASS_NEW:Ljava/lang/String; = "com.android.contacts.speeddialwidget.SpeedDialWidgetTitle"

.field private static final TAG:Ljava/lang/String; = "WidgetUtil"

.field private static final WORK_MATCHER:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPersonalMatcher:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final scaleWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/common/util/WidgetUtils;

    invoke-direct {v0}, Lcom/android/common/util/WidgetUtils;-><init>()V

    sput-object v0, Lcom/android/common/util/WidgetUtils;->INSTANCE:Lcom/android/common/util/WidgetUtils;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/util/WidgetUtils;->DEBUG_ENABLE:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/common/util/WidgetUtils;->scaleWhiteList:Ljava/util/List;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofUser(Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v1

    sget-object v2, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    invoke-static {v2}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofUser(Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Predicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v1

    sput-object v1, Lcom/android/common/util/WidgetUtils;->mPersonalMatcher:Ljava/util/function/Predicate;

    invoke-interface {v1}, Ljava/util/function/Predicate;->negate()Ljava/util/function/Predicate;

    move-result-object v1

    sput-object v1, Lcom/android/common/util/WidgetUtils;->WORK_MATCHER:Ljava/util/function/Predicate;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAppContext().resource…ale_widget_provider_name)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Li4/t;->r(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkMinResizeWidthHeightIsValid(Landroid/appwidget/AppWidgetProviderInfo;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "providerInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v0, :cond_64

    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    if-nez v0, :cond_64

    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    if-ne v0, v1, :cond_64

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string/jumbo v0, "provider:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resizeMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minResizeWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minResizeHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    const-string v2, "Widget"

    const-string v3, "WidgetUtil"

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_5c
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    :cond_64
    return-void
.end method

.method public static final enableResize(Landroid/view/View;)I
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    instance-of v1, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    const/4 v2, 0x3

    if-eqz v1, :cond_89

    instance-of v1, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v1, :cond_89

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v1, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v1, :cond_2a

    new-instance v1, Lcom/android/launcher3/widget/WidgetManagerHelper;

    check-cast p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    iget p0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, p0}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object p0

    iput-object p0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    :cond_2a
    iget-object p0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    const/4 v1, 0x0

    if-eqz p0, :cond_88

    const-string/jumbo v3, "tag.providerInfo"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/common/util/WidgetUtils;->checkMinResizeWidthHeightIsValid(Landroid/appwidget/AppWidgetProviderInfo;)V

    iget-object p0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v3, p0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    iget v4, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    const/4 v5, 0x1

    if-eqz v4, :cond_43

    move v4, v5

    goto :goto_44

    :cond_43
    move v4, v1

    :goto_44
    iget p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    if-eqz p0, :cond_4a

    move p0, v5

    goto :goto_4b

    :cond_4a
    move p0, v1

    :goto_4b
    const-string/jumbo v6, "resizeMode="

    const-string v7, " minResizeWidth="

    invoke-static {v6, v3, v7}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " minResizeHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    const-string v7, "Widget"

    const-string v8, "WidgetUtil"

    invoke-static {v6, v0, v7, v8}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-eq v3, v5, :cond_82

    if-eq v3, v0, :cond_7e

    if-eq v3, v2, :cond_73

    goto :goto_86

    :cond_73
    if-eqz v4, :cond_78

    if-eqz p0, :cond_78

    goto :goto_87

    :cond_78
    if-eqz v4, :cond_7b

    goto :goto_84

    :cond_7b
    if-eqz p0, :cond_86

    goto :goto_80

    :cond_7e
    if-eqz p0, :cond_86

    :goto_80
    move v2, v0

    goto :goto_87

    :cond_82
    if-eqz v4, :cond_86

    :goto_84
    move v2, v5

    goto :goto_87

    :cond_86
    :goto_86
    move v2, v1

    :goto_87
    return v2

    :cond_88
    return v1

    :cond_89
    return v2
.end method

.method public static final isNewWeatherWidget(Landroid/content/ComponentName;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    sget-object v1, Lcom/android/common/config/Constants$Packages;->OPLUS_WEATHER_WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Lk7/m;->l(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_1c

    :cond_11
    sget-object v1, Lcom/android/common/config/Constants$Packages;->NEW_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0, v3}, Lk7/m;->l(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p0

    return p0

    :cond_1c
    :goto_1c
    return v0
.end method

.method public static final isOPMarketWidget(Landroid/content/ComponentName;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "componentName.packageName"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const-string v2, "com.market.heydemo"

    invoke-static {p0, v2, v0, v1}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public static final isOPWeatherWidget(Landroid/content/ComponentName;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    sget-object v1, Lcom/android/common/config/Constants$Packages;->OPLUS_WEATHER_WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Lk7/m;->l(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_1c

    :cond_11
    sget-object v1, Lcom/android/common/config/Constants$Packages;->OPLUS_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0, v3}, Lk7/m;->l(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p0

    return p0

    :cond_1c
    :goto_1c
    return v0
.end method

.method public static final isOplusSelfWidget(Landroid/content/ComponentName;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "componentName.packageName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "com.coloros"

    const/4 v4, 0x2

    invoke-static {v1, v3, v0, v4}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "com.heytap"

    invoke-static {v1, v3, v0, v4}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.nearme"

    invoke-static {p0, v1, v0, v4}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p0

    if-eqz p0, :cond_35

    :cond_34
    const/4 v0, 0x1

    :cond_35
    return v0
.end method

.method public static final isOplusWeatherWidget(Landroid/content/ComponentName;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5a

    sget-object v1, Lcom/android/common/config/Constants$Packages;->OPLUS_WEATHER_WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Lk7/m;->l(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_5a

    :cond_11
    sget-object v1, Lcom/android/common/config/Constants$Packages;->NEW_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, v3}, Lk7/m;->l(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-nez v1, :cond_59

    sget-object v1, Lcom/android/common/config/Constants$Packages;->VERTICAL_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, v3}, Lk7/m;->l(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-nez v1, :cond_59

    sget-object v1, Lcom/android/common/config/Constants$Packages;->OPLUSWEATHER_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, v3}, Lk7/m;->l(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-nez v1, :cond_59

    sget-object v1, Lcom/android/common/config/Constants$Packages;->OPLUS_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, v3}, Lk7/m;->l(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-nez v1, :cond_59

    sget-object v1, Lcom/android/common/config/Constants$Packages;->SINAGLE_WIGGET_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, v3}, Lk7/m;->l(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-nez v1, :cond_59

    sget-object v1, Lcom/android/common/config/Constants$Packages;->MULTI_WIGGET_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0, v3}, Lk7/m;->l(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p0

    if-eqz p0, :cond_5a

    :cond_59
    const/4 v0, 0x1

    :cond_5a
    :goto_5a
    return v0
.end method

.method public static final isShouldFilterWidgetScale(Landroid/content/ComponentName;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.szlanyou.quickcontrol.widget.QuickControlWidget"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isShouldFilterWidgetSize(Landroid/content/ComponentName;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    sget-object v0, Lcom/android/common/util/WidgetUtils;->scaleWhiteList:Ljava/util/List;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final shouldFilterSpeedDialWidget(Landroid/content/ComponentName;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isInBigSimpleMode()Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.android.contacts.speeddialwidget.SpeedDialWidgetProvider"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "com.android.contacts.speeddialwidget.SpeedDialWidget"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "com.android.contacts.speeddialwidget.SpeedDialWidgetProviderTitle"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "com.android.contacts.speeddialwidget.SpeedDialWidgetTitle"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    :cond_32
    return v0

    :cond_33
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final isWidgetInitialized(Landroid/content/Context;Ljava/util/ArrayList;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "unInitializedWidgets"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p3}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object p0

    const-string p1, "WidgetUtil"

    const-string p3, "Widget"

    const/4 v0, 0x0

    if-eqz p0, :cond_8d

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_22

    goto :goto_8d

    :cond_22
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_37
    if-ge v3, v2, :cond_8b

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "unInitializedWidgets[i]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_73

    const-string v5, "isWidgetInitialized: host pcName = "

    const-string v6, ",launcherAppWidgetInfo.getComponentClass = "

    const-string v7, ",db pcName  = "

    invoke-static {v5, v1, v6, p0, v7}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",db providerClassName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, p1, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_73
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_88

    return v0

    :cond_88
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_8b
    const/4 p0, 0x1

    return p0

    :cond_8d
    :goto_8d
    const-string p0, "isWidgetInitialized: get launcherAppWidgetInfo from host is empty or it does not have component"

    invoke-static {p3, p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final isWorkProfileItem(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2

    invoke-static {p1}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/common/util/WidgetUtils;->WORK_MATCHER:Ljava/util/function/Predicate;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public final updateCqsbWidgetInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)V
    .registers 7

    const-string p0, "Widget"

    const-string v0, "WidgetUtil"

    if-eqz p1, :cond_68

    if-nez p2, :cond_9

    goto :goto_68

    :cond_9
    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v1, :cond_67

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.googlequicksearchbox"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    :try_start_25
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v2, 0x80

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_53

    const-string v1, "com.google.android.gsa.searchwidget.alt_initial_layout_cqsb"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eq p1, v2, :cond_53

    iput p1, p2, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    :cond_53
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_55
    .catchall {:try_start_25 .. :try_end_55} :catchall_56

    goto :goto_5b

    :catchall_56
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_5b
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_67

    const-string/jumbo p1, "updateCqsbWidgetInfo. e = "

    invoke-static {p1, p0, v0}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_67
    return-void

    :cond_68
    :goto_68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCqsbWidgetOptions. providerInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " , context = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
