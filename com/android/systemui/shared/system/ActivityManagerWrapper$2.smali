.class Lcom/android/systemui/shared/system/ActivityManagerWrapper$2;
.super Landroid/view/IRecentsAnimationRunner$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;JLcom/android/systemui/shared/system/RecentsAnimationListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field public final synthetic val$animationHandler:Lcom/android/systemui/shared/system/RecentsAnimationListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;Lcom/android/systemui/shared/system/RecentsAnimationListener;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$2;->this$0:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iput-object p2, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$2;->val$animationHandler:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    invoke-direct {p0}, Landroid/view/IRecentsAnimationRunner$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCanceled([I[Landroid/window/TaskSnapshot;)V
    .registers 5

    const-string v0, "ActivityManagerWrapper"

    const-string/jumbo v1, "startRecentsActivity()--onAnimationCanceled()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$2;->val$animationHandler:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    invoke-static {p1, p2}, Lcom/android/systemui/shared/recents/model/ThumbnailData;->wrap([I[Landroid/window/TaskSnapshot;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationListener;->onAnimationCanceled(Ljava/util/HashMap;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 14

    const-string v0, "ActivityManagerWrapper"

    const-string/jumbo v1, "startRecentsActivity()--onAnimationStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-direct {v3, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;-><init>(Landroid/view/IRecentsAnimationController;)V

    iget-object v2, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$2;->val$animationHandler:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/shared/system/RecentsAnimationListener;->onAnimationStart(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V
    .registers 4

    const-string v0, "ActivityManagerWrapper"

    const-string/jumbo v1, "startRecentsActivity()--onTaskAppeared()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$2;->val$animationHandler:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationListener;->onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method
