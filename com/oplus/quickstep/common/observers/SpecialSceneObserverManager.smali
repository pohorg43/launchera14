.class public final Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager$INSTANCE;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSpecialSceneObserverManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpecialSceneObserverManager.kt\ncom/oplus/quickstep/common/observers/SpecialSceneObserverManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,62:1\n1855#2,2:63\n1855#2,2:65\n1855#2,2:67\n1855#2,2:69\n*S KotlinDebug\n*F\n+ 1 SpecialSceneObserverManager.kt\ncom/oplus/quickstep/common/observers/SpecialSceneObserverManager\n*L\n34#1:63,2\n38#1:65,2\n52#1:67,2\n57#1:69,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager$INSTANCE;

.field private static final TAG:Ljava/lang/String; = "SpecialSceneObserverManager"


# instance fields
.field private final mConfineModeObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/common/observers/StudyModeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRegistered:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager$INSTANCE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager$INSTANCE;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->INSTANCE:Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager$INSTANCE;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;

    new-instance v1, Lcom/oplus/quickstep/common/observers/ChildrenModeObserver;

    invoke-direct {v1}, Lcom/oplus/quickstep/common/observers/ChildrenModeObserver;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/oplus/quickstep/common/observers/SuperPowerSaveModeObserver;

    invoke-direct {v1}, Lcom/oplus/quickstep/common/observers/SuperPowerSaveModeObserver;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/oplus/quickstep/common/observers/FocusModeObserver;

    invoke-direct {v1}, Lcom/oplus/quickstep/common/observers/FocusModeObserver;-><init>()V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/oplus/quickstep/common/observers/WellBeingAssistantModeObserver;

    invoke-direct {v1}, Lcom/oplus/quickstep/common/observers/WellBeingAssistantModeObserver;-><init>()V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    invoke-static {v0}, Li4/o;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->mObservers:Ljava/util/ArrayList;

    new-array v0, v3, [Lcom/oplus/quickstep/common/observers/StudyModeObserver;

    new-instance v1, Lcom/oplus/quickstep/common/observers/StudyModeObserver;

    invoke-direct {v1}, Lcom/oplus/quickstep/common/observers/StudyModeObserver;-><init>()V

    aput-object v1, v0, v2

    invoke-static {v0}, Li4/o;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->mConfineModeObservers:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final registerObserver(Landroid/content/Context;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerObserver: mRegistered = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->mRegistered:Z

    const-string v2, "SpecialSceneObserverManager"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->mRegistered:Z

    if-eqz v0, :cond_1b

    return-void

    :cond_1b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->mRegistered:Z

    iget-object v0, p0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->mObservers:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;Z)V

    goto :goto_24

    :cond_35
    iget-object p0, p0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->mConfineModeObservers:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/common/observers/StudyModeObserver;

    invoke-static {}, Lcom/oplus/confinemode/OplusConfineModeManager;->getInstance()Lcom/oplus/confinemode/OplusConfineModeManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/oplus/confinemode/OplusConfineModeManager;->registerConfineModeObserver(Landroid/content/Context;Lcom/oplus/confinemode/OplusConfineModeManager$ConfineModeObserver;)Z

    goto :goto_3b

    :cond_4f
    return-void
.end method

.method public final unregisterObserver(Landroid/content/Context;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterObserver: mRegistered = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->mRegistered:Z

    const-string v2, "SpecialSceneObserverManager"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->mRegistered:Z

    if-nez v0, :cond_1b

    return-void

    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->mRegistered:Z

    iget-object v0, p0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->mObservers:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;

    invoke-virtual {v1, p1}, Lcom/oplus/quickstep/common/AbstractObserver;->unregister(Landroid/content/Context;)V

    goto :goto_24

    :cond_34
    iget-object p0, p0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->mConfineModeObservers:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/common/observers/StudyModeObserver;

    invoke-static {}, Lcom/oplus/confinemode/OplusConfineModeManager;->getInstance()Lcom/oplus/confinemode/OplusConfineModeManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/oplus/confinemode/OplusConfineModeManager;->unregisterConfineModeObserver(Landroid/content/Context;Lcom/oplus/confinemode/OplusConfineModeManager$ConfineModeObserver;)Z

    goto :goto_3a

    :cond_4e
    return-void
.end method
