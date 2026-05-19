.class public final synthetic Lcom/android/exceptionmonitor/util/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Z

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/Launcher;Landroid/app/SearchManager;Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 8

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exceptionmonitor/util/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/exceptionmonitor/util/f;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/exceptionmonitor/util/f;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/exceptionmonitor/util/f;->d:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/android/exceptionmonitor/util/f;->f:Z

    iput-object p5, p0, Lcom/android/exceptionmonitor/util/f;->e:Ljava/lang/Object;

    iput-boolean p6, p0, Lcom/android/exceptionmonitor/util/f;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/Boolean;ZZ)V
    .registers 8

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exceptionmonitor/util/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/exceptionmonitor/util/f;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/exceptionmonitor/util/f;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/exceptionmonitor/util/f;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/exceptionmonitor/util/f;->e:Ljava/lang/Object;

    iput-boolean p5, p0, Lcom/android/exceptionmonitor/util/f;->f:Z

    iput-boolean p6, p0, Lcom/android/exceptionmonitor/util/f;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/views/FloatingIconView;ZLandroid/view/View;ZLcom/android/launcher3/dragndrop/DragLayer;Lcom/android/launcher3/Launcher;)V
    .registers 8

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exceptionmonitor/util/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/exceptionmonitor/util/f;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/exceptionmonitor/util/f;->f:Z

    iput-object p3, p0, Lcom/android/exceptionmonitor/util/f;->c:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/android/exceptionmonitor/util/f;->g:Z

    iput-object p5, p0, Lcom/android/exceptionmonitor/util/f;->d:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/exceptionmonitor/util/f;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget v0, p0, Lcom/android/exceptionmonitor/util/f;->a:I

    packed-switch v0, :pswitch_data_5a

    goto :goto_3e

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/exceptionmonitor/util/f;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher/Launcher;

    iget-object v0, p0, Lcom/android/exceptionmonitor/util/f;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/app/SearchManager;

    iget-object v0, p0, Lcom/android/exceptionmonitor/util/f;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/exceptionmonitor/util/f;->f:Z

    iget-object v0, p0, Lcom/android/exceptionmonitor/util/f;->e:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/android/exceptionmonitor/util/f;->g:Z

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->e(Lcom/android/launcher/Launcher;Landroid/app/SearchManager;Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void

    :pswitch_22  #0x0
    iget-object v0, p0, Lcom/android/exceptionmonitor/util/f;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher/Launcher;

    iget-object v0, p0, Lcom/android/exceptionmonitor/util/f;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/exceptionmonitor/util/f;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/UserHandle;

    iget-object v0, p0, Lcom/android/exceptionmonitor/util/f;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/Boolean;

    iget-boolean v5, p0, Lcom/android/exceptionmonitor/util/f;->f:Z

    iget-boolean v6, p0, Lcom/android/exceptionmonitor/util/f;->g:Z

    invoke-static/range {v1 .. v6}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->d(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/Boolean;ZZ)V

    return-void

    :goto_3e
    iget-object v0, p0, Lcom/android/exceptionmonitor/util/f;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/views/FloatingIconView;

    iget-boolean v2, p0, Lcom/android/exceptionmonitor/util/f;->f:Z

    iget-object v0, p0, Lcom/android/exceptionmonitor/util/f;->c:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/exceptionmonitor/util/f;->g:Z

    iget-object v0, p0, Lcom/android/exceptionmonitor/util/f;->d:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object p0, p0, Lcom/android/exceptionmonitor/util/f;->e:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Lcom/android/launcher3/Launcher;

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/views/FloatingIconView;->b(Lcom/android/launcher3/views/FloatingIconView;ZLandroid/view/View;ZLcom/android/launcher3/dragndrop/DragLayer;Lcom/android/launcher3/Launcher;)V

    return-void

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_22  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
