.class public final synthetic Lcom/android/wm/shell/splitscreen/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/pm/ShortcutInfo;

.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic d:I

.field public final synthetic e:Landroid/os/Bundle;

.field public final synthetic f:I

.field public final synthetic g:F

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lcom/android/internal/logging/InstanceId;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .registers 10

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/w;->b:Landroid/content/pm/ShortcutInfo;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/w;->c:Landroid/os/Bundle;

    iput p3, p0, Lcom/android/wm/shell/splitscreen/w;->d:I

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/w;->e:Landroid/os/Bundle;

    iput p5, p0, Lcom/android/wm/shell/splitscreen/w;->f:I

    iput p6, p0, Lcom/android/wm/shell/splitscreen/w;->g:F

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/w;->h:Ljava/lang/Object;

    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/w;->i:Lcom/android/internal/logging/InstanceId;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .registers 10

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/w;->b:Landroid/content/pm/ShortcutInfo;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/w;->c:Landroid/os/Bundle;

    iput p3, p0, Lcom/android/wm/shell/splitscreen/w;->d:I

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/w;->e:Landroid/os/Bundle;

    iput p5, p0, Lcom/android/wm/shell/splitscreen/w;->f:I

    iput p6, p0, Lcom/android/wm/shell/splitscreen/w;->g:F

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/w;->h:Ljava/lang/Object;

    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/w;->i:Lcom/android/internal/logging/InstanceId;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 22

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/wm/shell/splitscreen/w;->a:I

    packed-switch v1, :pswitch_data_44

    goto :goto_23

    :pswitch_8  #0x0
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/w;->b:Landroid/content/pm/ShortcutInfo;

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/w;->c:Landroid/os/Bundle;

    iget v4, v0, Lcom/android/wm/shell/splitscreen/w;->d:I

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/w;->e:Landroid/os/Bundle;

    iget v6, v0, Lcom/android/wm/shell/splitscreen/w;->f:I

    iget v7, v0, Lcom/android/wm/shell/splitscreen/w;->g:F

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/w;->h:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Landroid/view/RemoteAnimationAdapter;

    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/w;->i:Lcom/android/internal/logging/InstanceId;

    move-object/from16 v10, p1

    check-cast v10, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static/range {v2 .. v10}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->p(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void

    :goto_23
    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/w;->b:Landroid/content/pm/ShortcutInfo;

    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/w;->c:Landroid/os/Bundle;

    iget v13, v0, Lcom/android/wm/shell/splitscreen/w;->d:I

    iget-object v14, v0, Lcom/android/wm/shell/splitscreen/w;->e:Landroid/os/Bundle;

    iget v15, v0, Lcom/android/wm/shell/splitscreen/w;->f:I

    iget v1, v0, Lcom/android/wm/shell/splitscreen/w;->g:F

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/w;->h:Ljava/lang/Object;

    move-object/from16 v17, v2

    check-cast v17, Landroid/window/RemoteTransition;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/w;->i:Lcom/android/internal/logging/InstanceId;

    move-object/from16 v19, p1

    check-cast v19, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move/from16 v16, v1

    move-object/from16 v18, v0

    invoke-static/range {v11 .. v19}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->c(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_8  #00000000
    .end packed-switch
.end method
