.class public Lcom/android/launcher/MyUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "MyUncaughtExceptionHandler"


# instance fields
.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppwidgetId:I

.field private mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mLauncherAppWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetHost;Lcom/android/launcher/Launcher;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher/MyUncaughtExceptionHandler;->mAppwidgetId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/MyUncaughtExceptionHandler;->mLauncherAppWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/MyUncaughtExceptionHandler;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p1, p0, Lcom/android/launcher/MyUncaughtExceptionHandler;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iput-object p2, p0, Lcom/android/launcher/MyUncaughtExceptionHandler;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher/MyUncaughtExceptionHandler;->mAppwidgetId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/MyUncaughtExceptionHandler;->mLauncherAppWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    return-void
.end method

.method public setAppWidget(ILcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 3

    iput p1, p0, Lcom/android/launcher/MyUncaughtExceptionHandler;->mAppwidgetId:I

    iput-object p2, p0, Lcom/android/launcher/MyUncaughtExceptionHandler;->mLauncherAppWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "thread = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mAppwidgetId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/MyUncaughtExceptionHandler;->mAppwidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLauncherAppWidgetInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/MyUncaughtExceptionHandler;->mLauncherAppWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyUncaughtExceptionHandler"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher/MyUncaughtExceptionHandler;->mAppwidgetId:I

    if-ltz v0, :cond_92

    iget-object v1, p0, Lcom/android/launcher/MyUncaughtExceptionHandler;->mLauncherAppWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v1, :cond_92

    iget-object v1, p0, Lcom/android/launcher/MyUncaughtExceptionHandler;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v1, :cond_62

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    :cond_62
    iget-object v0, p0, Lcom/android/launcher/MyUncaughtExceptionHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/MyUncaughtExceptionHandler;->mLauncherAppWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    const-string v2, "Removing uncaughtException item: id="

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher/MyUncaughtExceptionHandler;->mAppwidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher/MyUncaughtExceptionHandler;->mLauncherAppWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    :cond_92
    iget-object p0, p0, Lcom/android/launcher/MyUncaughtExceptionHandler;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p0, :cond_9a

    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_a1

    :cond_9a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    :goto_a1
    return-void
.end method
