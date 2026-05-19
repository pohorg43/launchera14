.class Lcom/android/launcher3/Launcher$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/Launcher$5;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenOnChanged(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Launcher$5;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onScreenOnChangedLauncher(Z)V

    return-void
.end method

.method public onUserPresent()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Launcher$5;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->backgroundResetWallpaper(Z)V

    return-void
.end method
