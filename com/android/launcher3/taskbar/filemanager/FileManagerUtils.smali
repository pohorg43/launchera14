.class public Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final KEY_META_DATA:Ljava/lang/String; = "sidebar_filebag_support"

.field private static final METHOD_REQUEST_DISMISS_FILE_PANEL:Ljava/lang/String; = "dismissFilePanel"

.field private static final METHOD_REQUEST_SHOW_FILE_PANEL:Ljava/lang/String; = "showFilePanel"

.field private static final METHOD_REQUEST_TOGGLE_FILE_PANEL:Ljava/lang/String; = "toggleFilePanel"

.field private static final PACKGE_NAME:Ljava/lang/String; = "com.coloros.smartsidebar"

.field private static final PROCESS_NAME:Ljava/lang/String; = "com.coloros.smartsidebar:ui"

.field private static final SIDEBAR_FILEBAG_PROVIDER_URI:Ljava/lang/String; = "content://com.oplus.sidebar.filebag"

.field private static final TAG:Ljava/lang/String; = "FileManagerUtils"

.field private static volatile sInstance:Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;


# instance fields
.field private mFileManagerPermissionPageOpened:Z

.field private mFileManagerVisible:Z

.field private volatile mIsFileWindowLoading:Z

.field private final mResetLoadingStateRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/model/c1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/c1;-><init>(Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->mResetLoadingStateRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->mFileManagerVisible:Z

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->mFileManagerPermissionPageOpened:Z

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->mIsFileWindowLoading:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->lambda$new$0()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;Lcom/android/launcher3/views/ActivityContext;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->lambda$openFileManager$1(Lcom/android/launcher3/views/ActivityContext;II)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->lambda$closeFileManagerWithCheckIfNeed$2(Z)V

    return-void
.end method

.method public static getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;
    .registers 2

    sget-object v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->sInstance:Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->sInstance:Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    invoke-direct {v1}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;-><init>()V

    sput-object v1, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->sInstance:Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->sInstance:Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    return-object v0
.end method

.method private synthetic lambda$closeFileManagerWithCheckIfNeed$2(Z)V
    .registers 5

    const-string v0, "FileManagerUtils"

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    :try_start_5
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->isFileManagerActivityAlive()Z

    move-result p1

    if-nez p1, :cond_11

    const-string p0, "filemanager provider died"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "content://com.oplus.sidebar.filebag"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_23} :catch_46
    .catchall {:try_start_5 .. :try_end_23} :catchall_44

    if-eqz p1, :cond_31

    :try_start_25
    const-string v2, "dismissFilePanel"

    invoke-virtual {p1, v2, v1, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_31

    :catchall_2b
    move-exception p0

    move-object v1, p1

    goto :goto_52

    :catch_2e
    move-exception p0

    move-object v1, p1

    goto :goto_47

    :cond_31
    :goto_31
    const-string/jumbo v1, "now close FileManager window!!"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->mFileManagerVisible:Z

    if-eqz v1, :cond_3e

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->setLoadingState()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3e} :catch_2e
    .catchall {:try_start_25 .. :try_end_3e} :catchall_2b

    :cond_3e
    if-eqz p1, :cond_51

    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_51

    :catchall_44
    move-exception p0

    goto :goto_52

    :catch_46
    move-exception p0

    :goto_47
    :try_start_47
    const-string p1, "dismissFilePanel exception:"

    invoke-static {v0, p1, p0}, Lcom/oplus/atlas/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_44

    if-eqz v1, :cond_51

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    :cond_51
    :goto_51
    return-void

    :goto_52
    if-eqz v1, :cond_57

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    :cond_57
    throw p0
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->mIsFileWindowLoading:Z

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->isFileManagerVisible()Z

    move-result p0

    if-nez p0, :cond_c

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->updateFileBtnCheckedOrUncheckedState(Z)V

    :cond_c
    return-void
.end method

