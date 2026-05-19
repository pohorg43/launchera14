.class public final Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$SystemAnimDurationObserver;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SystemAnimDurationObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;Landroid/os/Handler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$SystemAnimDurationObserver;->this$0:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    sget-object p1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->Companion:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;

    iget-object p0, p0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$SystemAnimDurationObserver;->this$0:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;

    invoke-static {p0}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->access$getMLauncher$p(Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "animator_duration_scale"

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    sput p0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    const-string p0, "System animation duration changed, sDurationScale = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget p1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    const-string v0, "AppLaunchAnimSpeedHandler"

    invoke-static {p0, p1, v0}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    return-void
.end method
