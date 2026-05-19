.class public final Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/common/IObserverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$2;->this$0:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$2;->this$0:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->access$getMIsNavButtonsAtLeft$p(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)Z

    move-result v0

    if-eq v0, p1, :cond_32

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$2;->this$0:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    invoke-static {v0, p1}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->access$setMIsNavButtonsAtLeft$p(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--->mIsNavButtonsAtLeft:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$2;->this$0:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->access$getMIsNavButtonsAtLeft$p(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TaskbarManager"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$2;->this$0:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->access$getMIsNavButtonsAtLeft$p(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->onNavbarDirectionChange(Z)V

    :cond_32
    return-void
.end method
