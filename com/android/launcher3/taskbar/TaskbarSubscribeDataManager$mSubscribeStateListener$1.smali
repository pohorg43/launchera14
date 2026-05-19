.class public final Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$mSubscribeStateListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$mSubscribeStateListener$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$mSubscribeStateListener$1;->onSubscribeItemStateChange$lambda$2(Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$mSubscribeStateListener$1;->onSubscribeItemStateChange$lambda$0(Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;Z)V

    return-void
.end method

.method private static final onSubscribeItemStateChange$lambda$0(Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;Z)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xcc

    invoke-static {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->access$updateSubscribeData(Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;IZ)V

    return-void
.end method

.method private static final onSubscribeItemStateChange$lambda$1(Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;Z)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xcd

    invoke-static {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->access$updateSubscribeData(Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;IZ)V

    return-void
.end method

.method private static final onSubscribeItemStateChange$lambda$2(Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;Z)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xce

    invoke-static {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->access$updateSubscribeData(Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;IZ)V

    return-void
.end method


# virtual methods
.method public onSubscribeItemStateChange(Ljava/lang/String;Z)V
    .registers 5

    const-string/jumbo v0, "settingsKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x41d05c81

    if-eq v0, v1, :cond_35

    const v1, 0x3c5ffb9d

    if-eq v0, v1, :cond_20

    const p0, 0x4981ff25

    if-eq v0, p0, :cond_1a

    goto :goto_49

    :cond_1a
    const-string p0, "enable_launcher_tools_globalsearch_entry"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_49

    :cond_20
    const-string v0, "enable_launcher_tools_filemanager_entry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_49

    :cond_29
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$mSubscribeStateListener$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;

    new-instance p1, Lcom/android/launcher3/taskbar/f1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lcom/android/launcher3/taskbar/f1;-><init>(Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;ZI)V

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->access$runOnMain(Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;Ljava/lang/Runnable;)V

    goto :goto_49

    :cond_35
    const-string v0, "enable_launcher_tools_allapps_entry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    goto :goto_49

    :cond_3e
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$mSubscribeStateListener$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;

    new-instance p1, Lcom/android/launcher3/taskbar/f1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/android/launcher3/taskbar/f1;-><init>(Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;ZI)V

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->access$runOnMain(Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;Ljava/lang/Runnable;)V

    :goto_49
    return-void
.end method
