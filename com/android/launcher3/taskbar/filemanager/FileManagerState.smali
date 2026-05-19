.class public final Lcom/android/launcher3/taskbar/filemanager/FileManagerState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/filemanager/FileManagerState$OnFileManagerStateListener;,
        Lcom/android/launcher3/taskbar/filemanager/FileManagerState$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/filemanager/FileManagerState$Companion;

.field public static final INVALID_VALUE:I = -0x1

.field public static final KEY_FILE_BAG_VISIBILITY_CHANGE:Ljava/lang/String; = "fileBagVisibilityChanged"

.field public static final STATE_CLOSE:I = 0x0

.field public static final STATE_OPEN:I = 0x1

.field public static final STATE_OPEN_PERMISSION_PAGE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "FileManagerState"

.field private static final URI_FILE_BAG_VISIBILITY_CHANGE:Landroid/net/Uri;

.field private static sInstance:Lcom/android/launcher3/taskbar/filemanager/FileManagerState;


# instance fields
.field private fileManagerStateListener:Lcom/android/launcher3/taskbar/filemanager/FileManagerState$OnFileManagerStateListener;

.field private fileManagerStateObserver:Lcom/android/launcher3/taskbar/filemanager/FileManagerState$fileManagerStateObserver$1;

.field private final mContext:Landroid/content/Context;

.field private mFileManagerState:Ljava/lang/Integer;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/filemanager/FileManagerState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->Companion:Lcom/android/launcher3/taskbar/filemanager/FileManagerState$Companion;

    const-string v0, "fileBagVisibilityChanged"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->URI_FILE_BAG_VISIBILITY_CHANGE:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/android/common/util/LauncherUtilsThread;->INSTANCE:Lcom/android/common/util/LauncherUtilsThread;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherUtilsThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->mFileManagerState:Ljava/lang/Integer;

    new-instance v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState$fileManagerStateObserver$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/taskbar/filemanager/FileManagerState$fileManagerStateObserver$1;-><init>(Lcom/android/launcher3/taskbar/filemanager/FileManagerState;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->fileManagerStateObserver:Lcom/android/launcher3/taskbar/filemanager/FileManagerState$fileManagerStateObserver$1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getFileManagerStateListener$p(Lcom/android/launcher3/taskbar/filemanager/FileManagerState;)Lcom/android/launcher3/taskbar/filemanager/FileManagerState$OnFileManagerStateListener;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->fileManagerStateListener:Lcom/android/launcher3/taskbar/filemanager/FileManagerState$OnFileManagerStateListener;

    return-object p0
.end method

.method public static final synthetic access$getMContext$p(Lcom/android/launcher3/taskbar/filemanager/FileManagerState;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMFileManagerState$p(Lcom/android/launcher3/taskbar/filemanager/FileManagerState;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->mFileManagerState:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic access$getSInstance$cp()Lcom/android/launcher3/taskbar/filemanager/FileManagerState;
    .registers 1

    sget-object v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->sInstance:Lcom/android/launcher3/taskbar/filemanager/FileManagerState;

    return-object v0
.end method

.method public static final synthetic access$setMFileManagerState$p(Lcom/android/launcher3/taskbar/filemanager/FileManagerState;Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->mFileManagerState:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic access$setSInstance$cp(Lcom/android/launcher3/taskbar/filemanager/FileManagerState;)V
    .registers 1

    sput-object p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->sInstance:Lcom/android/launcher3/taskbar/filemanager/FileManagerState;

    return-void
.end method

.method public static final get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/filemanager/FileManagerState;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->Companion:Lcom/android/launcher3/taskbar/filemanager/FileManagerState$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerState$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/filemanager/FileManagerState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final registerFileBagVisibilityChange(Lcom/android/launcher3/taskbar/filemanager/FileManagerState$OnFileManagerStateListener;)V
    .registers 7

    const-string/jumbo v0, "onChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->URI_FILE_BAG_VISIBILITY_CHANGE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->fileManagerStateObserver:Lcom/android/launcher3/taskbar/filemanager/FileManagerState$fileManagerStateObserver$1;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "FileManagerState"

    const-string/jumbo v1, "registerFileBagVisibilityChange"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->fileManagerStateListener:Lcom/android/launcher3/taskbar/filemanager/FileManagerState$OnFileManagerStateListener;

    return-void
.end method

.method public final unregisterFileBagVisibilityChange()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->fileManagerStateObserver:Lcom/android/launcher3/taskbar/filemanager/FileManagerState$fileManagerStateObserver$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->fileManagerStateListener:Lcom/android/launcher3/taskbar/filemanager/FileManagerState$OnFileManagerStateListener;

    return-void
.end method
