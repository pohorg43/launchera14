.class public final synthetic Lcom/android/wm/shell/splitscreen/a2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$12;

.field public final synthetic b:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;

.field public final synthetic c:Z

.field public final synthetic d:Landroid/app/PendingIntent;

.field public final synthetic e:Landroid/content/Intent;

.field public final synthetic f:I

.field public final synthetic g:Landroid/os/Bundle;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$12;Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;ZLandroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;I)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/a2;->a:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$12;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/a2;->b:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;

    iput-boolean p3, p0, Lcom/android/wm/shell/splitscreen/a2;->c:Z

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/a2;->d:Landroid/app/PendingIntent;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/a2;->e:Landroid/content/Intent;

    iput p6, p0, Lcom/android/wm/shell/splitscreen/a2;->f:I

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/a2;->g:Landroid/os/Bundle;

    iput p8, p0, Lcom/android/wm/shell/splitscreen/a2;->h:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/a2;->a:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$12;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/a2;->b:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/a2;->c:Z

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/a2;->d:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/a2;->e:Landroid/content/Intent;

    iget v5, p0, Lcom/android/wm/shell/splitscreen/a2;->f:I

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/a2;->g:Landroid/os/Bundle;

    iget v7, p0, Lcom/android/wm/shell/splitscreen/a2;->h:I

    invoke-static/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$12;->a(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$12;Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;ZLandroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;I)V

    return-void
.end method
