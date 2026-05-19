.class public final Lcom/android/launcher3/widget/WidgetFilter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/WidgetFilter$Companion;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.oplus.assistantscreen.configuration.widget.AppWidgetConfigProvider"

.field public static final Companion:Lcom/android/launcher3/widget/WidgetFilter$Companion;

.field private static final EXTRA_CARD_STORE_WIDGETS:Ljava/lang/String; = "key_card_store_widgets"

.field private static final METHOD_GET_CARD_STORE_WIDGETS:Ljava/lang/String; = "get_card_store_widgets"

.field private static final TAG:Ljava/lang/String; = "WidgetFilter"

.field private static final WIDGET_CONFIG_CHANGE_URI:Landroid/net/Uri;

.field private static final WIDGET_CONFIG_PATH:Ljava/lang/String; = "WidgetConfigChange"

.field private static final alignWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final multiFingerPressList:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final naturalWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final shakeWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCardStoreObserver:Landroid/database/ContentObserver;

.field private final mCardStoreWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/widget/WidgetFilter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/WidgetFilter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/widget/WidgetFilter;->Companion:Lcom/android/launcher3/widget/WidgetFilter$Companion;

    const-string v0, "content://com.oplus.assistantscreen.configuration.widget.AppWidgetConfigProvider/WidgetConfigChange"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "parse(\"content://$AUTHORITY/$WIDGET_CONFIG_PATH\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/widget/WidgetFilter;->WIDGET_CONFIG_CHANGE_URI:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/widget/WidgetFilter;->alignWhiteList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/widget/WidgetFilter;->shakeWhiteList:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/android/launcher3/widget/WidgetFilter;->multiFingerPressList:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/widget/WidgetFilter;->naturalWhiteList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetFilter;->mCardStoreWidgets:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/launcher3/widget/WidgetFilter$mCardStoreObserver$1;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/widget/WidgetFilter$mCardStoreObserver$1;-><init>(Lcom/android/launcher3/widget/WidgetFilter;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/launcher3/widget/WidgetFilter;->mCardStoreObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetFilter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCardGlobalDrag()Z

    move-result v0

    if-eqz v0, :cond_52

    new-instance v0, Lcom/android/launcher3/pullup/controller/a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/pullup/controller/a;-><init>(Lcom/android/launcher3/widget/WidgetFilter;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :try_start_2f
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/widget/WidgetFilter;->WIDGET_CONFIG_CHANGE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetFilter;->mCardStoreObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_3f
    .catchall {:try_start_2f .. :try_end_3f} :catchall_40

    goto :goto_45

    :catchall_40
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_45
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_52

    const-string v0, "Not found the provider, "

    const-string v1, "WidgetFilter"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_52
    sget-object p0, Lcom/android/launcher3/widget/WidgetFilter;->alignWhiteList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.resources.getStr…ite_widget_provider_name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Li4/t;->r(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/launcher3/widget/WidgetFilter;->shakeWhiteList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.resources.getStr…ake_widget_provider_name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Li4/t;->r(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/launcher3/widget/WidgetFilter;->naturalWhiteList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03003f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.resources.getStr…ral_widget_provider_name)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Li4/t;->r(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/android/launcher3/widget/WidgetFilter;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetFilter;->fetchCardStoreWidgets()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/widget/WidgetFilter;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/widget/WidgetFilter;->_init_$lambda$0(Lcom/android/launcher3/widget/WidgetFilter;)V

    return-void
.end method

.method public static final synthetic access$fetchCardStoreWidgets(Lcom/android/launcher3/widget/WidgetFilter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetFilter;->fetchCardStoreWidgets()V

    return-void
.end method

.method public static final synthetic access$getAlignWhiteList$cp()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/launcher3/widget/WidgetFilter;->alignWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getMultiFingerPressList$cp()Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    sget-object v0, Lcom/android/launcher3/widget/WidgetFilter;->multiFingerPressList:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method public static final synthetic access$getNaturalWhiteList$cp()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/launcher3/widget/WidgetFilter;->naturalWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getShakeWhiteList$cp()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/launcher3/widget/WidgetFilter;->shakeWhiteList:Ljava/util/List;

    return-object v0
.end method

.method private final fetchCardStoreWidgets()V
    .registers 5

    const-string v0, "Widget"

    const-string v1, "WidgetFilter"

    const-string v2, "fetchCardStoreWidgets"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_a
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.oplus.assistantscreen.configuration.widget.AppWidgetConfigProvider"

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_3a

    if-eqz v2, :cond_22

    :try_start_18
    const-string v3, "get_card_store_widgets"

    invoke-virtual {v2, v3, v0, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_23

    :catchall_1f
    move-exception p0

    move-object v0, v2

    goto :goto_3b

    :cond_22
    move-object v3, v0

    :goto_23
    if-eqz v3, :cond_2b

    const-string v0, "key_card_store_widgets"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_2b
    if-eqz v0, :cond_37

    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetFilter;->mCardStoreWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetFilter;->mCardStoreWidgets:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_37
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_1f

    goto :goto_40

    :catchall_3a
    move-exception p0

    :goto_3b
    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, v0

    :goto_40
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_4b

    const-string p0, "Error occur while fetchCardStoreWidgets"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method


# virtual methods
.method public final getMCardStoreWidgets()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetFilter;->mCardStoreWidgets:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final shouldShowWidget(Landroid/appwidget/AppWidgetProviderInfo;Ljava/util/List;Lcom/android/launcher/filter/DeepProtectedAppsManager;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher/filter/DeepProtectedAppsManager;",
            ")Z"
        }
    .end annotation

    const-string/jumbo v0, "permanentHidePackages"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deepProtectedAppsManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "WidgetFilter"

    const/4 v1, 0x0

    if-nez p1, :cond_17

    const-string/jumbo p0, "providerInfo is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_17
    iget-object v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v3, 0x1

    if-eqz v2, :cond_92

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v2

    const-string v4, "Widget"

    if-eqz v2, :cond_49

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetFilter;->mCardStoreWidgets:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_49

    const-string p0, "Filter the widget "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " as it has exist in card store"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    iget-object p0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_92

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6e

    sget-object p1, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {p1}, Lcom/android/common/util/PackageUtils$Companion;->getInstance()Lcom/android/common/util/PackageUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/common/util/PackageUtils;->isNeedHideIcon(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6e

    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6e

    move v1, v3

    :cond_6e
    invoke-virtual {p3, p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;)Z

    move-result p1

    and-int/2addr v1, p1

    if-eqz v1, :cond_92

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "shouldShowWidget:packageName:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " needHide:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_92
    xor-int/lit8 p0, v1, 0x1

    return p0
.end method
