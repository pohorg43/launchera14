.class public final synthetic Lcom/android/launcher3/j0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/j0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/j0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/j0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/j0;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/j0;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/j0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/j0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/j0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/j0;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/j0;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 6

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/j0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/j0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/j0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/j0;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/j0;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/j0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/j0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/j0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/j0;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/j0;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Lcom/android/launcher3/j0;->a:I

    packed-switch v0, :pswitch_data_5e

    goto :goto_48

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/launcher3/j0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v1, p0, Lcom/android/launcher3/j0;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/launcher3/j0;->d:Ljava/lang/Object;

    check-cast v2, Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/launcher3/j0;->e:Ljava/lang/Object;

    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    check-cast p1, Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->n(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    return-void

    :pswitch_1c  #0x1
    iget-object v0, p0, Lcom/android/launcher3/j0;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iget-object v1, p0, Lcom/android/launcher3/j0;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/j0;->d:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/LauncherAppState;

    iget-object p0, p0, Lcom/android/launcher3/j0;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/launcher3/model/ShortcutsChangedTask;->o(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void

    :pswitch_32  #0x0
    iget-object v0, p0, Lcom/android/launcher3/j0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/j0;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/j0;->d:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/launcher3/j0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/launcher3/Launcher;->v(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Boolean;)V

    return-void

    :goto_48
    iget-object v0, p0, Lcom/android/launcher3/j0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object v1, p0, Lcom/android/launcher3/j0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/quickstep/views/RecentsView;

    iget-object v2, p0, Lcom/android/launcher3/j0;->d:Ljava/lang/Object;

    check-cast v2, Lcom/android/quickstep/views/TaskView;

    iget-object p0, p0, Lcom/android/launcher3/j0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->a(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/OplusTaskViewImpl;Ljava/lang/Boolean;)V

    return-void

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_32  #00000000
        :pswitch_1c  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
