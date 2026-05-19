.class public Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/sysui/ConfigurationChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "HideDisplayCutoutController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field public mEnabled:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mOrganizer:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;

.field private final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field private final mShellController:Lcom/android/wm/shell/sysui/ShellController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iput-object p4, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    iput-object p5, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mOrganizer:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;

    new-instance p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;

    invoke-direct {p1, p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;-><init>(Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;)V

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->onInit()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;
    .registers 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string/jumbo v0, "ro.support_hide_display_cutout"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    new-instance v5, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;

    invoke-direct {v5, p0, p4, p5}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;)V

    new-instance p4, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;)V

    return-object p4
.end method

.method private onInit()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    new-instance v1, Lcom/android/wm/shell/bubbles/h;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/h;-><init>(Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;)V

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->updateStatus()V

    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addConfigurationChangeListener(Lcom/android/wm/shell/sysui/ConfigurationChangeListener;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3
    .param p1  # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p2, "HideDisplayCutoutController"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " states: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mEnabled="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mEnabled:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mOrganizer:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->updateStatus()V

    return-void
.end method

.method public updateStatus()V
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/internal/R$bool;->config_hideDisplayCutoutWithDisplayArea:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mEnabled:Z

    if-ne v0, v1, :cond_11

    return-void

    :cond_11
    iput-boolean v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mEnabled:Z

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mOrganizer:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->enableHideDisplayCutout()V

    goto :goto_20

    :cond_1b
    iget-object p0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mOrganizer:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->disableHideDisplayCutout()V

    :goto_20
    return-void
.end method
