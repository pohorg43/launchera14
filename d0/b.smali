.class public final synthetic Ld0/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/Launcher;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Ld0/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld0/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Ld0/b;->c:Ljava/lang/Object;

    iput p3, p0, Ld0/b;->d:I

    iput-object p4, p0, Ld0/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;Lcom/android/launcher3/model/data/WorkspaceItemInfo;I[I)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Ld0/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld0/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Ld0/b;->c:Ljava/lang/Object;

    iput p3, p0, Ld0/b;->d:I

    iput-object p4, p0, Ld0/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/FolderInfo;Ljava/util/List;ILjava/util/List;)V
    .registers 6

    const/4 v0, 0x2

    iput v0, p0, Ld0/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld0/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Ld0/b;->c:Ljava/lang/Object;

    iput p3, p0, Ld0/b;->d:I

    iput-object p4, p0, Ld0/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/views/BaseDragLayer;I)V
    .registers 6

    const/4 v0, 0x3

    iput v0, p0, Ld0/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld0/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Ld0/b;->c:Ljava/lang/Object;

    iput-object p3, p0, Ld0/b;->e:Ljava/lang/Object;

    iput p4, p0, Ld0/b;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/OplusTaskIconCacheImpl;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    const/4 v0, 0x4

    iput v0, p0, Ld0/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld0/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Ld0/b;->c:Ljava/lang/Object;

    iput p3, p0, Ld0/b;->d:I

    iput-object p4, p0, Ld0/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/RecentTasksList;Lcom/android/quickstep/RecentTasksList$TaskLoadResult;Ljava/util/function/Consumer;I)V
    .registers 6

    const/4 v0, 0x5

    iput v0, p0, Ld0/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld0/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Ld0/b;->c:Ljava/lang/Object;

    iput-object p3, p0, Ld0/b;->e:Ljava/lang/Object;

    iput p4, p0, Ld0/b;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationController;ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .registers 6

    const/4 v0, 0x6

    iput v0, p0, Ld0/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld0/b;->b:Ljava/lang/Object;

    iput p2, p0, Ld0/b;->d:I

    iput-object p3, p0, Ld0/b;->c:Ljava/lang/Object;

    iput-object p4, p0, Ld0/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/displayareahelper/DisplayAreaHelperController;ILandroid/view/SurfaceControl$Builder;Ljava/util/function/Consumer;)V
    .registers 6

    const/4 v0, 0x7

    iput v0, p0, Ld0/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld0/b;->b:Ljava/lang/Object;

    iput p2, p0, Ld0/b;->d:I

    iput-object p3, p0, Ld0/b;->c:Ljava/lang/Object;

    iput-object p4, p0, Ld0/b;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Ld0/b;->a:I

    packed-switch v0, :pswitch_data_98

    goto/16 :goto_85

    :pswitch_7  #0x6
    iget-object v0, p0, Ld0/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/RecentsAnimationController;

    iget v1, p0, Ld0/b;->d:I

    iget-object v2, p0, Ld0/b;->c:Ljava/lang/Object;

    check-cast v2, Landroid/window/PictureInPictureSurfaceTransaction;

    iget-object p0, p0, Ld0/b;->e:Ljava/lang/Object;

    check-cast p0, Landroid/view/SurfaceControl;

    invoke-static {v0, v1, v2, p0}, Lcom/android/quickstep/RecentsAnimationController;->g(Lcom/android/quickstep/RecentsAnimationController;ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    return-void

    :pswitch_19  #0x5
    iget-object v0, p0, Ld0/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/RecentTasksList;

    iget-object v1, p0, Ld0/b;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iget-object v2, p0, Ld0/b;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/function/Consumer;

    iget p0, p0, Ld0/b;->d:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/quickstep/RecentTasksList;->d(Lcom/android/quickstep/RecentTasksList;Lcom/android/quickstep/RecentTasksList$TaskLoadResult;Ljava/util/function/Consumer;I)V

    return-void

    :pswitch_2b  #0x4
    iget-object v0, p0, Ld0/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/OplusTaskIconCacheImpl;

    iget-object v1, p0, Ld0/b;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Ld0/b;->d:I

    iget-object p0, p0, Ld0/b;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/android/quickstep/OplusTaskIconCacheImpl;->d(Lcom/android/quickstep/OplusTaskIconCacheImpl;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :pswitch_3d  #0x3
    iget-object v0, p0, Ld0/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object v1, p0, Ld0/b;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/statemanager/BaseState;

    iget-object v2, p0, Ld0/b;->e:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/views/BaseDragLayer;

    iget p0, p0, Ld0/b;->d:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->h(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/views/BaseDragLayer;I)V

    return-void

    :pswitch_4f  #0x2
    iget-object v0, p0, Ld0/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, p0, Ld0/b;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget v2, p0, Ld0/b;->d:I

    iget-object p0, p0, Ld0/b;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/model/data/FolderInfo;->i(Lcom/android/launcher3/model/data/FolderInfo;Ljava/util/List;ILjava/util/List;)V

    return-void

    :pswitch_61  #0x1
    iget-object v0, p0, Ld0/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

    iget-object v1, p0, Ld0/b;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v2, p0, Ld0/b;->d:I

    iget-object p0, p0, Ld0/b;->e:Ljava/lang/Object;

    check-cast p0, [I

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->h(Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;Lcom/android/launcher3/model/data/WorkspaceItemInfo;I[I)V

    return-void

    :pswitch_73  #0x0
    iget-object v0, p0, Ld0/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/Launcher;

    iget-object v1, p0, Ld0/b;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    iget v2, p0, Ld0/b;->d:I

    iget-object p0, p0, Ld0/b;->e:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->a(Lcom/android/launcher/Launcher;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :goto_85
    iget-object v0, p0, Ld0/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/displayareahelper/DisplayAreaHelperController;

    iget v1, p0, Ld0/b;->d:I

    iget-object v2, p0, Ld0/b;->c:Ljava/lang/Object;

    check-cast v2, Landroid/view/SurfaceControl$Builder;

    iget-object p0, p0, Ld0/b;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/displayareahelper/DisplayAreaHelperController;->a(Lcom/android/wm/shell/displayareahelper/DisplayAreaHelperController;ILandroid/view/SurfaceControl$Builder;Ljava/util/function/Consumer;)V

    return-void

    nop

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_73  #00000000
        :pswitch_61  #00000001
        :pswitch_4f  #00000002
        :pswitch_3d  #00000003
        :pswitch_2b  #00000004
        :pswitch_19  #00000005
        :pswitch_7  #00000006
    .end packed-switch
.end method
