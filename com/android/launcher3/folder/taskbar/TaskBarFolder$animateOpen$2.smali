.class public final Lcom/android/launcher3/folder/taskbar/TaskBarFolder$animateOpen$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->animateOpen(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $updateAnimationFlag:Z

.field public final synthetic this$0:Lcom/android/launcher3/folder/taskbar/TaskBarFolder;


# direct methods
.method public constructor <init>(ZLcom/android/launcher3/folder/taskbar/TaskBarFolder;)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder$animateOpen$2;->$updateAnimationFlag:Z

    iput-object p2, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder$animateOpen$2;->this$0:Lcom/android/launcher3/folder/taskbar/TaskBarFolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-boolean p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder$animateOpen$2;->$updateAnimationFlag:Z

    if-eqz p1, :cond_15

    iget-object p0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder$animateOpen$2;->this$0:Lcom/android/launcher3/folder/taskbar/TaskBarFolder;

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->access$getMLauncherDelegate$p$s-855938500(Lcom/android/launcher3/folder/taskbar/TaskBarFolder;)Lcom/android/launcher3/folder/LauncherDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/launcher3/model/data/FolderInfo;->setOption(IZLcom/android/launcher3/model/ModelWriter;)V

    :cond_15
    return-void
.end method
