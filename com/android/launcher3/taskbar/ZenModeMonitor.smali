.class public final Lcom/android/launcher3/taskbar/ZenModeMonitor;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/ZenModeMonitor$Observer;,
        Lcom/android/launcher3/taskbar/ZenModeMonitor$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/ZenModeMonitor$Companion;

.field private static final SETTING_KEY:Ljava/lang/String; = "op_breath_mode_status"


# instance fields
.field private final mContentObserver:Lcom/android/launcher3/taskbar/ZenModeMonitor$Observer;

.field private final mContext:Landroid/content/Context;

.field private mInZenMode:Ljava/lang/Boolean;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mZenModeUri:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/ZenModeMonitor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/ZenModeMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/ZenModeMonitor;->Companion:Lcom/android/launcher3/taskbar/ZenModeMonitor$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "op_breath_mode_status"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor;->mZenModeUri:Landroid/net/Uri;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor;->mListeners:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/launcher3/taskbar/ZenModeMonitor$Observer;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/taskbar/ZenModeMonitor$Observer;-><init>(Lcom/android/launcher3/taskbar/ZenModeMonitor;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor;->mContentObserver:Lcom/android/launcher3/taskbar/ZenModeMonitor$Observer;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/ZenModeMonitor;->dispatchModeChange$lambda$0(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public static final synthetic access$dispatchModeChange(Lcom/android/launcher3/taskbar/ZenModeMonitor;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/ZenModeMonitor;->dispatchModeChange(Z)V

    return-void
.end method

.method public static final synthetic access$getMInZenMode$p(Lcom/android/launcher3/taskbar/ZenModeMonitor;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor;->mInZenMode:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static final synthetic access$isZenModeInner(Lcom/android/launcher3/taskbar/ZenModeMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/ZenModeMonitor;->isZenModeInner()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setMInZenMode$p(Lcom/android/launcher3/taskbar/ZenModeMonitor;Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor;->mInZenMode:Ljava/lang/Boolean;

    return-void
.end method

.method private final dispatchModeChange(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/taskbar/k1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lcom/android/launcher3/taskbar/k1;-><init>(Ljava/util/function/Consumer;ZI)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_15

    :cond_2d
    return-void
.end method

.method private static final dispatchModeChange$lambda$0(Ljava/util/function/Consumer;Z)V
    .registers 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private final isZenModeInner()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "op_breath_mode_status"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    move v1, v0

    :cond_12
    return v1
.end method


# virtual methods
.method public final getMContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final isZenMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor;->mInZenMode:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/ZenModeMonitor;->isZenModeInner()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor;->mInZenMode:Ljava/lang/Boolean;

    :cond_e
    iget-object p0, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor;->mInZenMode:Ljava/lang/Boolean;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final register(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor;->mListeners:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor;->mZenModeUri:Landroid/net/Uri;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor;->mContentObserver:Lcom/android/launcher3/taskbar/ZenModeMonitor$Observer;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_22
    return-void
.end method

.method public final unregister(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor;->mContentObserver:Lcom/android/launcher3/taskbar/ZenModeMonitor$Observer;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1d
    return-void
.end method
