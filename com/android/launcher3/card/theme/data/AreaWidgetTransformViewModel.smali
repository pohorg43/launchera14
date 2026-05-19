.class public final Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;,
        Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAreaWidgetTransformViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AreaWidgetTransformViewModel.kt\ncom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,247:1\n1747#2,3:248\n*S KotlinDebug\n*F\n+ 1 AreaWidgetTransformViewModel.kt\ncom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel\n*L\n211#1:248,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;

.field private static final NO_REQUEST:Ljava/lang/String; = "NO_REQUEST"

.field private static final SETTING_KEY:Ljava/lang/String; = "widgetcard.switch.whitelist"

.field private static final TAG:Ljava/lang/String; = "AreaWidgetTransformViewModel"

.field private static final emptyWhiteList:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

.field private static final launcherBindingState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static pendingStoreWidgetId:I

.field private static final targetWidgetInfosOfWhiteList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static themeCardWhiteList:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;


# instance fields
.field private final _themeCardWhiteListFlow:Lp7/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp7/d<",
            "Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;",
            ">;"
        }
    .end annotation
.end field

.field private final _transformRequestFlow:Lp7/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp7/m<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private launcherRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->Companion:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;

    new-instance v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->emptyWhiteList:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    sput-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->themeCardWhiteList:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->targetWidgetInfosOfWhiteList:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, -0x1

    sput v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->pendingStoreWidgetId:I

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->launcherBindingState:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 11

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->launcherRef:Ljava/lang/ref/WeakReference;

    new-instance v2, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;

    const/4 p1, 0x0

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;-><init>(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Ll4/d;)V

    new-instance v0, Lp7/b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lp7/b;-><init>(Lkotlin/jvm/functions/Function2;Ll4/f;ILo7/a;I)V

    sget-object v4, Lm7/y0;->d:Lm7/f0;

    sget-object v1, Lm7/s1$b;->a:Lm7/s1$b;

    invoke-interface {v4, v1}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object v1

    if-nez v1, :cond_2c

    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    if-eqz v1, :cond_99

    sget-object v1, Ll4/h;->a:Ll4/h;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_41

    :cond_38
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v0

    invoke-static/range {v3 .. v8}, Lq7/q$a;->a(Lq7/q;Ll4/f;ILo7/a;ILjava/lang/Object;)Lp7/d;

    move-result-object v0

    :goto_41
    iput-object v0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->_themeCardWhiteListFlow:Lp7/d;

    const-string v0, "NO_REQUEST"

    invoke-static {v0}, Lp7/t;->a(Ljava/lang/Object;)Lp7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->_transformRequestFlow:Lp7/m;

    iget-object v0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->launcherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_98

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_98

    sget-object v2, Lm7/y0;->b:Lm7/f0;

    new-instance v4, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$1;

    invoke-direct {v4, p0, p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$1;-><init>(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Ll4/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    const/4 v2, 0x0

    :try_start_6a
    new-instance v4, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1;

    invoke-direct {v4, p0, p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1;-><init>(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Ll4/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    const/4 v2, 0x0

    new-instance v4, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2;

    invoke-direct {v4, p0, p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2;-><init>(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Ll4/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    move-result-object p0
    :try_end_84
    .catchall {:try_start_6a .. :try_end_84} :catchall_85

    goto :goto_8a

    :catchall_85
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_8a
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_91

    goto :goto_98

    :cond_91
    const-string p1, "init exception, "

    const-string v0, "AreaWidgetTransformViewModel"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_98
    :goto_98
    return-void

    :cond_99
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Flow context cannot contain job in it. Had "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$checkIsFinishBinding(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Lcom/android/launcher/Launcher;Ll4/d;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->checkIsFinishBinding(Lcom/android/launcher/Launcher;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLauncherBindingState$cp()Landroidx/lifecycle/MutableLiveData;
    .registers 1

    sget-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->launcherBindingState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public static final synthetic access$getLauncherRef$p(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->launcherRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static final synthetic access$getPendingStoreWidgetId$cp()I
    .registers 1

    sget v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->pendingStoreWidgetId:I

    return v0
.end method

.method public static final synthetic access$getTargetWidgetInfosOfWhiteList$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    sget-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->targetWidgetInfosOfWhiteList:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic access$getThemeCardWhiteList$cp()Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;
    .registers 1

    sget-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->themeCardWhiteList:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    return-object v0
.end method

.method public static final synthetic access$get_themeCardWhiteListFlow$p(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;)Lp7/d;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->_themeCardWhiteListFlow:Lp7/d;

    return-object p0
.end method

.method public static final synthetic access$get_transformRequestFlow$p(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;)Lp7/m;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->_transformRequestFlow:Lp7/m;

    return-object p0
.end method

.method public static final synthetic access$setPendingStoreWidgetId$cp(I)V
    .registers 1

    sput p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->pendingStoreWidgetId:I

    return-void
.end method

.method public static final synthetic access$setThemeCardWhiteList$cp(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;)V
    .registers 1

    sput-object p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->themeCardWhiteList:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    return-void
.end method

.method private final checkIsFinishBinding(Lcom/android/launcher/Launcher;Ll4/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Lm7/y0;->b:Lm7/f0;

    new-instance v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2;-><init>(Lcom/android/launcher/Launcher;Ll4/d;)V

    invoke-static {p0, v0, p2}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final getLauncherBindingState()Landroidx/lifecycle/MutableLiveData;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->Companion:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;->getLauncherBindingState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    return-object v0
.end method

.method public static final getPendingStoreWidgetId()I
    .registers 1

    sget-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->Companion:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;->getPendingStoreWidgetId()I

    move-result v0

    return v0
.end method

.method public static synthetic isSupportTransform$default(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Landroid/content/Context;IILandroid/content/ComponentName;IILjava/lang/Object;)Z
    .registers 14

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_5

    const/4 p5, -0x1

    :cond_5
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->isSupportTransform(Landroid/content/Context;IILandroid/content/ComponentName;I)Z

    move-result p0

    return p0
.end method

.method public static final setPendingStoreWidgetId(I)V
    .registers 2

    sget-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->Companion:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;->setPendingStoreWidgetId(I)V

    return-void
.end method


# virtual methods
.method public final getWhiteList()Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;
    .registers 4

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "widgetcard.switch.whitelist"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_13
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    if-nez p0, :cond_25

    sget-object p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->emptyWhiteList:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    goto :goto_30

    :cond_25
    const-string v0, "Gson().fromJson(whitelis…s.java) ?: emptyWhiteList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_2b

    goto :goto_30

    :catchall_2b
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_30
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const-string v1, "AreaWidgetTransformViewModel"

    if-nez v0, :cond_39

    goto :goto_40

    :cond_39
    const-string p0, "getWhiteList failed "

    invoke-static {p0, v0, v1}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->emptyWhiteList:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    :goto_40
    check-cast p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWhiteList -- WhiteList = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final initTargetWidgetInfos(Landroid/content/Context;Ll4/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Lm7/y0;->b:Lm7/f0;

    new-instance v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$initTargetWidgetInfos$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$initTargetWidgetInfos$2;-><init>(Landroid/content/Context;Ll4/d;)V

    invoke-static {p0, v0, p2}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_11

    return-object p0

    :cond_11
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final isSupportTransform(Landroid/content/Context;IILandroid/content/ComponentName;)Z
    .registers 14
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cm"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v8}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->isSupportTransform$default(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Landroid/content/Context;IILandroid/content/ComponentName;IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isSupportTransform(Landroid/content/Context;IILandroid/content/ComponentName;I)Z
    .registers 15
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cm"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->targetWidgetInfosOfWhiteList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string/jumbo v0, "targetWidgetInfosOfWhiteList.values"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    goto :goto_3e

    :cond_1f
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    iget v3, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    if-ne p2, v3, :cond_39

    iget v0, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    if-ne p3, v0, :cond_39

    move v0, v1

    goto :goto_3a

    :cond_39
    move v0, v2

    :goto_3a
    if-eqz v0, :cond_23

    move p0, v1

    goto :goto_3f

    :cond_3e
    :goto_3e
    move p0, v2

    :goto_3f
    sget-object v3, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->themeCardWhiteList:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->isSupportTransform(Landroid/content/Context;IILandroid/content/ComponentName;I)Z

    move-result p1

    const-string p5, "isSupportTransform spanX:"

    const-string v0, ", spanY:"

    const-string v3, " ComponentName:"

    invoke-static {p5, p2, v0, p3, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " isSupportInWhiteList:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " hasSizeMatchedTarget:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "AreaWidgetTransformViewModel"

    invoke-static {p2, p0, p3}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz p0, :cond_6e

    if-eqz p1, :cond_6e

    goto :goto_6f

    :cond_6e
    move v1, v2

    :goto_6f
    return v1
.end method

.method public final onLauncherFinishBinding(Lcom/android/launcher/Launcher;)V
    .registers 9

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$onLauncherFinishBinding$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$onLauncherFinishBinding$1;-><init>(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Ll4/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method public final requestTransform(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->_transformRequestFlow:Lp7/m;

    invoke-interface {p0, p1}, Lp7/m;->setValue(Ljava/lang/Object;)V

    return-void
.end method
