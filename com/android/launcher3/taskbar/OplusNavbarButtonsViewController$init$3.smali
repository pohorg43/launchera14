.class public final Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$3;
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

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$3;->this$0:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$3;->this$0:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->controlImageResource(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onChange  isRegionDark:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegionSamplingUtils"

    const-string v0, "NavbarButtonsViewController"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