.method private synthetic lambda$openFileManager$1(Lcom/android/launcher3/views/ActivityContext;II)V
    .registers 9

    const-string v0, "FileManagerUtils"

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    instance-of v2, p1, Lcom/android/launcher3/Launcher;

    if-eqz v2, :cond_f

    const-string/jumbo v1, "showFilePanel"

    goto :goto_16

    :cond_f
    instance-of p1, p1, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p1, :cond_16

    const-string/jumbo v1, "toggleFilePanel"

    :cond_16
    :goto_16
    const/4 p1, 0x0

    :try_start_17
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "launchPackage"

    const-string v4, "com.android.launcher"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "launchX"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "launchY"

    invoke-virtual {v2, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "content://com.oplus.sidebar.filebag"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p2
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3f} :catch_5c
    .catchall {:try_start_17 .. :try_end_3f} :catchall_5a

    if-eqz p2, :cond_4b

    :try_start_41
    invoke-virtual {p2, v1, p1, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_4b

    :catchall_45
    move-exception p0

    move-object p1, p2

    goto :goto_69

    :catch_48
    move-exception p0

    move-object p1, p2

    goto :goto_5d

    :cond_4b
    :goto_4b
    const-string/jumbo p1, "now open FileManager window!!"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->setLoadingState()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_54} :catch_48
    .catchall {:try_start_41 .. :try_end_54} :catchall_45

    if-eqz p2, :cond_68

    invoke-virtual {p2}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_68

    :catchall_5a
    move-exception p0

    goto :goto_69

    :catch_5c
    move-exception p0

    :goto_5d
    :try_start_5d
    const-string/jumbo p2, "showFileBagPanel exception:"

    invoke-static {v0, p2, p0}, Lcom/oplus/atlas/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_63
    .catchall {:try_start_5d .. :try_end_63} :catchall_5a

    if-eqz p1, :cond_68

    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    :cond_68
    :goto_68
    return-void

    :goto_69
    if-eqz p1, :cond_6e

    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    :cond_6e
    throw p0
.end method

.method private setLoadingState()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->mIsFileWindowLoading:Z

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->mResetLoadingStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->mResetLoadingStateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public closeFileManager()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->closeFileManagerWithCheckIfNeed(Z)V

    return-void
.end method

.method public closeFileManagerWithCheckIfNeed(Z)V
    .registers 4

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->isFileManagerVisible()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/common/util/q;

    invoke-direct {v1, p0, p1}, Lcom/android/common/util/q;-><init>(Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_16
    return-void
.end method

.method public isFileManagerActivityAlive()Z
    .registers 3

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v1, "com.coloros.smartsidebar:ui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method public isFileManagerApplicationEnable()Z
    .registers 4

    const/4 p0, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.coloros.smartsidebar"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_11} :catch_22

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "sidebar_filebag_support"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_21

    const/4 p0, 0x1

    :cond_21
    return p0

    :catch_22
    const-string v0, "FileManagerUtils"

    const-string v1, "NameNotFoundException$e"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public isFileManagerPermissionPageOpened()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->mFileManagerPermissionPageOpened:Z

    return p0
.end method

.method public isFileManagerVisible()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->mFileManagerVisible:Z

    return p0
.end method

.method public isFileWindowLoading()Z
    .registers 4

    const-string v0, "FileWindow is loading!"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->mIsFileWindowLoading:Z

    const-string v2, "FileManagerUtils"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->mIsFileWindowLoading:Z

    return p0
.end method

.method public openFileManager(Lcom/android/launcher3/views/ActivityContext;II)V
    .registers 6

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/common/util/e;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/common/util/e;-><init>(Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;Lcom/android/launcher3/views/ActivityContext;II)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFileManagerPermissionPageOpened(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->mFileManagerPermissionPageOpened:Z

    return-void
.end method

.method public setFileManagerVisible(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->mFileManagerVisible:Z

    return-void
.end method

.method public setFileWindowLoadingFlag(Z)V
    .registers 4

    const-string v0, "FileWindow loading state update: "

    const-string v1, "FileManagerUtils"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->mIsFileWindowLoading:Z

    return-void
.end method
