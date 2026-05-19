.class public final synthetic Lcom/android/wm/shell/splitscreen/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/PendingIntent;

.field public final synthetic c:I

.field public final synthetic d:Landroid/content/pm/ShortcutInfo;

.field public final synthetic e:Landroid/os/Bundle;

.field public final synthetic f:Landroid/app/PendingIntent;

.field public final synthetic g:I

.field public final synthetic h:Landroid/content/pm/ShortcutInfo;

.field public final synthetic i:Landroid/os/Bundle;

.field public final synthetic j:I

.field public final synthetic k:F

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lcom/android/internal/logging/InstanceId;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .registers 14

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/u;->b:Landroid/app/PendingIntent;

    iput p2, p0, Lcom/android/wm/shell/splitscreen/u;->c:I

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/u;->d:Landroid/content/pm/ShortcutInfo;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/u;->e:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/u;->f:Landroid/app/PendingIntent;

    iput p6, p0, Lcom/android/wm/shell/splitscreen/u;->g:I

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/u;->h:Landroid/content/pm/ShortcutInfo;

    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/u;->i:Landroid/os/Bundle;

    iput p9, p0, Lcom/android/wm/shell/splitscreen/u;->j:I

    iput p10, p0, Lcom/android/wm/shell/splitscreen/u;->k:F

    iput-object p11, p0, Lcom/android/wm/shell/splitscreen/u;->l:Ljava/lang/Object;

    iput-object p12, p0, Lcom/android/wm/shell/splitscreen/u;->m:Lcom/android/internal/logging/InstanceId;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .registers 14

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/u;->b:Landroid/app/PendingIntent;

    iput p2, p0, Lcom/android/wm/shell/splitscreen/u;->c:I

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/u;->d:Landroid/content/pm/ShortcutInfo;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/u;->e:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/u;->f:Landroid/app/PendingIntent;

    iput p6, p0, Lcom/android/wm/shell/splitscreen/u;->g:I

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/u;->h:Landroid/content/pm/ShortcutInfo;

    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/u;->i:Landroid/os/Bundle;

    iput p9, p0, Lcom/android/wm/shell/splitscreen/u;->j:I

    iput p10, p0, Lcom/android/wm/shell/splitscreen/u;->k:F

    iput-object p11, p0, Lcom/android/wm/shell/splitscreen/u;->l:Ljava/lang/Object;

    iput-object p12, p0, Lcom/android/wm/shell/splitscreen/u;->m:Lcom/android/internal/logging/InstanceId;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 30

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/wm/shell/splitscreen/u;->a:I

    packed-switch v1, :pswitch_data_64

    goto :goto_2b

    :pswitch_8  #0x0
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/u;->b:Landroid/app/PendingIntent;

    iget v3, v0, Lcom/android/wm/shell/splitscreen/u;->c:I

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/u;->d:Landroid/content/pm/ShortcutInfo;

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/u;->e:Landroid/os/Bundle;

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/u;->f:Landroid/app/PendingIntent;

    iget v7, v0, Lcom/android/wm/shell/splitscreen/u;->g:I

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/u;->h:Landroid/content/pm/ShortcutInfo;

    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/u;->i:Landroid/os/Bundle;

    iget v10, v0, Lcom/android/wm/shell/splitscreen/u;->j:I

    iget v11, v0, Lcom/android/wm/shell/splitscreen/u;->k:F

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/u;->l:Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, Landroid/window/RemoteTransition;

    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/u;->m:Lcom/android/internal/logging/InstanceId;

    move-object/from16 v14, p1

    check-cast v14, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static/range {v2 .. v14}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->t(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void

    :goto_2b
    iget-object v15, v0, Lcom/android/wm/shell/splitscreen/u;->b:Landroid/app/PendingIntent;

    iget v1, v0, Lcom/android/wm/shell/splitscreen/u;->c:I

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/u;->d:Landroid/content/pm/ShortcutInfo;

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/u;->e:Landroid/os/Bundle;

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/u;->f:Landroid/app/PendingIntent;

    iget v5, v0, Lcom/android/wm/shell/splitscreen/u;->g:I

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/u;->h:Landroid/content/pm/ShortcutInfo;

    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/u;->i:Landroid/os/Bundle;

    iget v8, v0, Lcom/android/wm/shell/splitscreen/u;->j:I

    iget v9, v0, Lcom/android/wm/shell/splitscreen/u;->k:F

    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/u;->l:Ljava/lang/Object;

    move-object/from16 v25, v10

    check-cast v25, Landroid/view/RemoteAnimationAdapter;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/u;->m:Lcom/android/internal/logging/InstanceId;

    move-object/from16 v27, p1

    check-cast v27, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move-object/from16 v26, v0

    invoke-static/range {v15 .. v27}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->h(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void

    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_8  #00000000
    .end packed-switch
.end method
