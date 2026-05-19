.class public final Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$FileManagerStateObserver;,
        Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$FileManagerVisibilityChangeListener;,
        Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$Companion;

.field private static final TAG:Ljava/lang/String; = "FileManagerStateListenHelper"

.field private static fileBagVisibilityObserver:Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$FileManagerStateObserver;

.field private static final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$FileManagerVisibilityChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final sInstance$delegate:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mState$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;->Companion:Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$Companion;

    sget-object v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$Companion$sInstance$2;->INSTANCE:Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$Companion$sInstance$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;->sInstance$delegate:Lh4/f;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;->listeners:Ljava/util/List;

    new-instance v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$FileManagerStateObserver;

    const-string v1, "fileBagVisibilityChanged"

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$FileManagerStateObserver;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;->fileBagVisibilityObserver:Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$FileManagerStateObserver;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$mState$2;->INSTANCE:Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$mState$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;->mState$delegate:Lh4/f;

    return-void
.end method

.method public static final synthetic access$getListeners$cp()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getSInstance$delegate$cp()Lh4/f;
    .registers 1

    sget-object v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;->sInstance$delegate:Lh4/f;

    return-object v0
.end method

.method public static final getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;->Companion:Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$Companion;->getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;

    move-result-object v0

    return-object v0
.end method

.method private final getMState()Lcom/android/launcher3/taskbar/filemanager/FileManagerState;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;->mState$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;

    return-object p0
.end method


# virtual methods
.method public final registerListener(Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$FileManagerVisibilityChangeListener;)V
    .registers 3

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public final registerObserver()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;->getMState()Lcom/android/launcher3/taskbar/filemanager/FileManagerState;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;->fileBagVisibilityObserver:Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$FileManagerStateObserver;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->registerFileBagVisibilityChange(Lcom/android/launcher3/taskbar/filemanager/FileManagerState$OnFileManagerStateListener;)V

    return-void
.end method

.method public final unRegisterListener(Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$FileManagerVisibilityChangeListener;)V
    .registers 3

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public final unRegisterOberver()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;->getMState()Lcom/android/launcher3/taskbar/filemanager/FileManagerState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->unregisterFileBagVisibilityChange()V

    return-void
.end method
